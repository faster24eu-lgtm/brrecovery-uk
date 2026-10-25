# Service pages. Each one is a real job people search for, written for Peterborough and around.
use strict;
use warnings;
use utf8;

sub svc {
  my %p = @_;
  push @main::PAGES, { kind => 'service', nav => 'services', crumbs => [ [ 'Services', 'services' ] ], %p };
}

svc(
  path => 'breakdown-recovery', label => 'Breakdown recovery', big => 'Breakdown',
  card => 'Won&rsquo;t start, warning lights, flat battery, snapped belt. Home, garage or our yard.',
  service => 'Breakdown recovery',
  title => 'Breakdown Recovery Peterborough | 24/7, Fixed Price {{PRICE}}',
  description => '24/7 breakdown recovery in Peterborough, the A1(M) and A47. Fixed price agreed before dispatch, {{PRICE}}. Car or van taken home or to your garage. Call {{PHONE}}.',
  h1 => 'Breakdown recovery, <span>day or night</span>',
  lead => 'Car died on the Parkway, at the services or on your drive? Tell us where it is and where it should go. You get a fixed price on the call and a flatbed comes to you.',
  body => <<'HTML',
<h2>How a breakdown recovery works</h2>
<ol class="steps">
  <li><b>Call or WhatsApp.</b> Give us the location (a postcode, junction number, lay-by or a WhatsApp pin), the vehicle and the problem.</li>
  <li><b>Fixed price.</b> We tell you the price and a realistic arrival time before anything is booked. No meter running.</li>
  <li><b>Truck on the way.</b> The driver calls when close. Stay somewhere safe, behind the barrier if you are on the A1 or A47.</li>
  <li><b>Loaded and delivered.</b> The car goes onto a flatbed, wheels strapped, and is taken home, to your garage or to a dealer.</li>
</ol>
<h2>What we move</h2>
<p>Cars, small vans up to 3.5 tonnes, 4x4s, SUVs, people carriers, automatics and electric cars. Every vehicle goes on the bed, so automatics and EVs are never towed on their wheels.</p>
<h2>Tell us this on the call</h2>
<ul>
  <li>Does it roll? Will it go into neutral, and does the handbrake release?</li>
  <li>Is the steering locked, or are the keys missing?</li>
  <li>Is it lowered, or carrying a heavy load?</li>
</ul>
<p>These change the kit the driver brings (skates, winch, ramps). If we know up front, the price we give you is the price you pay.</p>
<h2>Already covered by a breakdown policy?</h2>
<p>If your insurer or breakdown cover is quoting a long wait, you can still book us directly and claim it back where your policy allows. Keep the invoice we send.</p>
HTML
  faq => [
    [ 'How much is breakdown recovery in Peterborough?', 'Local recovery inside Peterborough starts {{PRICE}}. Longer distances are priced by the mile, and you get the full price on the call before we dispatch.' ],
    [ 'How quickly can you get to me?', 'Inside Peterborough it is often within the hour, but it depends where the nearest truck is. We give you an honest time when you call, not a guess.' ],
    [ 'Can you take my car to a garage that is closed?', 'Yes, if the garage agrees we can leave it in their car park with the keys through the door, or we can keep it overnight and deliver in the morning.' ],
  ],
);

