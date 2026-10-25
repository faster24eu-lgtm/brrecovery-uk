#!/usr/bin/perl
# Site builder for brrecovery.co.uk (Fenline Recovery)
#
#   perl _build/build.pl
#
# Every page is generated from the content files next to this script:
#   services.pl  service pages
#   places.pl    town pages (/car-recovery/<town>/), county pages and roads (/roads/<road>/)
#   pages.pl     home, hubs, guides, about, contact, legal, 404, thank-you, old-URL redirects
# Each page is written as <path>/index.html, so URLs end in a slash.
# Also writes sitemap.xml and robots.txt, and reports broken internal links.
#
# Change the phone number, WhatsApp or form recipient here only.
use strict;
use warnings;
use utf8;
use File::Path qw(make_path);
use File::Basename qw(dirname);
use FindBin qw($Bin);

our $BASE       = 'https://brrecovery.co.uk';
our $NAME       = 'Fenline Recovery';
our $PHONE_HREF = 'tel:+442080580013';
our $PHONE      = '020 8058 0013';
our $WA_HREF    = 'https://wa.me/447988974609?text=Hi%2C%20I%20need%20vehicle%20recovery.%20My%20location%20is%3A%20';
our $FORM_TO    = 'faster24eu@gmail.com';    # formsubmit.co recipient
our $PRICE      = 'from &pound;125';
our $YEAR       = (localtime)[5] + 1900;

my $ROOT = dirname($Bin);
our @PAGES;

for my $f (qw(services.pl places.pl pages.pl)) {
  my $r = do "$Bin/$f";
  die "$f: $@" if $@;
  die "$f: $!" unless defined $r;
}

my %BY_PATH = map { $_->{path} => $_ } @PAGES;

