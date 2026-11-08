# Extra page-specific content (added 2026-11-08) so no page is thin.
# Each block is appended to the body of the page with that path. Loaded last by build.pl.
use strict;
use warnings;
use utf8;

our %EXTRA = (

# ------------------------------------------------------------ original towns
'car-recovery/stamford' => <<'HTML',
<h2>Breakdowns in Stamford town centre</h2>
<p>Stamford&rsquo;s stone streets were laid out long before cars. St Mary&rsquo;s Hill, Broad Street and the roads around the Meadows are narrow, often lined with parked cars, and a recovery truck can&rsquo;t always stop right beside a broken-down car. If you&rsquo;re stuck in the centre, tell us the street and the nearest shop or pub, and whether the car can be rolled a few metres to a wider spot. The station car park and the larger supermarket car parks are easy places to load.</p>
<h2>Burghley and event days</h2>
<p>When the Burghley Horse Trials run in late summer, and on big event days at Burghley House, traffic on the A1 junctions and the B1081 backs up for miles. Cars overheat and clutches give up in the queues. If that happens to you, get off the road where you can and send us a pin; we&rsquo;ll find the quickest way in.</p>
HTML

'car-recovery/market-deeping-and-bourne' => <<'HTML',
<h2>The A15 and A1175 commute</h2>
<p>Every weekday the A15 carries commuters from Bourne and the Deepings into Peterborough, and the A1175 links Market Deeping with Stamford and the A1. Most of our calls here are early-morning non-starters on driveways and evening breakdowns on these two roads. Both are single carriageway for long stretches, with farm entrances and few lay-bys. If you stop, pull as far onto the verge as you safely can and tell us the nearest village: Northborough, Langtoft, Baston, Thurlby or Bourne.</p>
<h2>Bourne Woods and the A151</h2>
<p>West of Bourne, the A151 climbs towards Corby Glen and the A1 at Colsterworth, past Bourne Woods. It&rsquo;s a quiet road at night. East of Bourne, the A151 runs flat across the fen to Spalding. We cover the whole road in both directions, and take cars to garages in Bourne, the Deepings, Stamford or Peterborough.</p>
HTML

'car-recovery/spalding' => <<'HTML',
<h2>Packhouses, lorries and level crossings</h2>
<p>Spalding is the heart of South Lincolnshire&rsquo;s food and flower industry. Around the town, packhouses and distribution sites run day and night, so the A16, A151 and the roads to Pinchbeck and Weston carry heavy lorry traffic at every hour. A lot of our Spalding calls are workers&rsquo; cars and vans that won&rsquo;t start at the end of a night shift. Tell us the site name and which car park you&rsquo;re in, and whether security needs to let the truck in.</p>
<p>The railway runs through the middle of town, and level crossings can hold traffic for several minutes. If your car stalls near a crossing, get everyone out and well clear, and call 999 if it&rsquo;s on the tracks.</p>
<h2>Springfields and the town centre</h2>
<p>Retail park and town-centre car parks are common pick-ups too. They are easy for a truck to reach, so tell us the car park and row and we&rsquo;ll come straight to you.</p>
HTML

'car-recovery/wisbech' => <<'HTML',
<h2>Copart Wisbech collections</h2>
<p>Copart&rsquo;s salvage auction site near Wisbech brings buyers from all over the country. If you&rsquo;ve won a car there, it usually can&rsquo;t be driven away: it may be damaged, untaxed or a non-runner. We collect it and deliver it to your home, garage or workshop. Have your lot number and release details ready, and check the collection deadline so storage fees don&rsquo;t start. See <a href="/auction-collection/">auction collection</a>.</p>
<h2>The A47 and the Freedom Bridge</h2>
<p>The A47 skirts Wisbech to the south, with busy roundabouts at the junctions for the town and the A1101. In the centre, traffic crosses the Nene at the Freedom Bridge. Breakdowns on the bridge approaches and in the town-centre one-way system are common at rush hour. Tell us the road and which side of the river you&rsquo;re on, and we&rsquo;ll pick the right way in.</p>
HTML

'car-recovery/march-and-whittlesey' => <<'HTML',
<h2>Whittlesey Washes and the B1040</h2>
<p>North of Whittlesey, the B1040 to Thorney crosses the Whittlesey Washes, the flood plain of the Nene. In wet winters the washes fill and the road closes. Never drive into floodwater there: if the car stalls, get out if it&rsquo;s safe and call 999, then call us. A car that has taken in water should not be restarted, as that can wreck the engine.</p>
<h2>March and the A141</h2>
<p>March sits on the A141 between Chatteris and Guyhirn, with the bypass to the west of the town and level crossings on the railway through the centre. Most calls in March are cars that won&rsquo;t start at home, at the station or at the retail parks, and breakdowns on the A141 towards Wimblington and Chatteris. We take cars to garages in March, Whittlesey, Wisbech and Peterborough. See the <a href="/roads/a141-a142/">A141 road guide</a> and the <a href="/roads/a605/">A605</a>.</p>
HTML

'car-recovery/huntingdon' => <<'HTML',
<h2>Huntingdon vehicle recovery after the A14 changes</h2>
<p>Since the new A14 southern bypass opened, the old A14 through Huntingdon has become the A1307, and the viaduct over the railway has gone. Older sat-navs can send drivers the wrong way, and a lot of our calls are from drivers who aren&rsquo;t sure which road they are on. The simplest fix is a WhatsApp location pin: we can see exactly where you are.</p>
<h2>Hinchingbrooke, Brampton and Godmanchester</h2>
<p>We regularly collect cars from Hinchingbrooke Hospital car parks, the business parks at Stukeley Meadows and around Brampton, and the town centre. Godmanchester and Brampton sit right beside the A14 and A1, so breakdowns on the slip roads are common. Tell us the junction, your direction and whether you&rsquo;re on the A14 or the A1. We take cars to Huntingdon garages and dealers, or home anywhere in the UK.</p>
HTML

'car-recovery/st-neots' => <<'HTML',
<h2>The Black Cat roundabout</h2>
<p>South of St Neots, the Black Cat roundabout is where the A1 meets the A421 to Bedford and the A428 towards Cambridge. It is one of the busiest junctions in the region and has been under major roadworks as National Highways rebuilds it. Lanes, slip roads and speed limits change, so tell us exactly where you are: before or after the roundabout, and which road you came from.</p>
<h2>St Neots, Eaton Socon and Little Paxton</h2>
<p>In town, our calls come from the station car park, the riverside car parks, the retail parks and the estates at Loves Farm and Eynesbury. Eaton Socon sits right by the A1, and Little Paxton is just to the north. We take cars to garages in St Neots, Huntingdon or Bedford, or home. See the <a href="/roads/a428/">A428 road guide</a> and the <a href="/roads/a1-a1m/">A1 guide</a>.</p>
HTML

'car-recovery/oundle' => <<'HTML',
<h2>Narrow streets and the A605 bypass</h2>
<p>Oundle&rsquo;s market place and the streets around Oundle School are narrow and busy at school drop-off and pick-up times. If your car stops in the centre, tell us the street, and whether it can be pushed to a wider spot or a car park. Most through traffic uses the A605 bypass, which runs around the east of the town towards Peterborough and Thrapston.</p>
<h2>The Nene valley villages</h2>
<p>The villages around Oundle, from Fotheringhay and Nassington to Polebrook, Barnwell and Titchmarsh, sit on quiet lanes with stone bridges, tight bends and few places to pull in. A truck can reach almost all of them, but it helps to know about low bridges, gated drives or a narrow lane. We take cars from the villages to garages in Oundle, Peterborough or Thrapston. See the <a href="/roads/a605/">A605 road guide</a>.</p>
HTML

'car-recovery/corby' => <<'HTML',
<h2>Corby&rsquo;s industrial estates</h2>
<p>Corby has some of the biggest industrial and distribution estates in the region, around Earlstrees, Willowbrook and the old steelworks land. Shift workers&rsquo; cars that won&rsquo;t start at the end of a night shift are a common call. Tell us the company, the gate and the car park, and whether security needs to let the truck in.</p>
<h2>The A43 and A6003</h2>
<p>The A43 runs north from Corby to Stamford and south to Kettering, with big roundabouts on the dual-carriageway section. The A6003 runs north to Uppingham and Oakham, and south to Kettering. Both carry heavy traffic. If you stop, get everyone out on the safe side, and tell us the road, the direction and the nearest roundabout. We take cars to garages in Corby, Kettering or Stamford. See the <a href="/roads/a43/">A43 road guide</a> and <a href="/car-recovery/kettering/">Kettering</a>.</p>
HTML

'car-recovery/rutland' => <<'HTML',
<h2>Rutland Water and the summer crowds</h2>
<p>On a sunny weekend, Rutland Water fills with walkers, cyclists, anglers and sailors, and the car parks at Whitwell, Sykes Lane and Normanton are packed. A car that won&rsquo;t start after a day out is our most common Rutland call in summer. Tell us which car park you&rsquo;re in and where; car parks are much easier to load from than the roadside.</p>
<h2>Oakham and Uppingham</h2>
<p>Oakham and Uppingham are small market towns with narrow centres and busy school runs. The A606 links Oakham with Stamford and Melton Mowbray, and the A6003 runs between Oakham, Uppingham and Corby. The A47 crosses the south of the county past Uppingham and Morcott, with hills and bends that catch out heavy vehicles and towing drivers. We take cars to garages in Oakham, Uppingham, Stamford or Peterborough, or home.</p>
HTML

# ------------------------------------------------------------------ counties
'car-recovery-cambridgeshire' => <<'HTML',
<h2>Three kinds of driving in one county</h2>
<p>A breakdown on the A1(M) near Peterborough, a car in a fen drain near Ramsey and a flat battery in a Cambridge multi-storey all need different kit. That&rsquo;s why we ask what has happened and where before we quote. On the call we&rsquo;ll ask whether the car rolls, whether it&rsquo;s automatic or electric, and whether there&rsquo;s anything tricky about getting to it, so the truck that turns up has the right winch, skates and straps.</p>
HTML

'car-recovery-lincolnshire' => <<'HTML',
<h2>Long distances, quiet nights</h2>
<p>South Lincolnshire is mostly farmland, with long straight roads between towns and very little lighting at night. A breakdown on the A15, A16 or A17 after dark can leave you a long way from help. Before you call, note the last village you passed and your direction, or send a WhatsApp pin. If you&rsquo;re on a narrow road with a drain alongside, stay out of the car and well away from it while you wait. See <a href="/guides/sharing-your-location/">how to share your location</a>.</p>
HTML

'car-recovery-northamptonshire' => <<'HTML',
<h2>Corby, Kettering and the Nene valley</h2>
<p>North Northamptonshire has two very different sides. Corby and Kettering are busy industrial towns on the A43 and A14, with big estates and lots of shift workers. The Nene valley, from Thrapston through Oundle to Wansford, is a string of stone villages on quiet lanes. We cover both, and the A605 and A43 that link them to Peterborough and Stamford.</p>
<h2>Where we take cars</h2>
<p>Home, a local garage, a main dealer in Kettering, Corby or Peterborough, or storage overnight if your garage is shut. For a car that needs to go further, see <a href="/car-transport/">car transport</a>. See also <a href="/car-recovery/thrapston/">Thrapston</a> and <a href="/car-recovery/kettering/">Kettering</a>.</p>
HTML

# --------------------------------------------------------------------- roads
'roads/a1-a1m' => <<'HTML',
<h2>Peterborough Services and Wansford</h2>
<p>Peterborough Services at junction 17 is the safest place to stop on this stretch if the car is still moving. Tell us where in the car park you are and which fuel station or restaurant you&rsquo;re nearest. North of junction 17 the road becomes the A1, and at Wansford it crosses the A47. The slip roads there are short and busy; if you stop on one, get everyone well clear.</p>
<h2>Long way from home?</h2>
<p>Lots of A1 breakdowns are drivers heading between London, the Midlands and the North. If the car can&rsquo;t be fixed locally, we can take it, and usually you and your passengers, all the way home. You hear the price for the whole trip before we set off.</p>
HTML

'roads/a47' => <<'HTML',
<h2>Uppingham and the Rutland hills</h2>
<p>West of Wansford the A47 climbs through Rutland past Morcott and Uppingham, with steep hills, sharp bends and junctions hidden behind crests. Heavy vehicles and cars towing caravans struggle on the climbs, and clutches and gearboxes give up. If you stop on a hill, get well off the road and tell us which side of Uppingham you&rsquo;re on.</p>
<h2>East to King&rsquo;s Lynn</h2>
<p>Beyond Wisbech the A47 runs on through West Walton and Walpole to King&rsquo;s Lynn and the junction with the A17 and A10. We cover the whole road from Uppingham to King&rsquo;s Lynn, day and night. See <a href="/guides/broken-down-on-the-a47/">broken down on the A47</a>, <a href="/car-recovery/thorney/">Thorney</a>, <a href="/car-recovery/wisbech/">Wisbech</a> and <a href="/car-recovery/kings-lynn/">King&rsquo;s Lynn</a>.</p>
HTML

'roads/a14' => <<'HTML',
<h2>The Huntingdon southern bypass</h2>
<p>The A14 was rerouted south of Huntingdon in 2019 onto a new dual carriageway with three lanes in places and wide hard shoulders. The old road through the town became the A1307. If your sat-nav is out of date, it may not show the new road, so check the road signs and tell us exactly what you can see.</p>
<h2>Thrapston and Kettering</h2>
<p>West of the A1, the A14 runs past Thrapston, where it meets the A605, and on to Kettering and the M1. This stretch is busy with lorries. If you break down here, tell us the junction number and direction.</p>
<h2>What to tell us</h2>
<p>Eastbound or westbound, the last junction, and any marker post number. See <a href="/guides/broken-down-on-the-a14/">broken down on the A14</a>, <a href="/car-recovery/huntingdon/">Huntingdon</a>, <a href="/car-recovery/st-ives/">St Ives</a>, <a href="/car-recovery/thrapston/">Thrapston</a> and <a href="/car-recovery/kettering/">Kettering</a>.</p>
HTML

'roads/a16-a15' => <<'HTML',
<h2>Where the roads meet the towns</h2>
<p>The A15 bypasses Market Deeping, then runs straight through open farmland to Bourne and on to Sleaford. The A16 bypasses Crowland and Spalding, then continues past Sutterton, where it meets the A17, to Boston. Both roads have long, fast stretches between villages, with farm entrances and slow tractors. Overtaking crashes and breakdowns at night are common.</p>
<h2>What to tell us</h2>
<p>The road, your direction and the last village or roundabout you passed. On the A16 it helps to know whether you&rsquo;re north or south of Crowland or Spalding. See <a href="/car-recovery/market-deeping-and-bourne/">Market Deeping &amp; Bourne</a>, <a href="/car-recovery/crowland/">Crowland</a>, <a href="/car-recovery/spalding/">Spalding</a>, <a href="/car-recovery/boston/">Boston</a> and <a href="/car-recovery/sleaford/">Sleaford</a>.</p>
HTML

'roads/peterborough-parkways' => <<'HTML',
<h2>Rush hour on the parkways</h2>
<p>At peak times the parkways slow to a crawl around the busiest junctions, near the Queensgate and city centre exits, Hampton and the A1(M), and Bretton and the hospital. Older cars overheat in the queues, and clutches give up. If the car stops in slow traffic, put the hazards on, get out only if it&rsquo;s safe, and call 999 if you are stuck in a live lane.</p>
<h2>Getting off the parkway</h2>
<p>If the car is losing power, take the next exit rather than stopping on the main carriageway. The roundabouts at the bottom of the slip roads usually have a verge or a layby nearby where a truck can load safely. See <a href="/car-recovery/peterborough/">car recovery in Peterborough</a>.</p>
HTML

'roads/a605' => <<'HTML',
<h2>Elton and Warmington</h2>
<p>Between Oundle and Peterborough, the A605 runs past Elton and Warmington, with junctions to the villages and fast, open stretches between them. It is popular as a quiet alternative to the A14 and A1. Watch for farm traffic and cyclists. We take broken-down cars from here to garages in Oundle or Peterborough, or home.</p>
<h2>Whittlesey town</h2>
<p>Through Whittlesey the A605 follows the town&rsquo;s bypass roads and roundabouts. A car that stops here is usually easy to reach. Tell us the nearest roundabout or junction.</p>
HTML

'roads/a141-a142' => <<'HTML',
<h2>Common problems on fen roads</h2>
<ul>
  <li><b>Cars in drains.</b> In fog, ice or heavy rain, cars leave the road and end up in a verge or a drain. If there&rsquo;s water, get out and call 999 first.</li>
  <li><b>Punctures</b> from farm debris on the edge of the road.</li>
  <li><b>Breakdowns at night</b>, a long way from any lights. Stay well away from the car, with a torch or your phone light on.</li>
</ul>
<p>We&rsquo;ll ask you whether the car is level, on its side or partly in water, so the driver brings the right winch and kit.</p>
HTML

'roads/a17' => <<'HTML',
<h2>The Cross Keys bridge</h2>
<p>At Sutton Bridge the A17 crosses the River Nene on a swing bridge that opens for ships heading to and from Wisbech port. When it opens, traffic queues on both sides, and older cars and vans overheat. If you stop near the bridge, tell us which side of the river you&rsquo;re on: the truck may need to come from the other direction.</p>
<h2>Fosdyke Bridge</h2>
<p>West of Holbeach, the A17 crosses the River Welland at Fosdyke Bridge. It is a busy, exposed spot, and a breakdown there needs moving quickly. Get everyone out and away from the road.</p>
HTML

'roads/a428' => <<'HTML',
<h2>Cambourne and the commute</h2>
<p>Cambourne has grown into a large town beside the A428, and most of its traffic heads into Cambridge each morning. Breakdowns at the Cambourne and Hardwick junctions at rush hour can quickly cause long queues. If the car still moves, come off at the next junction rather than stopping on the dual carriageway.</p>
<h2>Where we take the car</h2>
<p>Home, a garage in St Neots, Cambourne or Cambridge, or a main dealer. Out of hours we can keep the car overnight and deliver it when the garage opens. For long runs, see <a href="/car-transport/">car transport</a>.</p>
HTML

'roads/a10' => <<'HTML',
<h2>Littleport and Southery</h2>
<p>North of Ely, the A10 bypasses Littleport and runs across open fen past Southery and Hilgay, with drains alongside and few lay-bys. Fog is common on autumn and winter mornings. If you stop, get everyone out on the verge side and well away from the car, and keep your hazard lights on.</p>
<h2>Cambridge end</h2>
<p>South of Ely, the A10 carries heavy commuter traffic into Cambridge past Stretham, Waterbeach and Milton. At the Milton interchange it meets the A14. Tell us the nearest village or roundabout. See <a href="/car-recovery/ely/">Ely</a> and <a href="/car-recovery/cambridge/">Cambridge</a>.</p>
HTML

'roads/a43' => <<'HTML',
<h2>Collyweston hill</h2>
<p>South of Stamford the A43 drops down a long, steep hill at Collyweston to the River Welland and the Duddington bridge. Brakes on heavy vehicles and cars towing trailers get hot on the way down, and older cars struggle on the way up. If your car stops on the hill, put the hazards on and get everyone out and well away from the road.</p>
<h2>Kettering end</h2>
<p>Between Corby and Kettering the A43 is a busy dual carriageway with big roundabouts at the junctions for the industrial estates. Breakdowns at rush hour cause long queues. Tell us the roundabout you last passed and your direction, and we&rsquo;ll send the nearest truck.</p>
HTML

# ------------------------------------------------------------------ services
'accident-recovery' => <<'HTML',
<h2>Accident recovery around Peterborough and Huntingdon</h2>
<p>Most of our accident calls come from the A1(M), the A47, the A14 near Huntingdon, the parkways, and junctions on the fen roads. If the police have closed the road, they may use their own contracted recovery firm; once the car is in their yard, we can move it on to your home, your garage or your insurer&rsquo;s approved repairer. If you&rsquo;re free to choose, call us straight from the scene once everyone is safe.</p>
<h2>After the recovery</h2>
<p>Keep our invoice and photos for your insurer. If the accident wasn&rsquo;t your fault, recovery and storage are normally part of your claim against the other driver&rsquo;s insurer. See <a href="/guides/after-a-car-accident/">what to do after a car accident</a>.</p>
HTML

'car-transport' => <<'HTML',
<h2>Car transport from Peterborough to anywhere in the UK</h2>
<p>We move cars from Peterborough, Stamford, Huntingdon and the Fens to anywhere in the UK, and bring cars back here. Common jobs: a car bought online from a private seller, a car for a student or family member, a car to or from a specialist garage, and moving house. Every car travels on a flatbed with wheel straps, so it doesn&rsquo;t add miles or wear.</p>
<h2>What to have ready</h2>
<ul>
  <li>The pick-up and drop-off addresses, and a contact at each end.</li>
  <li>The make, model and whether it runs.</li>
  <li>Keys and any paperwork the person at the other end needs.</li>
</ul>
<p>See also <a href="/dealer-car-transport/">trade and dealer transport</a> and <a href="/classic-car-transport/">classic car transport</a>.</p>
HTML

'auction-collection' => <<'HTML',
<h2>Beat the storage fees</h2>
<p>Most auctions give you a short window after the sale to collect, then charge storage by the day. Book collection as soon as you&rsquo;ve paid. If the car is a non-runner, has damage or the keys are missing, tell us when you book: it changes the kit the driver brings, and the auction may need to load it with a forklift.</p>
<h2>Online auctions</h2>
<p>Many buyers now bid online and never see the car in person. Ask the auction for the release paperwork and any photos, and send them to us. We check the car against the paperwork at collection, take photos, and deliver it to your home, workshop or garage. See <a href="/guides/collecting-a-car-from-auction/">collecting a car from auction</a> and <a href="/car-recovery/wisbech/">Copart Wisbech</a>.</p>
HTML

'non-runner-transport' => <<'HTML',
<h2>Non-runner car transport around Peterborough</h2>
<p>A non-runner might have a dead engine, seized brakes, flat tyres, no keys or a locked steering wheel. None of that stops it being moved. Our operators use a winch to pull a car onto the bed, skates under wheels that won&rsquo;t turn, and a tow dolly where needed. Send us a photo and tell us what you know, and we&rsquo;ll price it properly.</p>
<h2>Common pick-up places</h2>
<p>Driveways, garages, back gardens and farm buildings, auction sites, police pounds, and garages that can&rsquo;t fix the car. If the car is in a tight space, such as a garage with a narrow door or a back lane, tell us so the right truck comes. See <a href="/guides/moving-a-non-runner/">how to move a non-runner</a>.</p>
HTML

'van-recovery' => <<'HTML',
<h2>Van recovery in Peterborough and on the A1(M)</h2>
<p>Most van calls come from tradespeople and delivery drivers whose working day stops when the van does. We recover vans up to 3.5 tonnes: panel vans, Lutons, tippers, pick-ups and minibuses, from the A1(M), the A47, the parkways and industrial estates across Peterborough. Tell us the make, wheelbase and roof height, and how much load is on board.</p>
<h2>Loaded vans</h2>
<p>A fully loaded van may be over its weight limit for the truck, or the load may need to be secured first. Where we can, we take the van with its load. If it&rsquo;s too heavy, we&rsquo;ll tell you before we set off. Tools and stock stay locked in the van, and we deliver it to your yard, your garage or a commercial dealer.</p>
HTML

'caravan-transport' => <<'HTML',
<h2>When you need caravan or trailer transport</h2>
<ul>
  <li>Your tow car has broken down with the caravan attached.</li>
  <li>The caravan needs taking to a dealer or workshop for a service or repair.</li>
  <li>You&rsquo;ve bought a caravan or trailer and don&rsquo;t have a suitable tow car.</li>
  <li>A trailer has a broken axle, wheel bearing or hitch.</li>
</ul>
<p>Tell us the length, weight and type of hitch, whether the brakes and lights work, and where it needs to go. We&rsquo;ll tell you straight away whether we can take it.</p>
<h2>Broken down while towing</h2>
<p>If your tow car breaks down on the A1, the A47 or the A17 to the coast, we can arrange to move the car and the caravan. See also <a href="/motorhome-recovery/">motorhome and campervan recovery</a>.</p>
HTML

'jump-start' => <<'HTML',
<h2>Jump start service across Peterborough</h2>
<p>A flat battery is the most common reason a car won&rsquo;t start, especially on cold mornings and after a car has stood for a week or more. We send an operator with a professional jump pack to your home, workplace or car park, across Peterborough, the Deepings, Stamford, Yaxley, Thorney and the villages around them.</p>
<h2>Why batteries go flat</h2>
<ul>
  <li>The car hasn&rsquo;t been driven for a while.</li>
  <li>Lights or an accessory were left on.</li>
  <li>Lots of short trips that never recharge the battery.</li>
  <li>An old battery: most last around four to six years.</li>
  <li>A charging fault, if the battery goes flat again after a drive.</li>
</ul>
<p>If the car starts after a jump but the battery warning light stays on, don&rsquo;t drive far. See <a href="/guides/car-wont-start/">car won&rsquo;t start</a>.</p>
HTML

'dealer-car-transport' => <<'HTML',
<h2>Who we work with</h2>
<p>Independent dealers and used car lots, franchised dealers needing an extra truck, bodyshops and accident repair centres, MOT stations and garages, and online car sellers delivering to customers. Moves are usually between Peterborough, Stamford, Huntingdon, Spalding and the surrounding towns, and to and from auctions such as Copart at Wisbech.</p>
<h2>Condition reports</h2>
<p>On request, the driver photographs the car at collection and delivery and notes any existing damage, so there&rsquo;s a clear record for you and your customer. Tell us at booking if you need this.</p>
HTML

'classic-car-transport' => <<'HTML',
<h2>Covered and open transport</h2>
<p>Most classics travel on an open flatbed, strapped by the wheels, which suits short and medium runs. If your car is very valuable or the journey is long, ask about covered transport, and we&rsquo;ll tell you honestly what we can arrange. Either way, the car is loaded slowly and checked before it leaves.</p>
HTML

'motorhome-recovery' => <<'HTML',
<h2>Holiday routes through our area</h2>
<p>Thousands of campervans and motorhomes pass through on the way to the Norfolk and Lincolnshire coast every summer, along the A47, A17, A16 and A52. Breakdowns are often overheating on hot days, clutch problems on fully loaded vans, and flat leisure or starter batteries after a few days parked up.</p>
HTML

# -------------------------------------------------------------------- guides
'guides/moving-a-non-runner' => <<'HTML',
<h2>Paperwork for a non-runner</h2>
<p>A car that isn&rsquo;t being used or kept on a public road can be declared SORN with DVLA. If you&rsquo;re selling it, the buyer needs the V5C new keeper slip. If it&rsquo;s going for scrap, it must go to an authorised treatment facility, which should give you a certificate of destruction; tell DVLA. Moving a SORN or untaxed car on a recovery truck is fine, as it isn&rsquo;t being driven on the road.</p>
<h2>What to send us</h2>
<p>A photo of the car and where it&rsquo;s parked, whether the wheels turn, and whether the keys are available. That&rsquo;s enough for a firm price. See <a href="/non-runner-transport/">non-runner transport</a>.</p>
HTML

'guides/collecting-a-car-from-auction' => <<'HTML',
<h2>Damaged and Cat N or Cat S cars</h2>
<p>Many salvage auction cars are insurance write-offs. A Cat N car has non-structural damage; a Cat S car has structural damage. Both can be repaired and put back on the road, but they usually can&rsquo;t be driven away from the auction. Some have airbag lights on, missing keys or flat tyres. Tell us what the auction listing says, and send us the photos, so the driver brings the right kit.</p>
HTML

'guides/broken-down-on-the-a47' => <<'HTML',
<h2>Lorries and narrow verges</h2>
<p>East of Peterborough, the A47 carries heavy goods traffic to and from King&rsquo;s Lynn and the Norfolk ports. Lorries pass very close to a car stopped on the verge, and the draught can be strong. That&rsquo;s why it matters to get everyone out and well away from the car, not standing beside it. If you have a hi-vis vest, put it on.</p>
HTML

'guides/broken-down-on-the-a14' => <<'HTML',
<h2>After you&rsquo;ve called us</h2>
<p>Stay behind the barrier until the truck arrives. The driver will call you when they are close and may ask you to switch on your hazard lights so they can spot the car. If the police or National Highways traffic officers arrive first, follow their instructions; they may move the car to a safer place before we get there. Once the car is loaded, we take it home, to your garage, or to a dealer anywhere in the UK.</p>
<h2>Heading home from the east coast?</h2>
<p>Lots of A14 breakdowns are drivers heading to or from Felixstowe, Cambridge or the Midlands. If you&rsquo;re a long way from home, we can take the car and you all the way back. See <a href="/car-transport/">car transport</a>.</p>
HTML

'guides/car-overheating' => <<'HTML',
<h2>Checking the coolant once it&rsquo;s cool</h2>
<p>When the engine has fully cooled, open the bonnet and find the coolant expansion tank, a plastic bottle with MIN and MAX marks. If the level is below MIN, top it up with the right coolant mix, or with water to get you to a garage. If it&rsquo;s empty, or you can see coolant leaking under the car, don&rsquo;t drive it: the engine will overheat again within minutes.</p>
<h2>Preventing it</h2>
<p>Check the coolant level regularly, and get any small leaks or a fan that isn&rsquo;t working fixed before summer. Most overheating calls we get happen on the first hot weekend of the year, in queues on the A1 and the roads to the coast.</p>
HTML

# ---------------------------------------------------------------------- hubs
'services' => <<'HTML',
<h2>Not sure which service you need?</h2>
<p>Just call and tell us what has happened and where the vehicle is. Breakdown, crash, non-runner, auction car or a planned move: the operator who comes out will have a flatbed, a winch, skates and soft straps, and the price is agreed on the phone before anyone sets off. We work across Peterborough, Cambridgeshire, South Lincolnshire, Rutland and North Northamptonshire, 24 hours a day.</p>
HTML

'car-recovery' => <<'HTML',
<h2>How far do we cover?</h2>
<p>Our base is Peterborough, so the city, the Fenland towns, Stamford, the Deepings and Huntingdon are usually quickest to reach. Further out, such as Cambridge, King&rsquo;s Lynn, Boston, Grantham and Kettering, it takes longer, and we tell you honestly how long on the call. For planned transport, we go anywhere in the UK.</p>
HTML

'roads' => <<'HTML',
<h2>Why road guides?</h2>
<p>The quickest way to get a truck to you is to tell us exactly where you are. On the A1(M) that means the junction and direction; on a fen road it might mean the last village and a WhatsApp pin. Each guide lists the junctions, landmarks and lay-bys that help the driver find you, plus what to do while you wait. See also <a href="/guides/sharing-your-location/">how to share your location</a>.</p>
HTML

);

for my $p (@main::PAGES) {
  my $x = $EXTRA{ $p->{path} // '' } or next;
  $p->{body} .= "\n$x";
  delete $EXTRA{ $p->{path} };
}
die "extra.pl: no page for @{[ join ', ', sort keys %EXTRA ]}\n" if %EXTRA;

1;