svc(
  path => 'accident-recovery', label => 'Accident recovery', big => 'Accident',
  card => 'Crash on the A1, A47 or in town. Car cleared and stored safely, insurer kept informed.',
  service => 'Accident recovery',
  title => 'Accident Recovery Peterborough | Cleared, Stored &amp; Delivered 24/7',
  description => 'Accident recovery in Peterborough, Cambridgeshire and South Lincolnshire. Damaged cars and vans winched, loaded and stored or delivered. Fixed price. Call {{PHONE}}.',
  h1 => 'Accident recovery, <span>handled calmly</span>',
  lead => 'After a crash, the last thing you need is a tow company haggling at the roadside. We agree the price on the phone, load the car properly and take it where you choose.',
  body => <<'HTML',
<h2>First things first</h2>
<ul>
  <li>If anyone is hurt, or the car is in a live lane, call <b>999</b>.</li>
  <li>On the A1(M), A1 or A47, get everyone behind the barrier and away from the traffic.</li>
  <li>Swap details with the other driver and take photos of the cars, the plates and the scene.</li>
</ul>
<h2>What we do</h2>
<p>Damaged cars often do not roll. Wheels can be locked, tyres off the rim or the steering bent. Our operators carry skates, a winch and a full set of straps, so a car that cannot move under its own power can still go onto the bed without more damage.</p>
<p>We then take it to your home, to a body shop you trust, or to secure storage while your insurer decides. If the police have cleared the car from the road already, we collect it from the pound or yard too.</p>
<h2>Insurance</h2>
<p>You do not have to use the recovery company the insurer or the police suggest once the road is clear. If you pay us directly, we email an itemised invoice you can send to your insurer.</p>
HTML
  faq => [
    [ 'Can you recover a car that will not roll?', 'Yes. Tell us on the call and the driver brings skates and uses the winch, so the car is pulled onto the bed without dragging it.' ],
    [ 'Can you store my car after an accident?', 'Yes, we can arrange secure storage until your insurer or assessor has seen it, then deliver it to the repairer.' ],
  ],
);

svc(
  path => 'car-transport', label => 'Car transport', big => 'Transport',
  card => 'Bought a car miles away? We collect and deliver anywhere in England, Wales or Scotland.',
  service => 'Vehicle transport',
  title => 'Car Transport Peterborough | Collection &amp; Delivery Anywhere in the UK',
  description => 'Car and van transport from or to Peterborough. Bought a car privately or from a dealer? We collect it on a flatbed and deliver to your door. Fixed quote. Call {{PHONE}}.',
  h1 => 'Car transport, <span>door to door</span>',
  lead => 'Bought a car in Leeds, selling one to a buyer in Bristol, or moving house with two cars and one driver? We collect it on a flatbed and deliver it to the door.',
  body => <<'HTML',
<figure class="pic"><img src="/assets/flatbed-800.jpg" srcset="/assets/flatbed-800.jpg 800w, /assets/flatbed-1600.jpg 1600w" sizes="(min-width: 900px) 640px, 100vw" width="800" height="600" alt="Yellow flatbed truck carrying a blue Mini and towing a white van" loading="lazy"><figcaption>Two vehicles, one trip: a car on the bed and a van on a dolly.</figcaption></figure>
<h2>Why use a transporter instead of driving it</h2>
<ul>
  <li>No miles added, and no wear on a car you have just paid for.</li>
  <li>Works for cars without MOT, tax or insurance in your name yet.</li>
  <li>One person can buy a car far away without two train tickets.</li>
</ul>
<h2>How the price works</h2>
<p>Car transport is priced on distance. Across the market a long run usually works out at roughly <b>&pound;1.80&ndash;&pound;2.50 per mile</b>, with a minimum charge for short jobs. We give you a single fixed figure for collection and delivery. See the <a href="/guides/car-recovery-cost/">cost guide</a> for worked examples.</p>
<h2>What you need to arrange</h2>
<ul>
  <li>Keys, and the seller&rsquo;s permission for us to take the car.</li>
  <li>The address, a contact number at each end, and a time window.</li>
  <li>Tell us if it does not start or roll. It changes the kit, not usually the price.</li>
</ul>
HTML
  faq => [
    [ 'Do you deliver anywhere in the UK?', 'Yes. Most work starts or ends around Peterborough, but we collect and deliver across England, Wales and Scotland.' ],
    [ 'Is my car insured while you move it?', 'Recovery operators carry goods-in-transit cover for the vehicle on the bed. Ask on the call and we send you the details of the operator doing your job.' ],
    [ 'Can you move two cars at once?', 'Often, yes. Many of our trucks can carry one car on the bed and tow a second on a dolly or trailer, which brings the price per car down.' ],
  ],
);

