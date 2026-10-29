# Home, hubs, guides, about, contact, legal pages, and forwards for the old WordPress URLs.
use strict;
use warnings;
use utf8;

our %VILLAGE_TO;    # filled by places.pl

push @main::PAGES, {
  path => '', label => 'Home', nav => '',
  title => 'Car Recovery Peterborough 24/7 | Fixed Price Breakdown Recovery &amp; Transport',
  description => '24/7 car and van recovery in Peterborough, Cambridgeshire and South Lincolnshire. Breakdowns, accidents and transport at a fixed price, {{PRICE}}.',
  kicker => 'Peterborough &middot; A1(M) &middot; A47 &middot; 24/7',
  h1 => 'Car recovery in Peterborough. <span>No waiting game.</span>',
  lead => 'Broken down, crashed, or bought a car that needs collecting? One call gets you a fixed price and a flatbed on the way, anywhere around Peterborough, the Fens and South Lincolnshire.',
  schema => <<'LD',
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "name": "Fenline Recovery",
  "url": "https://brrecovery.co.uk/"
}
</script>
LD
  body => <<'HTML',
<p class="kicker kicker-dark">What we do</p>
<h2>Built for the roads around Peterborough</h2>
<p>The A1(M), the A47 and the parkways are fast roads with few safe places to stop. Out in the Fens, roads are narrow with drains on both sides. We send a vetted operator who knows these roads, with a flatbed, a winch and skates, at a price you agree before they set off.</p>
{{LIST:service}}
<p class="kicker kicker-dark">Where we work</p>
<h2>Towns and villages</h2>
{{LIST:town}}
<p class="kicker kicker-dark">Before you call</p>
<h2>How the price works</h2>
<p>Local recovery starts {{PRICE}}. Longer jobs are priced on distance, and the figure we give you on the phone is the figure you pay. Nights, weekends and bank holidays are covered at the same rate. The <a href="/guides/car-recovery-cost/">car recovery cost guide</a> shows what you should expect to pay across the market, not just with us.</p>
<p class="kicker kicker-dark">Main roads</p>
<h2>Road guides</h2>
{{LIST:road}}
HTML
  faq => [
    [ 'How much does car recovery cost in Peterborough?', 'Local recovery starts {{PRICE}}. The final price depends on distance, the vehicle and whether it rolls, and we give you one fixed figure on the call before anything is booked.' ],
    [ 'Do you work at night and on bank holidays?', 'Yes. The phone is answered 24 hours a day, every day of the year, and the price is the same at 3am as at 3pm.' ],
    [ 'Can you move a car that is not broken down?', 'Yes. We collect and deliver cars and vans anywhere in the UK, including auction cars, private purchases and non-runners.' ],
    [ 'Are you the old BR Recovery?', 'No. This site is run by Fenline Recovery, an independent call-connection service. We are not connected with BR Recovery Ltd, Batista Car-Van-Caravan Transportation, or any other business that used this web address before.' ],
  ],
};

push @main::PAGES, {
  path => 'services', label => 'Services', nav => 'services', crumbs => [], big => 'Services',
  title => 'Recovery Services Peterborough | Breakdown, Accident, Transport, Auction',
  description => 'Every recovery and transport service we offer around Peterborough: breakdowns, accidents, car transport, auction collection, non-runners, vans, caravans and jump starts.',
  h1 => 'What we <span>recover</span>',
  lead => 'From a flat battery on the drive to a non-runner from Copart, here is everything our network does, 24 hours a day.',
  body => "{{LIST:service}}\n",
};

push @main::PAGES, {
  path => 'car-recovery', label => 'Areas', nav => 'car-recovery', crumbs => [], big => 'Areas',
  title => 'Areas We Cover | Car Recovery Peterborough, Fens, South Lincs, Rutland',
  description => 'Towns and counties we cover for 24/7 car recovery: Peterborough, Stamford, Huntingdon, St Neots, Spalding, Wisbech, March, Corby, Oundle and Rutland.',
  h1 => 'Where we <span>work</span>',
  lead => 'Our base is Peterborough. From there we cover the Fens, South Lincolnshire, North Northamptonshire, Rutland and Huntingdonshire.',
  body => <<'HTML',
<h2>Towns</h2>
{{LIST:town}}
<h2>Counties</h2>
{{LIST:county}}
<p>Not listed? We still take transport jobs to and from anywhere in the UK. <a href="/contact-us/">Ask us</a>.</p>
HTML
};

