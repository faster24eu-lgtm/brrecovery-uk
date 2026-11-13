# More road and service pages (added 2026-11-08). Uses road() from places.pl and svc() from services.pl.
use strict;
use warnings;
use utf8;

my $SAFE2 = <<'HTML';
<h2>If you break down on this road</h2>
<ol class="steps">
  <li><b>Get off the road</b> if the car still moves: lay-by, verge, slip road or the next village.</li>
  <li><b>Hazards on, everyone out</b> on the side away from traffic, and well away from the car.</li>
  <li><b>Stuck in a live lane or in a ditch with water?</b> Call 999 first.</li>
  <li><b>Call us</b> with the road, your direction and the last village or junction you passed, or share a live location pin.</li>
</ol>
HTML

# ------------------------------------------------------------------- roads
road(
  path => 'roads/a605', label => 'A605', big => 'A605',
  card => 'Thrapston and Oundle to Peterborough, then on to Whittlesey and March.',
  title => 'A605 Breakdown Recovery | Oundle, Peterborough, Whittlesey 24/7',
  description => 'Broken down on the A605 between Thrapston, Oundle, Peterborough, Whittlesey and March? 24/7 recovery, price agreed before we set off. Call {{PHONE}}.',
  h1 => q(A605 <span>breakdown recovery</span>),
  area => 'A605 between Thrapston and March',
  lead => 'The A605 runs right across our patch: from the A14 at Thrapston through the Nene valley to Peterborough, then east across the fen to Whittlesey and March.',
  body => <<"HTML",
<h2>The stretch we cover</h2>
<ul class="roads">
  <li><b>Thrapston to Oundle</b>: single carriageway through Titchmarsh and Barnwell, with tight bends and village speed limits.</li>
  <li><b>Oundle to Peterborough</b>: past Elton and Warmington to the A1(M) and the Fletton Parkway at Alwalton.</li>
  <li><b>Peterborough to Whittlesey</b>: from Stanground out along the river, past the brick pits at King&rsquo;s Dyke, where a new road now carries traffic over the railway instead of the old level crossing.</li>
  <li><b>Whittlesey to March</b>: a fen road through Eastrea and Coates, with drains alongside.</li>
</ul>
$SAFE2
<h2>Fen stretch</h2>
<p>East of Whittlesey the road runs beside water for long stretches. If the car leaves the road into a drain, get out if you can and call 999 straight away. Once everyone is safe, we can winch it out.</p>
<p>Nearby: <a href="/car-recovery/thrapston/">Thrapston</a>, <a href="/car-recovery/oundle/">Oundle</a>, <a href="/car-recovery/peterborough/">Peterborough</a> and <a href="/car-recovery/march-and-whittlesey/">March &amp; Whittlesey</a>.</p>
HTML
  faq => [
    [ 'Do you cover the A605 between Oundle and Thrapston?', 'Yes, the whole road, day and night. Tell us the nearest village and your direction.' ],
  ],
);

road(
  path => 'roads/a141-a142', label => 'A141 &amp; A142', big => 'A141',
  card => 'Huntingdon, Chatteris, March and Ely across the fen.',
  title => 'A141 &amp; A142 Breakdown Recovery | Chatteris, March, Ely 24/7',
  description => 'Broken down on the A141 between Huntingdon, Chatteris, March and Guyhirn, or the A142 to Ely? 24/7 fen recovery, price agreed upfront. Call {{PHONE}}.',
  h1 => q(A141 &amp; A142 <span>breakdown recovery</span>),
  area => 'A141 and A142 in the Fens',
  lead => 'Two long fen roads that meet at Chatteris. Straight, fast and lined with drains, with very few safe places to stop.',
  body => <<"HTML",
<h2>A141</h2>
<p>From Huntingdon past Warboys to Chatteris, then north past Wimblington and around March to the A47 at Guyhirn. It is the main route from the A14 to Wisbech and King&rsquo;s Lynn for a lot of traffic.</p>
<h2>A142</h2>
<p>From Chatteris south-east past Mepal and Sutton to Ely, then on to Soham and Newmarket. Open fen for most of the way to Ely.</p>
$SAFE2
<h2>Out on the fen</h2>
<p>These roads are hard to describe: one stretch looks like the next. A live location pin or a what3words address is the quickest way to get a truck to you. See <a href="/guides/sharing-your-location/">how to share your location</a>.</p>
<p>Nearby: <a href="/car-recovery/chatteris/">Chatteris</a>, <a href="/car-recovery/march-and-whittlesey/">March</a>, <a href="/car-recovery/ely/">Ely</a>, <a href="/car-recovery/ramsey/">Warboys</a> and <a href="/car-recovery/huntingdon/">Huntingdon</a>.</p>
HTML
  faq => [
    [ 'Do you cover the A142 at night?', 'Yes, 24/7. Send your location and we&rsquo;ll give you an honest arrival time.' ],
  ],
);