svc(
  path => 'auction-collection', label => 'Auction collection', big => 'Auction',
  card => 'Copart, BCA and online auctions. We collect with your lot number and buyer ID.',
  service => 'Auction vehicle collection',
  title => 'Auction Car Collection | Copart Wisbech, BCA Peterborough &amp; UK-wide',
  description => 'Bought at Copart, BCA or another auction? We collect from Copart Wisbech, BCA Peterborough and sites across the UK, including non-runners. Fixed price. Call {{PHONE}}.',
  h1 => 'Auction collection, <span>before storage fees bite</span>',
  lead => 'Won a car at auction and the clock on storage charges is ticking? Send us the lot number and the release details and we collect it, runner or not.',
  body => <<'HTML',
<h2>Local auction sites we collect from</h2>
<ul>
  <li><b>Copart Wisbech</b>, a big source of salvage and Cat N/S cars in the Fens.</li>
  <li><b>BCA Peterborough</b>, used for dealer and ex-fleet stock.</li>
  <li>Any other Copart, BCA, Manheim or Aston Barclay site in the UK, plus private sellers who listed online.</li>
</ul>
<h2>What we need from you</h2>
<ul>
  <li>The lot or stock number and the site name.</li>
  <li>Your buyer or member number, and proof the car is paid for.</li>
  <li>The release or collection note, if the site issues one, and any booking slot.</li>
  <li>Whether the car is listed as a non-runner, has keys, or has damage that stops it rolling.</li>
</ul>
<p>Read the <a href="/guides/collecting-a-car-from-auction/">auction collection guide</a> for the full checklist, including how storage charges usually work.</p>
HTML
  faq => [
    [ 'Can you collect a non-runner from Copart?', 'Yes. Salvage cars are what our trucks do every week. Tell us if the wheels are locked or the car has no keys and the driver brings skates and a winch.' ],
    [ 'Can you collect the same day?', 'Often, if you call in the morning and the site allows same-day collection. Some sites need a booking, so check your release email.' ],
  ],
);

svc(
  path => 'non-runner-transport', label => 'Non-runner transport', big => 'Non-runner',
  card => 'MOT failure, project car, SORN car or scrap. Moved on a flatbed with a winch.',
  service => 'Non-running vehicle transport',
  title => 'Non-Runner Car Transport Peterborough | MOT Fails, Projects, Scrap',
  description => 'Need to move a car that will not run? We collect non-runners, MOT failures, project and SORN cars from Peterborough and around, and deliver to a garage, buyer or scrap yard.',
  h1 => 'Non-runners, <span>moved properly</span>',
  lead => 'Failed its MOT, sat on the drive for two years, or sold for spares? A car that will not start can still go onto a flatbed. We bring the winch.',
  body => <<'HTML',
<h2>Common non-runner jobs</h2>
<ul>
  <li>An MOT failure going from the test centre to a garage for repairs.</li>
  <li>A project car bought online, collected from a barn or a back garden.</li>
  <li>A SORN car moved to a new address.</li>
  <li>A car going to an authorised treatment facility (scrap yard), or to a buyer.</li>
</ul>
<h2>Things that make it harder</h2>
<p>Flat tyres, seized brakes, a locked steering column, a car boxed in by others, or a narrow gravel drive. None of these stop us, but tell us on the call so the driver comes with the right kit.</p>
<h2>Scrapping it?</h2>
<p>Only an authorised treatment facility can scrap a car and issue a Certificate of Destruction, and you must tell the DVLA. We can deliver it to the ATF you choose. Read <a href="/guides/moving-a-non-runner/">moving a non-runner</a> for the checklist.</p>
HTML
  faq => [
    [ 'Can you move a car with flat tyres?', 'Yes, with skates under the wheels and the winch. Tell us how many tyres are flat when you call.' ],
    [ 'Do you buy cars for scrap?', 'No, we only move them. We can take your car to an authorised treatment facility or to a buyer you have found.' ],
  ],
);