# ------------------------------------------------------------------ helpers
sub esc { my $s = shift // ''; $s =~ s/&(?![a-z]+;|#\d+;)/&amp;/g; $s =~ s/"/&quot;/g; $s =~ s/</&lt;/g; $s }
sub plain { my $s = shift // ''; $s =~ s/<[^>]+>//g; $s =~ s/&pound;/£/g; $s =~ s/&rsquo;|&#39;/'/g; $s =~ s/&ndash;/–/g; $s =~ s/&mdash;/—/g; $s =~ s/&nbsp;/ /g; $s =~ s/&amp;/&/g; $s }
sub json { my $s = plain(shift); $s =~ s/\\/\\\\/g; $s =~ s/"/\\"/g; $s =~ s/\n/ /g; qq("$s") }
sub url { my $p = shift; $p eq '' ? "$BASE/" : "$BASE/$p/" }
sub href { my $p = shift; $p eq '' ? '/' : "/$p/" }

sub fill {
  my $s = shift // '';
  $s =~ s/\{\{PHONE\}\}/$PHONE/g;
  $s =~ s/\{\{PHONE_HREF\}\}/$PHONE_HREF/g;
  $s =~ s/\{\{WA_HREF\}\}/$WA_HREF/g;
  $s =~ s/\{\{PRICE\}\}/$PRICE/g;
  $s =~ s/\{\{LIST:(\w+)\}\}/link_list($1)/ge;
  $s;
}

sub link_list {
  my $kind = shift;
  my @p = grep { ($_->{kind} // '') eq $kind } @PAGES;
  my $h = qq(<ul class="cards">\n);
  for (@p) {
    $h .= sprintf qq(  <li><a href="%s"><strong>%s</strong><span>%s</span></a></li>\n), href($_->{path}), $_->{label}, $_->{card} // '';
  }
  $h . "</ul>";
}

sub quote_form {
  return <<"HTML";
<form class="quote" action="https://formsubmit.co/$FORM_TO" method="POST">
  <input type="hidden" name="_subject" value="brrecovery.co.uk: new recovery request">
  <input type="hidden" name="_next" value="$BASE/thank-you/">
  <input type="hidden" name="_template" value="table">
  <input type="text" name="_honey" class="hp" tabindex="-1" autocomplete="off">
  <label>Your name<input type="text" name="name" required autocomplete="name"></label>
  <label>Phone number<input type="tel" name="phone" required autocomplete="tel"></label>
  <label>Collect from <small>Road, postcode or what3words</small><input type="text" name="pickup" required></label>
  <label>Deliver to<input type="text" name="dropoff" placeholder="Home, garage, address or postcode"></label>
  <label>Vehicle and problem<textarea name="details" rows="3" placeholder="e.g. 2017 Ford Focus, won't start, wheels roll, keys with car"></textarea></label>
  <button type="submit" class="btn btn-red"><span>Send &ndash; we call you back</span></button>
  <p class="fine">In a live lane or hurt? Call 999 first. Then call us: <a href="$PHONE_HREF">$PHONE</a>.</p>
</form>
HTML
}

# Twin racing stripes, used in the logo, kickers and page heroes.
our $STRIPES = '<svg class="stripes" viewBox="0 0 40 20" aria-hidden="true"><path d="M10 0h10L10 20H0zM26 0h10L26 20H16z"/></svg>';

# ---------------------------------------------------------------- layout
my @NAV = (
  [ 'Services', 'services' ],
  [ 'Areas',    'car-recovery' ],
  [ 'Roads',    'roads' ],
  [ 'Guides',   'guides' ],
  [ 'Contact',  'contact-us' ],
);

sub breadcrumbs {
  my $p = shift;
  return ('', '') if !$p->{crumbs};
  my @c = ([ 'Home', '' ], @{ $p->{crumbs} }, [ $p->{label}, $p->{path} ]);
  my $html = qq(<nav class="crumbs" aria-label="Breadcrumb"><ol>);
  $html .= join '', map { $_ == $#c ? "<li>$c[$_][0]</li>" : sprintf('<li><a href="%s">%s</a></li>', href($c[$_][1]), $c[$_][0]) } 0 .. $#c;
  $html .= "</ol></nav>";
  my $ld = join ",\n", map { sprintf '      { "@type": "ListItem", "position": %d, "name": %s, "item": "%s" }', $_ + 1, json($c[$_][0]), url($c[$_][1]) } 0 .. $#c;
  return ($html, qq(<script type="application/ld+json">\n{\n  "\@context": "https://schema.org",\n  "\@type": "BreadcrumbList",\n  "itemListElement": [\n$ld\n  ]\n}\n</script>\n));
}

sub faq_html {
  my $p = shift;
  return ('', '') unless $p->{faq} && @{ $p->{faq} };
  my $html = qq(<section class="faq"><p class="kicker">$STRIPES FAQ</p><h2>Straight answers</h2>\n);
  my @ld;
  for my $q (@{ $p->{faq} }) {
    $html .= "<details><summary>$q->[0]</summary><p>" . fill($q->[1]) . "</p></details>\n";
    push @ld, sprintf qq(    { "\@type": "Question", "name": %s, "acceptedAnswer": { "\@type": "Answer", "text": %s } }), json($q->[0]), json(fill($q->[1]));
  }
  $html .= "</section>";
  return ($html, qq(<script type="application/ld+json">\n{\n  "\@context": "https://schema.org",\n  "\@type": "FAQPage",\n  "mainEntity": [\n) . join(",\n", @ld) . qq(\n  ]\n}\n</script>\n));
}

sub service_ld {
  my $p = shift;
  return '' unless $p->{service};
  my $area = $p->{area} // 'Peterborough and Cambridgeshire';
  return sprintf <<'LD', json($p->{service}), json(fill($p->{description})), url($p->{path}), json($area), json($NAME), $BASE, $PHONE_HREF =~ s/^tel://r;
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Service",
  "serviceType": %s,
  "description": %s,
  "url": "%s",
  "areaServed": { "@type": "Place", "name": %s },
  "provider": { "@type": "Organization", "name": %s, "url": "%s/", "telephone": "%s" },
  "hoursAvailable": "Mo-Su 00:00-23:59"
}
</script>
LD
}

sub render {
  my $p = shift;
  my ($crumbs, $crumb_ld) = breadcrumbs($p);
  my ($faq, $faq_ld) = faq_html($p);
  my $canon = url($p->{path});
  my $robots = $p->{noindex} ? qq(<meta name="robots" content="noindex">\n) : '';
  my $nav = join '', map {
    my $cur = ($p->{nav} // '') eq $_->[1] ? ' aria-current="page"' : '';
    sprintf '<li><a href="%s"%s>%s</a></li>', href($_->[1]), $cur, $_->[0]
  } @NAV;
  my $lead = $p->{lead} ? '<p class="lead">' . fill($p->{lead}) . '</p>' : '';
  my $kicker = $p->{kicker} // '24/7 recovery &amp; transport';
  my $home = $p->{path} eq '';
  my $hero_cta = $p->{no_cta} ? '' : <<"HTML";
<div class="hero-cta">
  <a class="btn btn-red" href="$PHONE_HREF"><span>Call $PHONE</span></a>
  <a class="btn btn-line" href="$WA_HREF"><span>WhatsApp your location</span></a>
</div>
HTML
  my $specs = $p->{no_cta} ? '' : <<"HTML";
<ul class="specs">
  <li><b>24/7</b><span>Day, night, bank holidays</span></li>
  <li><b>&pound;</b><span>Fixed price up front</span></li>
  <li><b>A1&middot;A47</b><span>On the main roads</span></li>
</ul>
HTML
  my $art = $home
    ? qq(<img class="hero-photo" src="/assets/hero-truck-700.jpg" srcset="/assets/hero-truck-350.jpg 350w, /assets/hero-truck-700.jpg 700w" sizes="(min-width: 900px) 46vw, 100vw" width="700" height="1095" alt="Recovery truck with a car loaded on the bed, parked in a depot at night" fetchpriority="high">)
    : qq(<div class="hero-mark" aria-hidden="true"><span class="big" style="--n:) . length(plain($p->{big} // 'Recovery')) . '">' . ($p->{big} // 'Recovery') . '</span></div>';
  my $body = fill($p->{body} // '');
  my $aside = $p->{no_form} ? '' : <<"HTML";
<aside class="side" id="quote">
  <div class="side-box">
    <p class="kicker">$STRIPES Free quote</p>
    <h2>Get a fixed price</h2>
    <p>Send this and we call you back, usually within minutes. A phone call is still quickest.</p>
    @{[ quote_form() ]}
  </div>
</aside>
HTML
  my $extra_ld = $p->{schema} // '';
  my $svc_ld = service_ld($p);
  my $title = esc(plain(fill($p->{title})));
  my $desc = esc(plain(fill($p->{description})));
  my $h1 = fill($p->{h1});
  my $wrap = $p->{no_form} ? 'wrap one' : 'wrap';
  my $hero_class = $home ? 'hero hero-home' : 'hero';

  return <<"HTML";
<!DOCTYPE html>
<html lang="en-GB">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>$title</title>
<meta name="description" content="$desc">
$robots<link rel="canonical" href="$canon">
<meta property="og:locale" content="en_GB">
<meta property="og:type" content="website">
<meta property="og:site_name" content="$NAME">
<meta property="og:title" content="$title">
<meta property="og:description" content="$desc">
<meta property="og:url" content="$canon">
<meta property="og:image" content="$BASE/assets/flatbed-1600.jpg">
<meta name="theme-color" content="#000000">
<link rel="icon" type="image/svg+xml" href="/assets/favicon.svg">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Archivo:wdth,wght\@62..125,400..900&amp;display=swap">
<link rel="stylesheet" href="/assets/site.css">
$crumb_ld$faq_ld$svc_ld$extra_ld</head>
<body>
<a class="skip" href="#main">Skip to content</a>
<header class="top">
  <div class="top-in">
    <a class="brand" href="/" aria-label="$NAME home"><b>Fenline</b>$STRIPES<i>Recovery</i></a>
    <nav class="desk" aria-label="Main"><ul>$nav</ul></nav>
    <a class="top-call" href="$PHONE_HREF"><span>$PHONE</span></a>
    <details class="menu"><summary aria-label="Menu"><svg aria-hidden="true" viewBox="0 0 24 24" width="22" height="22"><path d="M3 7h18M3 12h18M3 17h18" stroke="currentColor" stroke-width="2.4"/></svg></summary><ul>$nav</ul></details>
  </div>
</header>
<main id="main">
<section class="$hero_class">
  <div class="hero-in">
    <div class="hero-copy">
      <p class="kicker">$STRIPES $kicker</p>
      <h1>$h1</h1>
      $lead
      $hero_cta
    </div>
    $art
  </div>
  $specs
</section>
$crumbs
<div class="$wrap">
  <article class="content">
$body
$faq
  </article>
$aside</div>
<section class="band">
  <div class="band-in">
    <p class="kicker">$STRIPES Broken down right now?</p>
    <h2>One call. One price. Truck on the way.</h2>
    <p>Tell us where the vehicle is, what it is and where it needs to go. You get a fixed price on the call before anyone sets off.</p>
    <a class="btn btn-red" href="$PHONE_HREF"><span>Call $PHONE</span></a>
  </div>
</section>
</main>
<footer class="foot">
  <div class="foot-in">
    <div>
      <p class="foot-brand">Fenline $STRIPES <i>Recovery</i></p>
      <p>Car and van recovery and vehicle transport from Peterborough across Cambridgeshire, South Lincolnshire, Northamptonshire and Rutland, 24 hours a day.</p>
      <p><a href="$PHONE_HREF">$PHONE</a> &middot; <a href="$WA_HREF">WhatsApp</a></p>
    </div>
    <div>
      <p class="foot-h">Services</p>
      <ul><li><a href="/breakdown-recovery/">Breakdown recovery</a></li><li><a href="/accident-recovery/">Accident recovery</a></li><li><a href="/car-transport/">Car transport</a></li><li><a href="/auction-collection/">Auction collection</a></li><li><a href="/non-runner-transport/">Non-runner transport</a></li></ul>
    </div>
    <div>
      <p class="foot-h">Areas</p>
      <ul><li><a href="/car-recovery/peterborough/">Peterborough</a></li><li><a href="/car-recovery/stamford/">Stamford</a></li><li><a href="/car-recovery/huntingdon/">Huntingdon</a></li><li><a href="/car-recovery/spalding/">Spalding</a></li><li><a href="/car-recovery/">All areas</a></li></ul>
    </div>
  </div>
  <p class="disclaimer">brrecovery.co.uk is an independent call-connection service: we take your call and send a vetted recovery operator from our network. We are not connected with BR Recovery Ltd, Batista Car-Van-Caravan Transportation, Car Recovery Peterborough, or any other business that used this web address before. <a href="/about-us/">How it works</a> &middot; <a href="/privacy/">Privacy</a> &middot; &copy; $YEAR</p>
</footer>
<a class="fab" href="$PHONE_HREF"><span>Call now &ndash; 24/7</span></a>
</body>
</html>
HTML
}

# Old WordPress URLs: GitHub Pages can't send a 301, so forward with a canonical + refresh.
sub redirect_page {
  my $to = shift;
  my $abs = $to eq '/' ? "$BASE/" : "$BASE$to";
  return <<"HTML";
<!DOCTYPE html>
<html lang="en-GB"><head><meta charset="UTF-8"><title>Moved</title>
<link rel="canonical" href="$abs"><meta name="robots" content="noindex">
<meta http-equiv="refresh" content="0; url=$to"></head>
<body><p>This page has moved: <a href="$to">$abs</a></p></body></html>
HTML
}

# ------------------------------------------------------------------ write
sub out_file { my $p = shift; $p->{file} // ($p->{path} eq '' ? 'index.html' : "$p->{path}/index.html") }

my %seen;
for my $p (@PAGES) {
  die "duplicate path $p->{path}" if $seen{ $p->{path} }++;
  my $out = "$ROOT/" . out_file($p);
  make_path(dirname($out));
  open my $fh, '>:encoding(UTF-8)', $out or die "$out: $!";
  print $fh $p->{redirect} ? redirect_page($p->{redirect}) : render($p);
  close $fh;
}

my $sm = qq(<?xml version="1.0" encoding="UTF-8"?>\n<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n);
$sm .= "  <url><loc>" . url($_->{path}) . "</loc></url>\n" for grep { !$_->{noindex} && !$_->{redirect} } @PAGES;
$sm .= "</urlset>\n";
open my $s, '>:encoding(UTF-8)', "$ROOT/sitemap.xml" or die $!; print $s $sm; close $s;
open my $r, '>', "$ROOT/robots.txt" or die $!; print $r "User-agent: *\nAllow: /\n\nSitemap: $BASE/sitemap.xml\n"; close $r;

my $bad = 0;
for my $p (@PAGES) {
  open my $fh, '<:encoding(UTF-8)', "$ROOT/" . out_file($p) or die $!;
  local $/; my $html = <$fh>; close $fh;
  for my $h ($html =~ /(?:href|url)="?(\/[^"#;]*)"/g) {
    next if $h =~ m{^/assets/};
    (my $k = $h) =~ s{^/|/$}{}g;
    unless (exists $BY_PATH{$k}) { print "broken link in /$p->{path}: $h\n"; $bad++ }
  }
}
my $n_red = grep { $_->{redirect} } @PAGES;
printf "%d pages written (%d redirects), %d broken links\n", scalar(@PAGES), $n_red, $bad;