road(
  path => 'roads/a17', label => 'A17', big => 'A17',
  card => 'Sleaford to King&rsquo;s Lynn via Holbeach and Sutton Bridge.',
  title => 'A17 Breakdown Recovery | Holbeach, Long Sutton, King&rsquo;s Lynn 24/7',
  description => 'Broken down on the A17 between Sleaford, Sutterton, Holbeach, Long Sutton, Sutton Bridge and King&rsquo;s Lynn? 24/7 recovery. Call {{PHONE}}.',
  h1 => q(A17 <span>breakdown recovery</span>),
  area => 'A17 in South Lincolnshire',
  lead => 'The A17 is the main lorry route across South Lincolnshire, linking the A1 at Newark with King&rsquo;s Lynn. Busy all day and all night.',
  body => <<"HTML",
<h2>The stretch we cover</h2>
<ul class="roads">
  <li><b>Sleaford to Sutterton</b>: past Heckington and Swineshead, long and fast.</li>
  <li><b>Sutterton roundabout</b>: where the A17 meets the A16 between Spalding and Boston.</li>
  <li><b>Sutterton to Long Sutton</b>: past Fosdyke Bridge, Holbeach and Fleet Hargate.</li>
  <li><b>Sutton Bridge</b>: the Cross Keys swing bridge over the Nene.</li>
  <li><b>Sutton Bridge to King&rsquo;s Lynn</b>: to the A47 south of the town.</li>
</ul>
$SAFE2
<h2>Lorries and junctions</h2>
<p>The A17 carries a lot of heavy goods, and junctions where village roads join it are a common place for accidents. If you&rsquo;ve stopped near one, get well away from the car and the junction.</p>
<p>Nearby: <a href="/car-recovery/sleaford/">Sleaford</a>, <a href="/car-recovery/boston/">Boston</a>, <a href="/car-recovery/holbeach/">Holbeach</a>, <a href="/car-recovery/long-sutton/">Long Sutton</a> and <a href="/car-recovery/kings-lynn/">King&rsquo;s Lynn</a>.</p>
HTML
  faq => [
    [ 'Can you recover a van from the A17?', 'Yes, vans up to 3.5 tonnes. Tell us the size and load when you call.' ],
  ],
);

road(
  path => 'roads/a428', label => 'A428', big => 'A428',
  card => 'St Neots and the Black Cat to Cambourne and Cambridge.',
  title => 'A428 Breakdown Recovery | St Neots to Cambridge, 24/7',
  description => 'Broken down on the A428 between St Neots, the Black Cat, Caxton Gibbet, Cambourne and Cambridge? 24/7 recovery, price agreed upfront. Call {{PHONE}}.',
  h1 => q(A428 <span>breakdown recovery</span>),
  area => 'A428 between St Neots and Cambridge',
  lead => 'The A428 links the A1 at St Neots with the M11 and A14 at Cambridge, through Cambourne. A busy commuter road.',
  body => <<"HTML",
<h2>The stretch we cover</h2>
<ul class="roads">
  <li><b>The Black Cat</b>: where the A428 meets the A1 south of St Neots.</li>
  <li><b>St Neots to Caxton Gibbet</b>: where the A428 crosses the A1198.</li>
  <li><b>Caxton Gibbet to Cambourne and Hardwick</b>: dual carriageway towards Cambridge.</li>
  <li><b>Girton</b>: where the A428 meets the M11 and the A14.</li>
</ul>
<p>Expect roadworks and changed junctions between the Black Cat and Caxton Gibbet, where National Highways has been building a new dual carriageway. If you&rsquo;ve stopped in a coned-off section, tell us exactly where, as access can be tricky.</p>
$SAFE2
<p>Nearby: <a href="/car-recovery/st-neots/">St Neots</a> and <a href="/car-recovery/cambridge/">Cambridge</a>.</p>
HTML
  faq => [
    [ 'Do you cover the A428 at Cambourne?', 'Yes. Tell us your direction and the last junction you passed.' ],
  ],
);