svc(
  path => 'van-recovery', label => 'Van recovery', big => 'Vans',
  card => 'Transits, Sprinters and Vivaros up to 3.5 tonnes. Recovered with the load.',
  service => 'Van recovery',
  title => 'Van Recovery Peterborough | Transit, Sprinter, LWB up to 3.5t, 24/7',
  description => 'Van breakdown and accident recovery in Peterborough and across Cambridgeshire. Transits, Sprinters, LWB vans up to 3.5 tonnes. Fixed price, 24/7. Call {{PHONE}}.',
  h1 => 'Van recovery, <span>load and all</span>',
  lead => 'A broken-down van is lost money every hour. We recover vans up to 3.5 tonnes, long wheelbase included, and get it to your garage or depot fast.',
  body => <<'HTML',
<h2>Vans we recover</h2>
<p>Ford Transit and Transit Custom, Mercedes Sprinter, VW Crafter and Transporter, Vauxhall Vivaro and Movano, Renault Trafic and Master, Citro&euml;n Relay, Peugeot Boxer, Fiat Ducato, and Luton and dropside conversions up to 3.5 tonnes gross.</p>
<h2>Tell us on the call</h2>
<ul>
  <li>Wheelbase and roof height (SWB, MWB, LWB; low or high roof).</li>
  <li>Roughly how much load is on board.</li>
  <li>Whether it rolls and goes into neutral.</li>
</ul>
<p>A loaded LWB van needs a bigger bed than a car. Telling us now means the right truck is sent the first time.</p>
<h2>Trade accounts</h2>
<p>Fleets, couriers and garages around Peterborough&rsquo;s industrial estates can book by WhatsApp and pay on invoice. Ask about it on the call.</p>
HTML
  faq => [
    [ 'Can you recover a van with the load still on it?', 'Usually yes, within the bed&rsquo;s weight limit. Tell us roughly what is on board so we can check before we send a truck.' ],
  ],
);

svc(
  path => 'caravan-transport', label => 'Caravan &amp; trailer moves', big => 'Caravans',
  card => 'Touring caravans and trailers moved between storage, home and site.',
  service => 'Caravan and trailer transport',
  title => 'Caravan Transport Peterborough | Touring Caravans &amp; Trailers Moved',
  description => 'Touring caravan and trailer moves around Peterborough, the Fens and Lincolnshire: storage to home, home to site, or to a dealer. Quote on the call: {{PHONE}}.',
  h1 => 'Caravan &amp; trailer moves',
  lead => 'No tow car, or no confidence towing a caravan on the A47? We move touring caravans and small trailers between storage, home, dealers and caravan sites.',
  body => <<'HTML',
<h2>What we move</h2>
<p>Touring caravans and car trailers that are road legal to tow, using a truck fitted with a tow ball. Twin-axle tourers are fine; we check the weight and length on the call.</p>
<h2>What we do not move</h2>
<p>Static caravans and park homes need specialist haulage and a site crane or tractor, which our network does not do. We can tell you who to ask.</p>
<h2>Before we tow</h2>
<ul>
  <li>The tyres hold air and are not perished. Old caravan tyres often fail on the first long run.</li>
  <li>Lights, breakaway cable and jockey wheel work.</li>
  <li>Inside is packed down and windows and roof lights are shut.</li>
</ul>
HTML
  faq => [
    [ 'Can you tow my caravan to a site for the summer?', 'Yes, and back again at the end of the season. Book both trips together and we fix the price for both.' ],
  ],
);

svc(
  path => 'jump-start', label => 'Jump start', big => 'Jump start',
  card => 'Flat battery on the drive or in a car park. Booster pack, no second car needed.',
  service => 'Battery jump start',
  title => 'Jump Start Peterborough | 24/7 Flat Battery Call-out',
  description => 'Flat battery in Peterborough? A 24/7 jump start with a professional booster pack, at home, at work or in a car park. If it will not start, we recover it. Call {{PHONE}}.',
  h1 => 'Flat battery? <span>Jump start</span>',
  lead => 'Cold morning, car that will not turn over. A driver with a booster pack gets you going, and if it still will not start, the same truck takes the car to a garage.',
  body => <<'HTML',
<h2>When a jump start works</h2>
<p>If the car clicks, the dash flickers or the engine turns over slowly, it is usually the battery. A booster pack will often start it in seconds. Then drive for at least 30 minutes or get the battery tested.</p>
<h2>When it will not</h2>
<p>If there is no click at all, a smell of fuel or burning, or the starter spins without the engine catching, it is likely something else. The driver can load the car and take it to your garage on the same visit.</p>
<h2>Stop-start and hybrids</h2>
<p>Modern cars with stop-start, AGM batteries or hybrid systems have specific jump points. Our drivers use the points in the handbook and a booster with surge protection.</p>
HTML
  faq => [
    [ 'Is a jump start cheaper than recovery?', 'Yes, usually. If the jump fails and we need to recover the car instead, we tell you the difference before loading it.' ],
  ],
);

1;