push @main::PAGES, {
  path => 'roads', label => 'Roads', nav => 'roads', crumbs => [], big => 'Roads',
  title => 'Road Guides | A1(M), A47, A14, A15, A16 &amp; Parkway Breakdown Recovery',
  description => 'Junction-by-junction guides to the main roads around Peterborough, with what to do if you break down and how to get recovered.',
  h1 => 'Know your <span>road</span>',
  lead => 'Telling the operator exactly where you are is the quickest way to get a truck to you. These guides show the junctions and landmarks to give us.',
  body => "{{LIST:road}}\n",
};

push @main::PAGES, {
  path => 'guides', label => 'Guides', nav => 'guides', crumbs => [], big => 'Guides', no_cta => 1,
  title => 'Car Recovery Guides | Costs, Auctions, Non-Runners, A1 Breakdowns',
  description => 'Plain-English guides: what car recovery costs, collecting a car from auction, moving a non-runner, and what to do after breaking down on the A1.',
  h1 => 'Guides',
  lead => 'Straight answers to the questions we get every day.',
  body => "{{LIST:guide}}\n",
};

sub guide {
  my %g = @_;
  push @main::PAGES, { kind => 'guide', nav => 'guides', crumbs => [ [ 'Guides', 'guides' ] ], kicker => 'Guide', %g };
}

guide(
  path => 'guides/car-recovery-cost', label => 'What does car recovery cost?', big => '&pound;',
  card => 'Real price ranges around Peterborough, and what pushes the price up.',
  title => 'How Much Does Car Recovery Cost in Peterborough? (2026 Prices)',
  description => 'What car recovery and car transport really cost around Peterborough in 2026: local call-outs, per-mile rates, non-runners, nights and auction collections, with examples.',
  h1 => 'What does car recovery <span>cost?</span>',
  lead => 'Prices vary a lot, and a cheap headline figure is not always what you pay. Here is what the market charges around Peterborough, and how to avoid surprises.',
  body => <<'HTML',
<h2>Typical prices around Peterborough</h2>
<p>These ranges come from published prices on local recovery and transport websites in 2026. They are a guide, not a quote.</p>
<table class="price">
  <thead><tr><th>Job</th><th>Typical price</th></tr></thead>
  <tbody>
    <tr><td>Local recovery inside Peterborough</td><td>&pound;70&ndash;&pound;130</td></tr>
    <tr><td>Per-mile rate on longer runs</td><td>&pound;1.80&ndash;&pound;2.50 a mile</td></tr>
    <tr><td>Minimum charge, per-mile firms</td><td>&pound;50&ndash;&pound;80</td></tr>
    <tr><td>Car transport, about 50 miles</td><td>&pound;150&ndash;&pound;200</td></tr>
    <tr><td>Car transport, about 170 miles</td><td>&pound;380&ndash;&pound;480</td></tr>
    <tr><td>Jump start</td><td>Usually less than a recovery</td></tr>
  </tbody>
</table>
<p>Our local recovery starts {{PRICE}}, and we give you a fixed figure on the call for anything longer.</p>
<h2>What pushes the price up</h2>
<ul>
  <li><b>Distance to the drop-off.</b> The biggest factor by far.</li>
  <li><b>A car that will not roll.</b> Locked wheels, flat tyres or no keys mean skates and winching, which takes longer.</li>
  <li><b>Access.</b> Low multi-storeys, narrow lanes or a car in a ditch.</li>
  <li><b>Size.</b> Long wheelbase vans and big 4x4s need a bigger bed.</li>
  <li><b>Storage.</b> If the car has to be kept overnight before delivery.</li>
</ul>
<h2>How to avoid a nasty surprise</h2>
<ul>
  <li>Ask for a <b>fixed price</b>, not a per-mile estimate, before the truck sets off.</li>
  <li>Tell the operator everything: does it roll, where are the keys, is it in a car park?</li>
  <li>Ask whether there is an extra charge for nights or bank holidays. With us there is not.</li>
  <li>Get the invoice by email if you might claim it back from insurance.</li>
</ul>
HTML
  faq => [
    [ 'Is car recovery more expensive at night?', 'Some firms charge more at night, at weekends or on bank holidays. We charge the same rate around the clock.' ],
    [ 'Is it cheaper to have my car driven than transported?', 'Sometimes, but only if it has a valid MOT, tax and insurance and is safe to drive. A transporter adds no miles and works for non-runners.' ],
  ],
);