road(
  path => 'roads/a10', label => 'A10', big => 'A10',
  card => 'Cambridge to Ely, Littleport, Downham Market and King&rsquo;s Lynn.',
  title => 'A10 Breakdown Recovery | Ely, Downham Market, King&rsquo;s Lynn 24/7',
  description => 'Broken down on the A10 between Cambridge, Ely, Littleport, Downham Market and King&rsquo;s Lynn? 24/7 recovery with a fixed price. Call {{PHONE}}.',
  h1 => q(A10 <span>breakdown recovery</span>),
  area => 'A10 between Cambridge and King&rsquo;s Lynn',
  lead => 'North of Cambridge, the A10 crosses the fen to Ely, then runs on through Littleport and Downham Market to King&rsquo;s Lynn.',
  body => <<"HTML",
<h2>The stretch we cover</h2>
<ul class="roads">
  <li><b>Cambridge to Ely</b>: past Milton, Waterbeach and Stretham, busy with commuters.</li>
  <li><b>Ely</b>: the roundabouts around the city and the A142 junction.</li>
  <li><b>Ely to Downham Market</b>: past Littleport and Southery, a fast single carriageway.</li>
  <li><b>Downham Market to King&rsquo;s Lynn</b>: past Stow Bardolph and Watlington.</li>
</ul>
$SAFE2
<p>Nearby: <a href="/car-recovery/cambridge/">Cambridge</a>, <a href="/car-recovery/ely/">Ely</a>, <a href="/car-recovery/downham-market/">Downham Market</a> and <a href="/car-recovery/kings-lynn/">King&rsquo;s Lynn</a>.</p>
HTML
  faq => [
    [ 'How long does it take you to reach the A10?', 'It depends where on the road you are and where the nearest truck is. We give you an honest arrival time on the call.' ],
  ],
);

road(
  path => 'roads/a43', label => 'A43', big => 'A43',
  card => 'Stamford to Corby and Kettering, over Collyweston hill.',
  title => 'A43 Breakdown Recovery | Stamford, Corby &amp; Kettering 24/7',
  description => 'Broken down on the A43 between Stamford, Collyweston, Duddington, Corby and Kettering? 24/7 recovery, price agreed before we set off. Call {{PHONE}}.',
  h1 => q(A43 <span>breakdown recovery</span>),
  area => 'A43 between Stamford and Kettering',
  lead => 'The A43 leaves the A1 at Stamford and runs south-west over the hills to Corby and Kettering. Narrow in places, busy all day.',
  body => <<"HTML",
<h2>The stretch we cover</h2>
<ul class="roads">
  <li><b>Stamford and the A1</b>: the junction south of the town.</li>
  <li><b>Collyweston and Duddington</b>: a steep hill down to the Welland valley, with tight bends.</li>
  <li><b>Duddington to Corby</b>: through Bulwick and Laxton, single carriageway.</li>
  <li><b>Corby to Kettering</b>: dual carriageway with big roundabouts.</li>
</ul>
$SAFE2
<p>Nearby: <a href="/car-recovery/stamford/">Stamford</a>, <a href="/car-recovery/corby/">Corby</a> and <a href="/car-recovery/kettering/">Kettering</a>.</p>
HTML
  faq => [
    [ 'Do you cover the A43 at Collyweston?', 'Yes. Tell us which side of the hill you&rsquo;re on: Stamford or Duddington.' ],
  ],
);

# ---------------------------------------------------------------- services
svc(
  path => 'motorbike-recovery', label => 'Motorbike recovery', big => 'Bikes',
  card => 'Motorbikes, scooters and mopeds, chocked and soft-strapped.',
  service => 'Motorcycle recovery',
  title => 'Motorbike Recovery Peterborough | 24/7 Bike &amp; Scooter Recovery',
  description => '24/7 motorbike, scooter and moped recovery in Peterborough and the Fens. Wheel chock and soft straps. Price agreed before we set off. Call {{PHONE}}.',
  h1 => q(Motorbike recovery in <span>Peterborough</span>),
  lead => 'Broken down, dropped or crashed? Motorbikes need different kit from cars. We send a truck with a wheel chock and soft straps, so your bike arrives without a mark.',
  body => <<'HTML',
<h2>Why bikes need the right truck</h2>
<p>A bike strapped badly on a car transporter can fall, crack a fairing or bend a lever before it leaves the lay-by. Our operators load bikes with a front-wheel chock, soft loops round the lower yokes or frame, and gentle compression on the forks. Never over the bars, never across the plastics.</p>
<h2>What we recover</h2>
<ul>
  <li>Road bikes, sports bikes, tourers and adventure bikes.</li>
  <li>Scooters and mopeds, including delivery scooters.</li>
  <li>Bikes that have been dropped or crashed and won&rsquo;t roll properly.</li>
  <li>Track bikes and off-road bikes with no plates.</li>
</ul>
<h2>Where we cover</h2>
<p>Peterborough, the A1(M), the A47 and the fen roads, Stamford and Rutland&rsquo;s biking roads, Huntingdon, Spalding and Wisbech. Tell us where the bike is and where it needs to go.</p>
<h2>Crashed?</h2>
<p>Get yourself safe and checked first. Photograph the bike and the road before it&rsquo;s moved, and keep our invoice for the claim. See <a href="/accident-recovery/">accident recovery</a>.</p>
HTML
  faq => [
    [ 'Can you recover a motorbike in Peterborough?', 'Yes, 24/7. Tell us the make and model, whether it rolls, and where it needs to go.' ],
    [ 'Will my bike be strapped properly?', 'Yes. Front wheel in a chock, soft loops on the frame or yokes, never over the handlebars or fairings.' ],
  ],
);

