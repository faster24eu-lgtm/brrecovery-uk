# Second round of page-specific content (added 2026-11-08). Same mechanism as extra.pl.
use strict;
use warnings;
use utf8;

my %X = (

'about-us' => <<'HTML',
<h2>Where we work</h2>
<p>Our patch is Peterborough and the country around it: the Fens from Thorney and Whittlesey to Wisbech, March and Chatteris; South Lincolnshire from Stamford and the Deepings to Spalding, Holbeach and Boston; Huntingdon, St Ives and St Neots; Rutland; and North Northamptonshire from Oundle to Corby and Kettering. Further out, Cambridge, Ely, King&rsquo;s Lynn, Grantham and Sleaford take a little longer to reach. See <a href="/car-recovery/">every area we cover</a>.</p>
<h2>How we price</h2>
<p>We don&rsquo;t publish a minimum price, because every job is different. The distance, the vehicle, whether it rolls and how easy it is to reach all change the cost. Instead, you get one fixed figure on the phone, agreed before anyone sets off, and that is what you pay. The same rule applies at 3am on a bank holiday as at midday on a Tuesday.</p>
<h2>What we move</h2>
<p>Cars, vans up to 3.5 tonnes, 4x4s, electric and hybrid cars, motorbikes and scooters, campervans, classic cars, non-runners and auction cars. Every vehicle travels on a flatbed. See <a href="/services/">all services</a>.</p>
HTML

'car-recovery-northamptonshire' => <<'HTML',
<h2>Breakdowns on the A605 and A6116</h2>
<p>The A605 links Thrapston and Oundle with Peterborough, and the A6116 links Thrapston with Corby through Brigstock. Both are quiet single carriageways with village speed limits and tight bends. We cover both, and take cars to garages in whichever town is closest or most convenient for you.</p>
HTML

'roads/a14' => <<'HTML',
<h2>Brampton and the A1</h2>
<p>At Brampton the A14 meets the A1, with a complicated junction of slip roads and link roads. If you break down here, tell us whether you&rsquo;re on the A14 or the A1, and which way you were heading. A location pin is the quickest way.</p>
HTML

'roads/a16-a15' => <<'HTML',
<h2>Farm traffic and mud</h2>
<p>At harvest time, tractors and trailers use both roads all day, and mud on the road makes them slippery in the wet. Slow down near farm entrances, and if your car has slid off into a verge, don&rsquo;t try to drive it out. Get everyone safe and call us for a winch.</p>
HTML

'car-recovery/boston' => <<'HTML',
<h2>Skegness traffic on the A52</h2>
<p>On summer weekends, traffic to Skegness passes through Boston on the A52, and queues build at the town&rsquo;s junctions. Older cars and cars towing caravans overheat. If yours does, switch off, let it cool, and don&rsquo;t open a hot radiator cap. See <a href="/guides/car-overheating/">car overheating</a>.</p>
HTML

'car-recovery/kettering' => <<'HTML',
<h2>Kettering garages and dealers</h2>
<p>Kettering has plenty of dealers and garages, around the town centre and the retail and business parks by the A14. If your car breaks down nearby, taking it to one of them is often quicker than taking it home. Tell us which one, and check they can take the car.</p>
HTML

'car-recovery/thrapston' => <<'HTML',
<h2>The A14 junction at Thrapston</h2>
<p>The A14 junction at Thrapston is where many drivers from Peterborough join the A14 to head west towards the M1 and M6. Breakdowns on the slip roads and the roundabout are common at rush hour. If you stop, get everyone out on the safe side, and tell us whether you&rsquo;re on the A14, the A605 or the A45.</p>
HTML

'roads/a428' => <<'HTML',
<h2>Caxton Gibbet</h2>
<p>Caxton Gibbet is where the A428 crosses the A1198 between Huntingdon and Royston. It is a busy junction with a roundabout and slip roads. If you stop near it, tell us which road you&rsquo;re on and which way you were going.</p>
HTML

'roads/a10' => <<'HTML',
<h2>Taking the car home from the A10</h2>
<p>If you break down on the A10 a long way from home, we can take the car to a local garage in Ely, Downham Market or King&rsquo;s Lynn, or all the way home. You hear the price for the whole trip before we set off. See <a href="/car-transport/">car transport</a>.</p>
HTML

'roads/a43' => <<'HTML',
<h2>Duddington and Bulwick</h2>
<p>Between the Welland bridge at Duddington and Corby, the A43 passes Bulwick and Laxton on a winding single carriageway with farm entrances and hidden junctions. It&rsquo;s busy with lorries heading to and from Corby&rsquo;s industrial estates. If you stop here, get well off the road and tell us the nearest village.</p>
HTML

'dealer-car-transport' => <<'HTML',
<h2>Same-day moves</h2>
<p>Need a car moved today? Call in the morning and we&rsquo;ll tell you honestly whether a truck is free. For planned work, a day or two&rsquo;s notice gives us the best chance of fitting it around other jobs.</p>
HTML

'roads' => <<'HTML',
<h2>The roads we&rsquo;re called to most</h2>
<p>The A1(M) past Peterborough, the A47 between Wansford and Wisbech, and the Peterborough parkways are our busiest roads. Out on the fen, the A141, A142 and A605 see a lot of breakdowns at night and in fog. In South Lincolnshire, the A15, A16 and A17 carry heavy lorry traffic all year.</p>
HTML

'guides/collecting-a-car-from-auction' => <<'HTML',
<h2>BCA Peterborough</h2>
<p>BCA&rsquo;s Peterborough site, close to the A1(M), is a regular collection point for us, alongside Copart at Wisbech. Trade buyers and private buyers both use it. If you&rsquo;ve bought a car there, have the buyer paperwork ready and book collection quickly. See <a href="/auction-collection/">auction collection</a>.</p>
HTML

'guides/moving-a-non-runner' => <<'HTML',
<h2>Common non-runner moves</h2>
<p>A project car bought from a seller, a car that failed its MOT and needs to go to a garage, a car that has been stood for years, or a car going for scrap. We move all of them, from drives, garages, fields and back lanes.</p>
HTML

'guides/broken-down-on-the-a14' => <<'HTML',
<h2>Children and pets</h2>
<p>Get children out first, on the side away from the traffic, and keep them behind the barrier with an adult. Leave pets in the car unless it&rsquo;s an emergency: a dog loose on the A14 is a danger to everyone.</p>
HTML

'guides/flat-tyre-no-spare' => <<'HTML',
<h2>On the A1(M), A47 or A14</h2>
<p>Don&rsquo;t try to use a sealant kit or change a wheel on the hard shoulder or the verge of a fast road. Get everyone behind the barrier and call us. We&rsquo;ll take the car to a tyre fitter or somewhere safe to deal with it.</p>
HTML

'guides/dashboard-warning-lights' => <<'HTML',
<h2>Check your handbook</h2>
<p>Symbols differ between makes. Most handbooks have a page showing every warning light and what to do. Many cars also show a message on the dashboard screen. If you&rsquo;re unsure and the light is red, treat it as serious and stop.</p>
HTML

'guides/car-in-a-police-pound' => <<'HTML',
<h2>Seized for no insurance or licence</h2>
<p>If the car was seized for no insurance or no licence, you&rsquo;ll usually need to show valid insurance before it&rsquo;s released, and there are release and storage fees. If you can&rsquo;t insure it to drive away, we can collect it on a flatbed for you, once it&rsquo;s released.</p>
HTML

'guides/breakdown-cover-vs-pay-as-you-go' => <<'HTML',
<h2>Waiting times</h2>
<p>On busy days, especially in heatwaves and the first cold snaps of winter, the big breakdown services can have long waits. Some drivers with cover still call a local recovery service when they are quoted a wait of several hours, and claim back what their policy allows.</p>
HTML

'guides/sharing-your-location' => <<'HTML',
<h2>Sharing your live location</h2>
<p>WhatsApp and Google Maps can also share your <b>live</b> location for a set time. If you are moving to a safer spot, or your phone battery is fine, that lets the driver see exactly where you are as they approach.</p>
HTML

);

for my $p (@main::PAGES) {
  my $x = $X{ $p->{path} // '' } or next;
  $p->{body} .= "\n$x";
  delete $X{ $p->{path} };
}
die "extra2.pl: no page for @{[ join ', ', sort keys %X ]}\n" if %X;

1;