guide(
  path => 'guides/broken-down-on-the-a1', label => 'Broken down on the A1: what to do', big => 'A1',
  card => 'Step by step, from pulling over to getting the car home.',
  title => 'Broken Down on the A1 or A1(M) Near Peterborough? What to Do',
  description => 'Step-by-step help if you break down on the A1 or A1(M) around Peterborough, Stamford or Huntingdon: staying safe, what to tell the recovery truck, and getting home.',
  h1 => 'Broken down on the <span>A1?</span>',
  lead => 'The A1 and A1(M) carry heavy, fast traffic past Peterborough. Here is what to do, in order, if your car stops.',
  body => <<'HTML',
<h2>1. Get off the carriageway</h2>
<p>If the car still moves, get onto the hard shoulder, a lay-by or the next slip road. On the A1(M) between Alconbury and Peterborough, the hard shoulder is the safest place. North of Peterborough, lay-bys are short, so pull as far in as you can.</p>
<h2>2. Get everyone out, on the safe side</h2>
<p>Hazard lights on. Everyone out through the doors away from the traffic, and up behind the barrier. Leave animals in the car unless it is an emergency. Do not try to fix the car or put out a warning triangle on a motorway.</p>
<h2>3. Stuck in a live lane? Call 999</h2>
<p>If you cannot get off the road, keep seat belts on, hazards on, and call 999. On this kind of road a stopped car in a lane is a real danger to you and to others.</p>
<h2>4. Work out where you are</h2>
<ul>
  <li>The last junction you passed (J14 Alconbury to J17 Peterborough on the A1(M)).</li>
  <li>Your direction: northbound or southbound.</li>
  <li>Any lay-by name, services or marker post number.</li>
  <li>Or send a WhatsApp location pin.</li>
</ul>
<h2>5. Call us</h2>
<p>We give you a fixed price and an arrival time, and the driver calls you when close. See the <a href="/roads/a1-a1m/">A1(M) junction guide</a> for more detail.</p>
HTML
);

guide(
  path => 'guides/collecting-a-car-from-auction', label => 'Collecting a car from auction', big => 'Lot #',
  card => 'Copart and BCA: what to have ready, and how to beat storage fees.',
  title => 'Collecting a Car From Copart or BCA: Checklist &amp; Transport Tips',
  description => 'Bought a car at Copart Wisbech, BCA Peterborough or another auction? The checklist for getting it collected: lot number, release, ID, non-runner details and storage fees.',
  h1 => 'Collecting a car from <span>auction</span>',
  lead => 'Winning the bid is the easy part. This checklist gets the car out of the yard before storage charges start adding up.',
  body => <<'HTML',
<h2>Before you book transport</h2>
<ul>
  <li><b>Pay in full.</b> Most sites will not release a car until payment has cleared.</li>
  <li><b>Check the deadline.</b> Auction sites usually allow only a few days of free storage after the sale, then charge per day. The exact terms are in your buyer agreement.</li>
  <li><b>Get the release.</b> Some sites issue a release or collection note by email, some need a booked slot.</li>
</ul>
<h2>What the transporter needs</h2>
<ul>
  <li>Site name and address, and the lot or stock number.</li>
  <li>Your buyer or member number, and any collection PIN.</li>
  <li>The vehicle&rsquo;s condition as listed: runner, non-runner, keys or no keys, damage.</li>
  <li>The delivery address and a phone number at that end.</li>
</ul>
<h2>Salvage and non-runners</h2>
<p>Cat N and Cat S cars often have locked wheels, flat tyres or damage that stops them rolling. Tell us before we send a truck so the driver brings skates and uses the winch.</p>
<p>Ready to book? See <a href="/auction-collection/">auction collection</a>.</p>
HTML
);