svc(
  path => 'electric-car-recovery', label => 'Electric car recovery', big => 'EV',
  card => 'Out of charge, fault codes and crashes. Always on a flatbed.',
  service => 'Electric vehicle recovery',
  title => 'Electric Car Recovery Peterborough | EV Flatbed Recovery 24/7',
  description => '24/7 electric and hybrid car recovery around Peterborough: out of charge, fault codes, crashes. Always on a flatbed, never towed. Call {{PHONE}}.',
  h1 => q(Electric car <span>recovery</span> in Peterborough),
  lead => 'Ran out of charge, stuck in park, or a warning you can&rsquo;t clear? Electric cars should never be towed on their wheels. We put them on a flatbed.',
  body => <<'HTML',
<h2>Why EVs go on a flatbed</h2>
<p>Most electric cars drive their wheels through the motor. Towing one with the driven wheels on the road can turn the motor and damage it, so manufacturers say not to. Every EV and hybrid we move goes fully on the bed.</p>
<h2>Common EV calls</h2>
<ul>
  <li><b>Out of charge.</b> We take the car to the nearest working rapid charger, or home.</li>
  <li><b>Stuck in park.</b> If the 12-volt battery is flat, the car may not release. We bring skates to move it.</li>
  <li><b>Fault codes.</b> Taken to a dealer or an EV specialist.</li>
  <li><b>After a crash.</b> A damaged high-voltage battery needs care.</li>
</ul>
<h2>After a crash</h2>
<p>If the battery pack is damaged, smoking, hissing or giving off a chemical smell, keep everyone well away and call 999. Once it is safe, we recover the car and keep it outside, away from buildings, until a specialist has checked it.</p>
<h2>Tell us this on the call</h2>
<p>The make and model, the state of charge if you know it, whether it will go into neutral or transport mode, and where it needs to go.</p>
HTML
  faq => [
    [ 'Can you take my electric car to a charger?', 'Yes, or home. Tell us which chargers you can use, so we take it to one that works for your car.' ],
    [ 'Can an electric car be towed?', 'Not on its driven wheels. We always carry EVs fully on a flatbed.' ],
  ],
);

svc(
  path => 'classic-car-transport', label => 'Classic car transport', big => 'Classic',
  card => 'Shows, restorations and barn finds, moved with care.',
  service => 'Classic car transport',
  title => q(Classic Car Transport Peterborough | Shows &amp; Restorations),
  description => 'Careful classic car transport from Peterborough: shows, restorers, auctions and non-running barn finds, on a flatbed with soft wheel straps. Call {{PHONE}}.',
  h1 => q(Classic car <span>transport</span> from Peterborough),
  lead => 'Old cars are fragile, often irreplaceable and sometimes don&rsquo;t roll. We move them gently, whether it&rsquo;s a concours car or a project from a barn.',
  body => <<'HTML',
<h2>How classics are moved</h2>
<ul>
  <li><b>Wheel straps</b> over the tyres, never through suspension or round bumpers.</li>
  <li><b>Low loading angle</b>, so low cars don&rsquo;t ground.</li>
  <li><b>Winch and skates</b> for cars that don&rsquo;t run or have seized brakes.</li>
  <li><b>Drip tray</b> on the bed for cars that leak oil.</li>
</ul>
<h2>Shows and events</h2>
<p>Burghley, Stamford, Peterborough and the classic shows around the region are busy every summer. Book early, tell us the date and when the car needs to be there, and we&rsquo;ll bring it back afterwards.</p>
<h2>Restorations and barn finds</h2>
<p>A car that has sat for years may have flat tyres, seized wheels and no brakes. That&rsquo;s fine. Send us a photo and tell us whether the wheels turn and whether it can be steered. We plan the kit around it.</p>
<p>For long runs, see <a href="/car-transport/">car transport</a>. For auctions, see <a href="/auction-collection/">auction collection</a>.</p>
HTML
  faq => [
    [ 'Can you move a classic that doesn&rsquo;t run?', 'Yes. Tell us whether the wheels turn and steer, and send a photo. We use a winch and skates where needed.' ],
  ],
);

svc(
  path => 'dealer-car-transport', label => 'Trade &amp; dealer transport', big => 'Trade',
  card => 'Dealer, garage and bodyshop moves, one-off or regular.',
  service => 'Trade vehicle transport',
  title => 'Trade Car Transport Peterborough | Dealers, Garages &amp; Bodyshops',
  description => 'Car transport for dealers, garages and bodyshops around Peterborough: stock moves, deliveries, MOT and repair runs. Fixed price per job. Call {{PHONE}}.',
  h1 => q(Trade &amp; dealer car <span>transport</span>),
  lead => 'Moving stock, delivering a sold car, or sending a car to a specialist? We move cars and vans for the trade, one at a time or regularly.',
  body => <<'HTML',
<h2>What we move for the trade</h2>
<ul>
  <li>Stock moves between sites and from auctions.</li>
  <li>Customer deliveries and collections.</li>
  <li>Cars to and from bodyshops, MOT stations and specialists.</li>
  <li>Part-exchange collections, including non-runners.</li>
</ul>
<h2>How it works</h2>
<ol class="steps">
  <li><b>Tell us the job</b>: pick-up, drop-off, the vehicle and when it needs to move.</li>
  <li><b>Fixed price</b> per job, agreed before we book it in.</li>
  <li><b>Moved and delivered</b>, with photos at pick-up and drop-off if you want them.</li>
</ol>
<h2>Regular work</h2>
<p>If you move cars every week, talk to us about a regular arrangement. Auctions such as Copart at Wisbech are covered on the <a href="/auction-collection/">auction collection</a> page.</p>
HTML
  faq => [
    [ 'Do you send photos at collection and delivery?', 'Yes, on request. Ask when you book.' ],
  ],
);

svc(
  path => 'motorhome-recovery', label => 'Motorhome &amp; campervan recovery', big => 'Camper',
  card => 'Campervans and small motorhomes up to 3.5 tonnes.',
  service => 'Motorhome recovery',
  title => 'Motorhome &amp; Campervan Recovery Peterborough | 24/7',
  description => '24/7 campervan and small motorhome recovery around Peterborough, the A1(M) and A47, up to 3.5 tonnes. Price agreed before we set off. Call {{PHONE}}.',
  h1 => q(Motorhome &amp; campervan <span>recovery</span>),
  lead => 'Campervans and small motorhomes break down at the worst moments: on the way to the coast, full of kit. We recover them up to 3.5 tonnes.',
  body => <<'HTML',
<h2>What we can take</h2>
<p>Campervans and small motorhomes up to 3.5 tonnes gross weight, which covers most van conversions and many coachbuilt models. Larger motorhomes need a heavier truck; tell us the make, model and weight plate, and we&rsquo;ll tell you straight away whether we can do it.</p>
<h2>Tell us this on the call</h2>
<ul>
  <li>Make, model, length and the gross weight from the plate.</li>
  <li>Whether there is a bike rack, roof box or tow bar fitted.</li>
  <li>How many people need to travel with it.</li>
  <li>Where it needs to go: home, a dealer, a campsite or a motorhome specialist.</li>
</ul>
<h2>Roads we see breakdowns on</h2>
<p>The A47 to the Norfolk coast, the A17 and A52 to Skegness, the A1 and the A14. If you&rsquo;re on holiday and a long way from home, we can take the van to a local garage or all the way back.</p>
<p>Towing a caravan or trailer instead? See <a href="/caravan-transport/">caravan and trailer moves</a>.</p>
HTML
  faq => [
    [ 'Can you recover a motorhome over 3.5 tonnes?', 'Not with a standard truck. Tell us the weight and we&rsquo;ll tell you honestly whether we can arrange it.' ],
  ],
);

1;