guide(
  path => 'guides/moving-a-non-runner', label => 'Moving a non-runner', big => 'SORN',
  card => 'MOT failures, project cars and scrap: what to check before collection.',
  title => 'How to Move a Non-Running Car: Checklist for MOT Fails, Projects &amp; Scrap',
  description => 'Need to move a car that will not start? A checklist for collecting non-runners, project cars and MOT failures, plus the rules if it is going for scrap.',
  h1 => 'Moving a <span>non-runner</span>',
  lead => 'A car that will not start can still be moved safely on a flatbed. Getting a few things ready makes the collection quick and the price accurate.',
  body => <<'HTML',
<h2>Check before you call</h2>
<ul>
  <li>Does it roll? Try it in neutral with the handbrake off.</li>
  <li>Do the tyres hold air? How many are flat?</li>
  <li>Is the steering locked? Do you have the key?</li>
  <li>Is there clear access? Gravel, a slope, a narrow gate or other cars in the way?</li>
</ul>
<h2>Paperwork</h2>
<ul>
  <li>A car declared SORN can be moved on a transporter. It is not being driven on the road.</li>
  <li>If you are selling it, tell the DVLA when ownership changes.</li>
  <li>If it is going for scrap, it must go to an authorised treatment facility, which issues a Certificate of Destruction. Tell the DVLA it has been scrapped.</li>
</ul>
<h2>On the day</h2>
<p>Remove personal items and anything loose. If the battery is flat and the car has an electronic handbrake, tell us: it may need a booster to release it.</p>
<p>Book on the <a href="/non-runner-transport/">non-runner transport</a> page.</p>
HTML
);

push @main::PAGES, {
  path => 'about-us', label => 'About us', nav => '', crumbs => [], big => 'About',
  title => 'About Fenline Recovery | How Our Recovery Service Works',
  description => 'Fenline Recovery is an independent call-connection service for vehicle recovery around Peterborough. How it works, who comes out, and how we price.',
  h1 => 'About <span>Fenline</span>',
  lead => 'One number for recovery around Peterborough. We answer, give you a fixed price and send a vetted operator from our network.',
  body => <<'HTML',
<h2>How it works</h2>
<p>Fenline Recovery is an independent call-connection service. When you call, we take the details, agree the price with you, and send the nearest suitable recovery operator in our network. That operator does the recovery and is responsible for the vehicle while it is on their truck.</p>
<h2>Who comes out</h2>
<p>Local, insured recovery operators with flatbeds, winches and skates, who work the A1, the A47 and the Fens every day. We only use operators who agree to our fixed-price rule: the price you are told is the price you pay.</p>
<h2>About this web address</h2>
<p>brrecovery.co.uk was previously used by a different business. We are <b>not connected</b> with BR Recovery Ltd (a company that was dissolved in 2022), with Batista Car-Van-Caravan Transportation, with Car Recovery Peterborough, or with any other business that used this address before. If you are trying to reach them, please search for their current details.</p>
HTML
};

push @main::PAGES, {
  path => 'contact-us', label => 'Contact us', nav => 'contact-us', crumbs => [], big => 'Contact',
  title => 'Contact Fenline Recovery | 24/7 Car Recovery Peterborough',
  description => 'Call {{PHONE}} or WhatsApp us for 24/7 car recovery and transport around Peterborough. Or send the form and we call you back.',
  h1 => 'Get a <span>truck moving</span>',
  lead => 'Phone is quickest, 24 hours a day. WhatsApp works well if you want to send a location pin or photos. The form gets you a call back.',
  body => <<'HTML',
<h2>Phone</h2>
<p><a class="big-link" href="{{PHONE_HREF}}">{{PHONE}}</a></p>
<h2>WhatsApp</h2>
<p><a href="{{WA_HREF}}">Send your location and a photo</a>. Tap the paperclip, then Location, then Send your current location.</p>
<h2>What to tell us</h2>
<ul>
  <li>Where the vehicle is, and where it needs to go.</li>
  <li>Make, model, and whether it rolls.</li>
  <li>A phone number the driver can reach you on.</li>
</ul>
HTML
};

push @main::PAGES, {
  path => 'privacy', label => 'Privacy', crumbs => [], no_form => 1, no_cta => 1, big => 'Privacy',
  title => 'Privacy Notice | Fenline Recovery',
  description => 'How Fenline Recovery uses the details you give us when you call, message or send the quote form.',
  h1 => 'Privacy',
  body => <<'HTML',
<p>When you call, message or send the form, we collect your name, phone number, the vehicle details and the collection and delivery locations. We use them only to arrange your recovery or transport, and we share them only with the operator doing the job.</p>
<p>The quote form is sent through formsubmit.co, which forwards it to us by email. We keep job records for as long as we need them for accounts and insurance, then delete them.</p>
<p>You can ask what we hold about you, or ask us to delete it, by calling {{PHONE}}.</p>
<p>This site does not use advertising or tracking cookies.</p>
HTML
};

push @main::PAGES, {
  path => 'thank-you', label => 'Thank you', no_form => 1, noindex => 1, big => 'Sent',
  title => 'Request Sent | Fenline Recovery',
  description => 'Thanks, we have your request.',
  h1 => 'Got it. <span>We&rsquo;ll call you.</span>',
  lead => 'We usually call back within minutes. If it is urgent, call now.',
  body => '<p>Keep your phone nearby. If you are in an unsafe place, move somewhere safe first.</p>',
};

push @main::PAGES, {
  path => '404', file => '404.html', label => 'Not found', no_form => 1, noindex => 1, big => '404',
  title => 'Page Not Found | Fenline Recovery',
  description => 'This page does not exist.',
  h1 => 'Wrong <span>turn</span>',
  lead => 'That page does not exist. If you need a recovery truck, just call.',
  body => '<p>Try the <a href="/services/">services</a>, <a href="/car-recovery/">areas</a> or the <a href="/">home page</a>.</p>',
};

# ------------------------------------------------- old WordPress URL forwards
my %OLD = (
  'breakdown'                       => '/breakdown-recovery/',
  'car-van-transportation'          => '/car-transport/',
  'vehicle-delivery-and-collection' => '/car-transport/',
  'we-buy-cars'                     => '/non-runner-transport/',
  'scrap-cars'                      => '/non-runner-transport/',
  'previous-work'                   => '/about-us/',
  'how-to-choose-a-good-company-for-recovery-of-vehicle-from-roads'          => '/guides/car-recovery-cost/',
  'tip-to-get-better-car-breakdown-and-recovery-company-in-peterborough'     => '/car-recovery/peterborough/',
  'why-you-need-better-vehicle-recovery-services-in-peterborough'            => '/car-recovery/peterborough/',
  'when-do-you-need-a-vehicle-recovery-service'                              => '/breakdown-recovery/',
  'does-your-car-take-its-last-breath'                                       => '/guides/moving-a-non-runner/',
  'reasons-why-you-need-to-get-professional-vehicle-scrap-services'          => '/guides/moving-a-non-runner/',
  'top-reasons-you-should-hire-professional-recovery-services-for-your-vehicle' => '/breakdown-recovery/',
  'legal-procedure-you-need-to-follow-when-scrapping-your-vehicle'           => '/guides/moving-a-non-runner/',
);
push @main::PAGES, { path => $_, redirect => $OLD{$_}, noindex => 1 } for sort keys %OLD;

# The old site had a thin page per village. Forward each one to the town page that covers it.
open my $vf, '<', "$FindBin::Bin/old-villages.txt" or die "old-villages.txt: $!";
chomp(my @villages = grep { /\S/ } <$vf>);
close $vf;
for my $v (@villages) {
  my $to = $VILLAGE_TO{$v} ? "/car-recovery/$VILLAGE_TO{$v}/" : '/car-recovery/';
  push @main::PAGES, { path => "car-van-transportation-$v", redirect => $to, noindex => 1 };
}

1;
