# More town pages (added 2026-11-08), built with town() from places.pl.
# Loaded after places.pl, so the villages listed here now forward to these pages.
use strict;
use warnings;
use utf8;

town(
  slug => 'thorney', name => 'Thorney', big => 'PE6', county => 'Cambridgeshire',
  card => 'A47 east of Peterborough, Thorney Toll and the B1040.',
  title => 'Car Recovery Thorney | 24/7 Breakdown Recovery on the A47',
  description => '24/7 car and van recovery in Thorney and Thorney Toll, on the A47 between Peterborough and Wisbech. Price agreed before we set off. Call {{PHONE}}.',
  lead => 'Thorney sits on the A47 halfway between Peterborough and Wisbech. Break down here and you are on one of the busiest single-carriageway lorry routes in the Fens.',
  intro => <<'HTML',
<p>Thorney is a small town with a big road through it. The A47 bypasses the centre, but traffic between Peterborough, Wisbech and King&rsquo;s Lynn passes within a few hundred metres of the abbey, and most of it is heavy goods. East of the town the road runs straight across open fen to Thorney Toll and Guyhirn, with drains on both sides and very few lay-bys.</p>
<h2>What we see around Thorney</h2>
<ul>
  <li>Cars and vans stopped on the A47 verge between Eye and Thorney, where the road is narrow and fast.</li>
  <li>Breakdowns on the B1040 to Whittlesey and Crowland, a quiet fen road with sharp bends at the drains.</li>
  <li>Cars that won&rsquo;t start on driveways and in the village centre, especially on cold mornings.</li>
  <li>Farm and work vans with a flat battery or a fuel problem on the droves.</li>
</ul>
<p>If you stop on the A47, get everyone out on the verge side, well away from the car, and call 999 if it is stuck in a live lane. Then call us with which side of Thorney you are on: towards Peterborough or towards Wisbech.</p>
HTML
  roads => [
    '<b>A47</b> from Eye past Thorney to Thorney Toll and Guyhirn',
    '<b>B1040</b> south to Whittlesey and north to Crowland',
    '<b>B1167</b> and the fen droves towards Newborough',
    '<b>A16</b> at Eye for Crowland and Spalding',
  ],
  near => [ 'Thorney Toll', 'Eye', 'Eye Green', 'Newborough', 'Crowland', 'Whittlesey', 'Guyhirn', 'Parson Drove' ],
  villages => [qw(thorney thorney-toll)],
  faq => [
    [ 'Do you cover Thorney at night?', 'Yes, 24 hours a day. Thorney is close to Peterborough, so a truck can usually reach you quickly. We give you an honest arrival time on the call.' ],
    [ 'I have broken down on the A47 near Thorney. Where should I wait?', 'Off the road and away from the car, on the verge side. If there is a barrier, get behind it. If the car is in a live lane and you cannot move it, call 999 first.' ],
  ],
);

town(
  slug => 'yaxley', name => 'Yaxley &amp; Farcet', big => 'PE7', county => 'Cambridgeshire',
  card => 'South of Peterborough, the A15 and A1(M) junction 16.',
  title => 'Car Recovery Yaxley &amp; Farcet | 24/7 Breakdown Recovery',
  description => '24/7 car recovery in Yaxley, Farcet, Norman Cross and Great Haddon, by the A15 and A1(M) J16 south of Peterborough. Call {{PHONE}}.',
  lead => 'Yaxley and Farcet sit just south of Peterborough, between the A1(M) and the fens. Close to the city, so a truck is rarely far away.',
  intro => <<'HTML',
<p>Yaxley has grown into one of the biggest villages in the area, and with Hampton and the new homes at Great Haddon next door, a lot of traffic heads up the A15 London Road into Peterborough every morning. Farcet sits to the east, on the edge of the fen, with long straight roads out towards Holme and Whittlesey.</p>
<h2>What we see around Yaxley</h2>
<ul>
  <li>Breakdowns at the A1(M) junction 16 at Norman Cross, on the slip roads and the roundabout.</li>
  <li>Cars that won&rsquo;t start on the estates, where we need to know if the car is in a tight space or a garage.</li>
  <li>Breakdowns on the A15 between Yaxley and the Fletton Parkway at rush hour.</li>
  <li>Fen roads towards Holme, Farcet Fen and Pondersbridge, with drains beside the road.</li>
</ul>
<p>Because Yaxley is close to the city, we often take cars to a Peterborough garage or dealer the same day. Tell us where the car needs to go and whether the garage is open.</p>
HTML
  roads => [
    '<b>A1(M)</b> junction 16 at Norman Cross',
    '<b>A15</b> London Road to Hampton and the Fletton Parkway',
    '<b>B1091</b> Farcet to Stanground and Holme',
    '<b>B1043</b> south to Stilton and Sawtry',
  ],
  near => [ 'Farcet', 'Norman Cross', 'Great Haddon', 'Hampton', 'Holme', 'Folksworth', 'Stanground' ],
  villages => [qw(yaxley farcet norman-cross holme)],
  faq => [
    [ 'Can you take my car from Yaxley to a garage in Peterborough?', 'Yes. Tell us which garage and check they are open. Out of hours, we can take it home or keep it overnight and deliver in the morning.' ],
  ],
);

town(
  slug => 'crowland', name => 'Crowland', big => 'PE6', county => 'Lincolnshire',
  card => 'The A16 bypass, the B1040 and the fen roads to Spalding.',
  title => 'Car Recovery Crowland | 24/7 Breakdown Recovery on the A16',
  description => '24/7 car and van recovery in Crowland, on the A16 between Peterborough and Spalding and the B1040 to Thorney. Price agreed before we set off. Call {{PHONE}}.',
  lead => 'Crowland is on the A16 between Peterborough and Spalding, out on the fen where roads are long, straight and dark at night.',
  intro => <<'HTML',
<p>Crowland is best known for its abbey and the three-way Trinity Bridge in the town centre. Most traffic passes on the A16 bypass, a fast single carriageway that runs from the A47 at Eye to Spalding. It used to be called the A1073, and some older sat-navs still show it that way.</p>
<h2>What we see around Crowland</h2>
<ul>
  <li>Cars stopped on the A16, where lay-bys are few and the verges drop into ditches.</li>
  <li>Breakdowns on the B1040 to Thorney and the fen droves towards Cowbit and Deeping St Nicholas.</li>
  <li>Vans and pick-ups used for farm and packhouse work with flat batteries or fuel problems.</li>
  <li>Cars that have slid into a ditch on a wet or icy night and need winching out.</li>
</ul>
<p>If your car has gone into a dyke, don&rsquo;t try to drive it out. Get everyone safe, call 999 if anyone is hurt or the car is in water, and then call us. We send a truck with a winch.</p>
HTML
  roads => [
    '<b>A16</b> from Eye past Crowland to Spalding (the old A1073)',
    '<b>B1040</b> south to Thorney and Whittlesey',
    '<b>B1166</b> west to Deeping St James and Market Deeping',
    '<b>A47</b> at Eye, for Peterborough and Wisbech',
  ],
  near => [ 'Cowbit', 'Deeping St Nicholas', 'Eye', 'Thorney', 'Postland', 'Peakirk' ],
  villages => [qw(crowland)],
  faq => [
    [ 'Can you pull a car out of a ditch near Crowland?', 'Yes. Tell us how far down it is and whether it is in water, and send a photo if you can, so the driver brings the right winch and straps.' ],
  ],
);

town(
  slug => 'holbeach', name => 'Holbeach', big => 'PE12', county => 'Lincolnshire',
  card => 'The A17 and A151, Fleet, Gedney and Whaplode.',
  title => 'Car Recovery Holbeach | 24/7 Breakdown Recovery, A17 &amp; A151',
  description => '24/7 car and van recovery in Holbeach, Fleet, Gedney and Whaplode, on the A17 and A151 in South Holland. Price agreed before we set off. Call {{PHONE}}.',
  lead => 'Holbeach sits between Spalding and Long Sutton, where the A17 carries a constant stream of lorries across South Lincolnshire.',
  intro => <<'HTML',
<p>Holbeach is a market town in the middle of South Holland&rsquo;s farmland and bulb fields. The A17 bypasses it to the north, and the A151 runs west through Whaplode and Moulton to Spalding. Both carry heavy food and farm traffic all year, and in the dark the long straight stretches are fast and unlit.</p>
<h2>What we see around Holbeach</h2>
<ul>
  <li>Breakdowns on the A17, one of the busiest lorry routes in Lincolnshire, with few safe places to stop.</li>
  <li>Vans used by packhouse and farm workers with flat batteries early in the morning.</li>
  <li>Cars stopped on the long fen roads to Holbeach St Johns, Holbeach Drove and Gedney Hill.</li>
  <li>Accidents at junctions with the A17, where traffic pulls out across fast lanes.</li>
</ul>
<p>On the A17, get the car as far onto the verge as you can and get everyone out on the side away from the traffic. Tell us the nearest village or junction: Fleet Hargate, Holbeach, Gedney or Long Sutton.</p>
HTML
  roads => [
    '<b>A17</b> from Sutterton past Holbeach to Long Sutton',
    '<b>A151</b> west through Whaplode and Moulton to Spalding',
    '<b>B1168</b> south to Holbeach St Johns and Holbeach Drove',
    '<b>B1515</b> and the roads to Gedney Hill',
  ],
  near => [ 'Fleet', 'Fleet Hargate', 'Gedney', 'Gedney Hill', 'Whaplode', 'Whaplode Drove', 'Holbeach St Johns', 'Holbeach Bank', 'Saracen&rsquo;s Head' ],
  villages => [qw(holbeach holbeach-bank holbeach-clough holbeach-drove holbeach-st-johns fleet fleet-hargate gedney gedney-hill saracens-head whaplode whaplode-drove whaplode-st-catherine)],
  faq => [
    [ 'Do you recover vans from Holbeach?', 'Yes, vans up to 3.5 tonnes. Tell us the size and how much is on board, so we send the right truck.' ],
  ],
);

town(
  slug => 'long-sutton', name => 'Long Sutton &amp; Sutton Bridge', big => 'PE12', county => 'Lincolnshire',
  card => 'The A17, the Cross Keys bridge and the road to King&rsquo;s Lynn.',
  title => 'Car Recovery Long Sutton &amp; Sutton Bridge | 24/7 on the A17',
  description => '24/7 car recovery in Long Sutton, Sutton Bridge and Tydd St Mary, on the A17 and the Cross Keys bridge. Price agreed upfront. Call {{PHONE}}.',
  lead => 'Long Sutton and Sutton Bridge sit on the A17 at the eastern edge of Lincolnshire, where the road crosses the River Nene towards King&rsquo;s Lynn.',
  intro => <<'HTML',
<p>The A17 runs past Long Sutton and over the Nene at Sutton Bridge on the Cross Keys swing bridge, then on to the A47 near King&rsquo;s Lynn. When the bridge swings open for shipping, traffic queues, and older cars overheat in the queue. South of the towns, the A1101 heads across the fen to Wisbech.</p>
<h2>What we see around Long Sutton</h2>
<ul>
  <li>Breakdowns on the A17 between Gedney and Sutton Bridge, a fast road with heavy lorries.</li>
  <li>Cars that overheat or stall in the queue for the Cross Keys bridge.</li>
  <li>Breakdowns on the A1101 to Wisbech and the roads to Tydd St Mary and Tydd Gote.</li>
  <li>Cars that need taking to a garage in Wisbech, Spalding or King&rsquo;s Lynn.</li>
</ul>
<p>If the car stops on or near the bridge, put the hazards on and stay safe. If it blocks the road, call 999. Then call us, and tell us which side of the river you are on.</p>
HTML
  roads => [
    '<b>A17</b> from Gedney past Long Sutton to Sutton Bridge',
    '<b>Cross Keys bridge</b> over the River Nene at Sutton Bridge',
    '<b>A1101</b> south to Wisbech',
    '<b>A17</b> east to the A47 near King&rsquo;s Lynn',
  ],
  near => [ 'Sutton Bridge', 'Tydd St Mary', 'Tydd Gote', 'Gedney Drove End', 'Lutton', 'Sutton St James', 'Walpole' ],
  faq => [
    [ 'The Cross Keys bridge is open and my car has overheated. What should I do?', 'Switch off, put the hazards on and let it cool. Don&rsquo;t open a hot radiator cap. If it won&rsquo;t restart, or if it is blocking traffic, call us with which side of the river you are on.' ],
  ],
);

town(
  slug => 'sawtry', name => 'Sawtry &amp; Stilton', big => 'PE28', county => 'Cambridgeshire',
  card => 'A1(M) junction 15, the B1043 and Great Fen villages.',
  title => 'Car Recovery Sawtry &amp; Stilton | 24/7 A1(M) J15 Recovery',
  description => '24/7 car recovery in Sawtry, Stilton, Glatton and Conington, by the A1(M) junction 15 south of Peterborough. Price agreed before we set off. Call {{PHONE}}.',
  lead => 'Sawtry and Stilton sit right beside the A1(M) south of Peterborough. Many of our calls here start with a car on the motorway.',
  intro => <<'HTML',
<p>Junction 15 of the A1(M) serves Sawtry, and the old Great North Road, now the B1043, runs through Stilton parallel to the motorway. To the east lies the Great Fen, with long straight roads past Holme Fen and Woodwalton Fen. Traffic is light, but the roads are narrow and unlit.</p>
<h2>What we see around Sawtry</h2>
<ul>
  <li>Breakdowns on the A1(M) between junctions 14 and 16, northbound and southbound.</li>
  <li>Cars on the B1043 through Stilton and Sawtry, often after coming off the motorway with a warning light.</li>
  <li>Breakdowns on the fen roads to Holme, Conington and Woodwalton.</li>
  <li>Cars that won&rsquo;t start in Sawtry village and at the business parks by the junction.</li>
</ul>
<p>If a warning light comes on on the A1(M), coming off at junction 15 into Sawtry is far safer than stopping on the hard shoulder. Pull into a safe spot in the village and call us. See the <a href="/roads/a1-a1m/">A1(M) junction guide</a>.</p>
HTML
  roads => [
    '<b>A1(M)</b> junction 15 at Sawtry, between J14 Alconbury and J16 Norman Cross',
    '<b>B1043</b> the old Great North Road through Stilton and Sawtry',
    '<b>B1090</b> east towards Woodwalton and Ramsey',
    'Fen roads to <b>Holme</b>, <b>Conington</b> and <b>Glatton</b>',
  ],
  near => [ 'Stilton', 'Glatton', 'Conington', 'Folksworth', 'Holme', 'Woodwalton', 'Alconbury', 'Caldecote' ],
  villages => [qw(sawtry stilton glatton coppingford caldecote denton)],
  faq => [
    [ 'I have broken down on the A1(M) near Sawtry. How do I tell you where I am?', 'Give us your direction (northbound or southbound), the last junction you passed and any marker post number, or send a WhatsApp location pin.' ],
  ],
);

town(
  slug => 'ramsey', name => 'Ramsey &amp; Warboys', big => 'PE26', county => 'Cambridgeshire',
  card => 'Fen roads, the B1040 and B1096, Ramsey Forty Foot.',
  title => 'Car Recovery Ramsey &amp; Warboys | 24/7 Fen Breakdown Recovery',
  description => '24/7 car recovery in Ramsey, Warboys, Ramsey Forty Foot and Ramsey St Mary&rsquo;s, on the fen roads between Huntingdon, Whittlesey and Chatteris. Call {{PHONE}}.',
  lead => 'Ramsey is a fen town without a main road, which means every recovery here starts on a narrow road with water beside it.',
  intro => <<'HTML',
<p>Ramsey grew up around its abbey on an island in the fen. Today the roads in are long and narrow: the B1040 north to Pondersbridge and Whittlesey, the B1096 south to Warboys and the A141, and the lanes east to Ramsey Forty Foot and Ramsey St Mary&rsquo;s. The Forty Foot Drain runs right beside the road for miles.</p>
<h2>What we see around Ramsey</h2>
<ul>
  <li>Cars that have slid off a fen road into a verge or a drain, especially at night and in frost.</li>
  <li>Breakdowns on the B1040 and the road along the Forty Foot, where there is nowhere to pull in.</li>
  <li>Cars that won&rsquo;t start in Ramsey, Warboys and Bury.</li>
  <li>Breakdowns on the A141 between Warboys and Chatteris.</li>
</ul>
<p>Fen roads are hard to describe. A WhatsApp location pin or a what3words address saves a lot of time. If the car is in water, get out and call 999 first.</p>
HTML
  roads => [
    '<b>B1040</b> north to Pondersbridge and Whittlesey',
    '<b>B1096</b> south to Warboys and the A141',
    'The <b>Forty Foot</b> road east to Ramsey Forty Foot and Chatteris',
    '<b>A141</b> past Warboys between Huntingdon and Chatteris',
  ],
  near => [ 'Warboys', 'Bury', 'Upwood', 'Ramsey Forty Foot', 'Ramsey St Mary&rsquo;s', 'Ramsey Heights', 'Pondersbridge', 'Wistow' ],
  villages => [qw(ramsey ramsey-forty-foot ramsey-heights ramsey-hollow ramsey-mereside ramsey-st-marys upwood great-raveley little-raveley bury wistow warboys pondersbridge)],
  faq => [
    [ 'My car is in a ditch near Ramsey. Can you get it out?', 'Yes, with a winch. If anyone is hurt or the car is in water, call 999 first. Then send us a photo and your location.' ],
  ],
);

town(
  slug => 'st-ives', name => 'St Ives', big => 'PE27', county => 'Cambridgeshire',
  card => 'The A1096, A1123 and the A14 near Huntingdon.',
  title => 'Car Recovery St Ives | 24/7 Breakdown Recovery, A14 &amp; A1096',
  description => '24/7 car recovery in St Ives, Somersham, Fenstanton and Hemingford Grey, on the A1096, A1123 and A14 in Huntingdonshire. Call {{PHONE}}.',
  lead => 'St Ives sits on the Great Ouse east of Huntingdon, between the A14 and the fen roads to Somersham and Chatteris.',
  intro => <<'HTML',
<p>St Ives is a busy market town with an old bridge over the Great Ouse, a guided busway to Cambridge and a ring of new estates. The A1096 links it to the A14, and the A1123 runs east through Bluntisham and Earith towards Ely. Traffic backs up on the approaches at rush hour and on market days.</p>
<h2>What we see around St Ives</h2>
<ul>
  <li>Breakdowns on the A14 near Fenstanton and Swavesey, and on the A1096 link road.</li>
  <li>Cars stuck in town-centre and supermarket car parks.</li>
  <li>Breakdowns on the A1123 to Earith and the fen roads to Somersham, Pidley and Old Hurst.</li>
  <li>Commuter cars that won&rsquo;t start at the park and ride or at business parks.</li>
</ul>
<p>The Earith road floods at times when the Ouse Washes are high. Never drive into floodwater: if the car stalls in it, get out if it is safe and call 999, then call us.</p>
HTML
  roads => [
    '<b>A14</b> past Fenstanton and Swavesey',
    '<b>A1096</b> from the A14 into St Ives',
    '<b>A1123</b> east through Bluntisham and Earith, and west to Houghton',
    '<b>B1040</b> north to Somersham and Pidley',
  ],
  near => [ 'Somersham', 'Fenstanton', 'Hemingford Grey', 'Hemingford Abbots', 'Houghton', 'Bluntisham', 'Earith', 'Pidley', 'Old Hurst', 'Woodhurst' ],
  villages => [qw(woodhurst old-hurst pidley somersham)],
  faq => [
    [ 'Do you cover St Ives as well as Huntingdon?', 'Yes. St Ives has its own page because many calls come from here. See also <a href="/car-recovery/huntingdon/">Huntingdon</a>.' ],
  ],
);

town(
  slug => 'chatteris', name => 'Chatteris', big => 'PE16', county => 'Cambridgeshire',
  card => 'The A141 and A142, between March, Ely and Huntingdon.',
  title => 'Car Recovery Chatteris | 24/7 Breakdown Recovery, A141 &amp; A142',
  description => '24/7 car and van recovery in Chatteris and the villages around it, on the A141 to March and Huntingdon and the A142 to Ely. Call {{PHONE}}.',
  lead => 'Chatteris sits where the A141 and A142 meet, in the middle of the fen. It is a long way between towns out here, and that is when you want a truck already nearby.',
  intro => <<'HTML',
<p>Chatteris is a small fen town at a busy crossroads. The A141 runs north to March and Guyhirn and south-west to Warboys and Huntingdon. The A142 heads south-east to Sutton, Ely and Newmarket. Long straight stretches with drains on both sides make up most of these roads.</p>
<h2>What we see around Chatteris</h2>
<ul>
  <li>Breakdowns on the A141 between Chatteris and March, a busy single carriageway.</li>
  <li>Cars stopped on the A142 towards Ely, often at night.</li>
  <li>Cars that have slid off a fen road into a verge or drain.</li>
  <li>Breakdowns at the Chatteris bypass roundabouts and in the town.</li>
</ul>
<p>Out on the fen, a WhatsApp pin or what3words address is the quickest way for the driver to find you. Tell us which way you were heading.</p>
HTML
  roads => [
    '<b>A141</b> north to March and south-west to Warboys and Huntingdon',
    '<b>A142</b> south-east to Sutton, Ely and Newmarket',
    'The <b>Forty Foot</b> road west to Ramsey',
    'Fen roads to <b>Manea</b> and <b>Doddington</b>',
  ],
  near => [ 'Doddington', 'Wimblington', 'Manea', 'Somersham', 'Sutton', 'Mepal', 'Warboys' ],
  villages => [qw(chatteris horseway)],
  faq => [
    [ 'Can you take my car from Chatteris to a garage in March or Ely?', 'Yes. Tell us which garage and check they are open. Out of hours, we can take it home or keep it overnight.' ],
  ],
);

town(
  slug => 'ely', name => 'Ely', big => 'CB7', county => 'Cambridgeshire',
  card => 'The A10 and A142, Soham and Littleport.',
  title => 'Car Recovery Ely | 24/7 Breakdown Recovery, A10 &amp; A142',
  description => '24/7 car and van recovery in Ely, Soham, Littleport and Sutton, on the A10 and A142 in East Cambridgeshire. Price agreed before we set off. Call {{PHONE}}.',
  lead => 'Ely sits on its hill above the fen, with the A10 running north to King&rsquo;s Lynn and south to Cambridge, and the A142 crossing east to west.',
  intro => <<'HTML',
<p>The cathedral city of Ely is the centre of East Cambridgeshire. The A10 links it with Cambridge to the south and Littleport, Downham Market and King&rsquo;s Lynn to the north. The A142 runs west to Chatteris and south-east to Soham and Newmarket. The southern bypass carries the A142 over the railway and the river, so traffic no longer waits at the old level crossing.</p>
<h2>What we see around Ely</h2>
<ul>
  <li>Breakdowns on the A10, especially at the busy roundabouts around Ely and on the stretch to Littleport.</li>
  <li>Cars stopped on the A142 between Ely and Chatteris, out on the open fen.</li>
  <li>Cars that won&rsquo;t start in Ely city centre car parks and at the station.</li>
  <li>Commuter cars stuck at Soham, Littleport and the villages.</li>
</ul>
<p>Ely is further from our Peterborough base than the Fenland towns, so tell us exactly where you are and we&rsquo;ll give you an honest arrival time and the full price on the call.</p>
HTML
  roads => [
    '<b>A10</b> south to Cambridge and north to Littleport and Downham Market',
    '<b>A142</b> west to Sutton and Chatteris, south-east to Soham and Newmarket',
    'The <b>Ely southern bypass</b>',
    '<b>B1382</b> and the fen roads to Prickwillow',
  ],
  near => [ 'Soham', 'Littleport', 'Sutton', 'Witchford', 'Stretham', 'Haddenham', 'Prickwillow', 'Little Downham' ],
  faq => [
    [ 'Do you cover Ely and Soham?', 'Yes. Ely is further from Peterborough than the Fenland towns, so we give you an honest arrival time on the call.' ],
  ],
);

town(
  slug => 'cambridge', name => 'Cambridge', big => 'CB', county => 'Cambridgeshire',
  card => 'The M11, A14, A428 and the city park and rides.',
  title => 'Car Recovery Cambridge | 24/7 Breakdown Recovery &amp; Transport',
  description => '24/7 car and van recovery in Cambridge and around it, on the M11, A14, A428 and A10. Breakdowns, accidents and car transport. Call {{PHONE}}.',
  lead => 'Cambridge is busy, congested and ringed by fast roads. Whether you are stuck on the A14 or in a city car park, we&rsquo;ll get the car moved.',
  intro => <<'HTML',
<p>Cambridge is surrounded by major roads: the A14 to the north, the M11 to the west, the A428 coming in from St Neots and the A10 from Ely. In the city itself, narrow streets, bus gates and busy car parks make a recovery truck&rsquo;s job harder, so a precise location helps a lot.</p>
<h2>What we see around Cambridge</h2>
<ul>
  <li>Breakdowns on the A14 between Huntingdon and the Girton interchange, and on the A14 towards Newmarket.</li>
  <li>Cars stopped on the M11 and at the Girton junction with the A428.</li>
  <li>Cars that won&rsquo;t start in multi-storey car parks, at the park and rides and at the hospital campus.</li>
  <li>Planned transport to and from dealers and garages in the city.</li>
</ul>
<p>For multi-storeys, tell us the car park and floor, so we send a truck that fits under the height barrier or plan to move the car to a level where it can be loaded. See <a href="/guides/stuck-in-a-multi-storey-car-park/">stuck in a multi-storey car park</a>.</p>
HTML
  roads => [
    '<b>A14</b> from Huntingdon to the Girton interchange and on towards Newmarket',
    '<b>M11</b> south of the A14',
    '<b>A428</b> from St Neots and Cambourne',
    '<b>A10</b> north to Ely and south towards Royston',
  ],
  near => [ 'Girton', 'Histon', 'Milton', 'Cambourne', 'Cottenham', 'Trumpington', 'Cherry Hinton', 'Bar Hill', 'Waterbeach' ],
  faq => [
    [ 'Do you cover Cambridge?', 'Yes. Cambridge is further from our Peterborough base than the towns to the north, so we give you an honest arrival time and the full price on the call.' ],
    [ 'Can you collect a car from a Cambridge multi-storey?', 'Usually, yes. Tell us the car park, floor and height barrier, so the right truck comes.' ],
  ],
);

town(
  slug => 'kings-lynn', name => 'King&rsquo;s Lynn', big => 'PE30', county => 'Norfolk',
  card => 'The A47, A17, A10 and A149 around the town.',
  title => 'Car Recovery King&rsquo;s Lynn | 24/7 Breakdown Recovery, A47 &amp; A17',
  description => '24/7 car and van recovery in King&rsquo;s Lynn and West Norfolk, on the A47, A17, A10 and A149. Price agreed before we set off. Call {{PHONE}}.',
  lead => 'King&rsquo;s Lynn is where the A47, A17 and A10 meet. A lot of the traffic heading east from Peterborough and Wisbech ends up here.',
  intro => <<'HTML',
<p>King&rsquo;s Lynn is the main town in West Norfolk, at the mouth of the Great Ouse. The A47 skirts the south of the town on its way from Wisbech to Norwich, the A17 joins from Lincolnshire, the A10 comes in from Downham Market and Ely, and the A149 runs north to Hunstanton and the coast. The big roundabouts where these roads meet are busy at rush hour and in summer.</p>
<h2>What we see around King&rsquo;s Lynn</h2>
<ul>
  <li>Breakdowns on the A47 between Wisbech and King&rsquo;s Lynn, and east towards Swaffham.</li>
  <li>Cars stopped on the A17 from Sutton Bridge, a road with heavy lorry traffic.</li>
  <li>Summer breakdowns on the A149 to Hunstanton, with holiday traffic and caravans.</li>
  <li>Cars that need taking back to Peterborough or further for repair.</li>
</ul>
<p>King&rsquo;s Lynn is at the edge of our patch, so we give you an honest arrival time on the call. For a car that needs to go a long way home, see <a href="/car-transport/">car transport</a>.</p>
HTML
  roads => [
    '<b>A47</b> from Wisbech and west Norfolk, and east to Swaffham',
    '<b>A17</b> from Sutton Bridge and Lincolnshire',
    '<b>A10</b> south to Downham Market and Ely',
    '<b>A149</b> north to Hunstanton and the coast',
  ],
  near => [ 'West Lynn', 'Gaywood', 'South Wootton', 'North Wootton', 'Terrington St Clement', 'Watlington', 'Clenchwarton', 'Walpole St Andrew' ],
  faq => [
    [ 'Do you cover King&rsquo;s Lynn?', 'Yes. It is at the edge of our area, so allow a little longer, and you hear the price before anyone sets off.' ],
  ],
);

town(
  slug => 'downham-market', name => 'Downham Market', big => 'PE38', county => 'Norfolk',
  card => 'The A10 and A1122, Denver and the fen edge.',
  title => 'Car Recovery Downham Market | 24/7 Breakdown Recovery, A10',
  description => '24/7 car recovery in Downham Market, Denver, Hilgay and Stow Bardolph, on the A10 and A1122 in West Norfolk. Price agreed before we set off. Call {{PHONE}}.',
  lead => 'Downham Market sits on the A10 between Ely and King&rsquo;s Lynn, on the edge of the fen and the Norfolk countryside.',
  intro => <<'HTML',
<p>Downham Market is a small market town on the A10, with the A1122 running east towards Swaffham. To the south, Denver sits by the great sluices that control the Fens&rsquo; rivers. Roads west of the town cross the Ouse Washes and the fen towards Upwell and Wisbech, and can flood in winter.</p>
<h2>What we see around Downham Market</h2>
<ul>
  <li>Breakdowns on the A10 between Littleport and King&rsquo;s Lynn, a fast single carriageway.</li>
  <li>Cars stopped on the A1122 towards Swaffham.</li>
  <li>Breakdowns on the fen roads to Upwell, Outwell and Welney, including cars caught in floodwater on the Welney causeway.</li>
  <li>Cars that won&rsquo;t start at the station and in the town centre.</li>
</ul>
<p>Never drive into floodwater on the Welney road. If the car stalls in water, get out if it is safe, call 999, and then call us.</p>
HTML
  roads => [
    '<b>A10</b> north to King&rsquo;s Lynn and south to Littleport and Ely',
    '<b>A1122</b> east towards Swaffham',
    '<b>A1101</b> across the Welney Washes to Upwell and Wisbech',
    'Fen roads to <b>Hilgay</b> and <b>Southery</b>',
  ],
  near => [ 'Denver', 'Hilgay', 'Southery', 'Stow Bardolph', 'Wimbotsham', 'Upwell', 'Outwell', 'Welney' ],
  faq => [
    [ 'My car stalled in floodwater near Welney. Can you recover it?', 'Yes, once it is safe. Don&rsquo;t try to restart it: water in the engine can wreck it. Call 999 if anyone is in danger, then call us.' ],
  ],
);

town(
  slug => 'grantham', name => 'Grantham', big => 'NG31', county => 'Lincolnshire',
  card => 'The A1 north of Stamford, the A52 and A607.',
  title => 'Car Recovery Grantham | 24/7 A1 Breakdown Recovery',
  description => '24/7 car and van recovery in Grantham and on the A1 between Stamford and Newark, plus the A52 and A607. Price agreed before we set off. Call {{PHONE}}.',
  lead => 'Grantham is on the A1 about 20 miles north of Stamford. Lots of our A1 calls come from the stretch between the two.',
  intro => <<'HTML',
<p>Grantham sits just east of the A1, with the A52 running west to Nottingham and east to Boston, and the A607 heading north to Lincoln and south-west to Melton Mowbray. The A1 between Stamford and Grantham passes Colsterworth and Great Ponton, with short slip roads and small lay-bys.</p>
<h2>What we see around Grantham</h2>
<ul>
  <li>Breakdowns on the A1 between Stamford and Grantham, northbound and southbound.</li>
  <li>Cars stopped on the A52 towards Nottingham and Boston.</li>
  <li>Cars that won&rsquo;t start at the station or in town-centre car parks.</li>
  <li>Long recoveries home from the A1 for drivers who live far away.</li>
</ul>
<p>On the A1, tell us your direction and the last place you passed: Colsterworth, Great Ponton or the Grantham junctions. See the <a href="/roads/a1-a1m/">A1 road guide</a>.</p>
HTML
  roads => [
    '<b>A1</b> from Stamford past Colsterworth and Great Ponton',
    '<b>A52</b> west to Nottingham and east towards Boston',
    '<b>A607</b> north to Lincoln and south-west to Melton Mowbray',
    '<b>A151</b> from Colsterworth east to Bourne',
  ],
  near => [ 'Colsterworth', 'Great Ponton', 'Barrowby', 'Harlaxton', 'Corby Glen', 'Ancaster', 'Long Bennington' ],
  faq => [
    [ 'Do you cover the A1 near Grantham?', 'Yes. It is further from our base than Stamford, so we give you an honest arrival time and the full price on the call.' ],
  ],
);

town(
  slug => 'boston', name => 'Boston', big => 'PE21', county => 'Lincolnshire',
  card => 'The A16, A52 and A17 at Sutterton.',
  title => 'Car Recovery Boston | 24/7 Breakdown Recovery, A16 &amp; A52',
  description => '24/7 car and van recovery in Boston, Kirton and Sutterton, on the A16, A52 and the A17 junction at Sutterton. Price agreed before we set off. Call {{PHONE}}.',
  lead => 'Boston sits at the northern end of the A16 from Spalding, under the tower of the Boston Stump. Roads here are long, flat and busy with farm traffic.',
  intro => <<'HTML',
<p>The A16 runs north from Spalding past Sutterton and Kirton into Boston, and on towards Louth. At Sutterton it meets the A17, the main lorry route between the A1 and King&rsquo;s Lynn. The A52 crosses the town east to west, towards Skegness and Grantham. Heavy farm and food traffic uses all of them.</p>
<h2>What we see around Boston</h2>
<ul>
  <li>Breakdowns on the A16 between Spalding and Boston, a long, fast road.</li>
  <li>Cars stopped at or near the Sutterton roundabout, where the A16 and A17 meet.</li>
  <li>Summer breakdowns on the A52 towards Skegness.</li>
  <li>Vans used by farm and packhouse workers with flat batteries.</li>
</ul>
<p>Boston is further from our base than Spalding, so allow a little longer. You hear the price and a realistic arrival time on the call.</p>
HTML
  roads => [
    '<b>A16</b> from Spalding past Sutterton and Kirton',
    '<b>A17</b> at the Sutterton roundabout',
    '<b>A52</b> east towards Skegness and west towards Grantham',
    '<b>A1121</b> and <b>A1138</b> around the town',
  ],
  near => [ 'Kirton', 'Sutterton', 'Swineshead', 'Wyberton', 'Fishtoft', 'Frampton', 'Algarkirk' ],
  faq => [
    [ 'Do you cover Boston?', 'Yes. It&rsquo;s further from our base than Spalding, so allow a little longer. You hear the price before we set off.' ],
  ],
);

town(
  slug => 'sleaford', name => 'Sleaford', big => 'NG34', county => 'Lincolnshire',
  card => 'The A15, A17 and A153, Holdingham roundabout.',
  title => 'Car Recovery Sleaford | 24/7 Breakdown Recovery, A15 &amp; A17',
  description => '24/7 car and van recovery in Sleaford and North Kesteven, on the A15, A17 and A153 and at the Holdingham roundabout. Call {{PHONE}}.',
  lead => 'Sleaford is where the A15 from Bourne meets the A17 from the A1. Roads in every direction are long and fast.',
  intro => <<'HTML',
<p>Sleaford sits at the crossing of two of Lincolnshire&rsquo;s main roads. The A15 runs south to Bourne and Peterborough and north to Lincoln. The A17 runs west to Newark and the A1, and east to Swineshead and the coast. They meet just north of the town at the Holdingham roundabout. The A153 heads south-east towards Billinghay and Horncastle.</p>
<h2>What we see around Sleaford</h2>
<ul>
  <li>Breakdowns on the A15 between Bourne and Sleaford, a long road through open country.</li>
  <li>Cars and vans stopped on the A17, a busy lorry route.</li>
  <li>Breakdowns at or near the Holdingham roundabout.</li>
  <li>Cars that need taking south to Peterborough or Stamford.</li>
</ul>
<p>Sleaford is further from our base, so we give you an honest arrival time. Tell us your road, direction and the last village you passed.</p>
HTML
  roads => [
    '<b>A15</b> south to Bourne and north to Lincoln',
    '<b>A17</b> west to Newark and east to Swineshead',
    '<b>Holdingham roundabout</b> where the A15 and A17 meet',
    '<b>A153</b> towards Billinghay',
  ],
  near => [ 'Holdingham', 'Ruskington', 'Heckington', 'Kirkby la Thorpe', 'Quarrington', 'Leasingham', 'Osbournby' ],
  faq => [
    [ 'Can you take my car from Sleaford to Peterborough?', 'Yes. Tell us where it needs to go and you hear the price before we set off.' ],
  ],
);

town(
  slug => 'kettering', name => 'Kettering', big => 'NN15', county => 'Northamptonshire',
  card => 'The A14, A43, A6 and A509.',
  title => 'Car Recovery Kettering | 24/7 Breakdown Recovery, A14 &amp; A43',
  description => '24/7 car and van recovery in Kettering, Burton Latimer, Rothwell and Desborough, on the A14, A43 and A6. Price agreed upfront. Call {{PHONE}}.',
  lead => 'Kettering sits on the A14 at the crossroads of North Northamptonshire, with the A43 to Corby, the A6 and the A509.',
  intro => <<'HTML',
<p>Kettering is a busy town on the A14, the main lorry route between the M1 and the east coast. The A43 runs north to Corby and Stamford, the A6 runs through Burton Latimer, Rothwell and Desborough, and the A509 heads south to Wellingborough. The A14 junctions around the town are big and busy.</p>
<h2>What we see around Kettering</h2>
<ul>
  <li>Breakdowns on the A14 around Kettering, among heavy freight traffic.</li>
  <li>Cars stopped on the A43 to Corby, a busy dual carriageway with big roundabouts.</li>
  <li>Cars that won&rsquo;t start at the hospital, the station and the retail parks.</li>
  <li>Breakdowns on the A6 through Rothwell and Desborough.</li>
</ul>
<p>On the A14, give us the junction and direction, and get everyone out behind the barrier. Kettering is further from our base than Corby, so we give you an honest arrival time.</p>
HTML
  roads => [
    '<b>A14</b> past Kettering, east to Thrapston and west to the M1',
    '<b>A43</b> north to Corby and Stamford',
    '<b>A6</b> through Burton Latimer, Rothwell and Desborough',
    '<b>A509</b> south to Wellingborough',
  ],
  near => [ 'Burton Latimer', 'Rothwell', 'Desborough', 'Barton Seagrave', 'Broughton', 'Geddington', 'Cranford', 'Isham' ],
  faq => [
    [ 'Do you cover the A14 at Kettering?', 'Yes. Tell us the junction and direction, wait behind the barrier and we&rsquo;ll give you an arrival time.' ],
  ],
);

town(
  slug => 'thrapston', name => 'Thrapston &amp; Raunds', big => 'NN14', county => 'Northamptonshire',
  card => 'Where the A14, A605 and A45 meet.',
  title => 'Car Recovery Thrapston &amp; Raunds | 24/7 on the A14 &amp; A605',
  description => '24/7 car recovery in Thrapston, Raunds, Islip and Titchmarsh, where the A14, A605 and A45 meet in the Nene valley. Price agreed upfront. Call {{PHONE}}.',
  lead => 'Thrapston is where the A605 from Oundle and Peterborough meets the A14 and the A45. A small town at a busy junction.',
  intro => <<'HTML',
<p>Thrapston sits in the Nene valley. The A605 runs north-east to Oundle and Peterborough, the A14 passes on its way between Kettering and Huntingdon, and the A45 heads south-west past Raunds to Wellingborough and Northampton. Many drivers pass through on the way from Peterborough to the M1.</p>
<h2>What we see around Thrapston</h2>
<ul>
  <li>Breakdowns on the A14 near the Thrapston junction.</li>
  <li>Cars stopped on the A605 between Thrapston and Oundle, a single carriageway through villages.</li>
  <li>Breakdowns on the A45 past Raunds and Stanwick.</li>
  <li>Cars that won&rsquo;t start in Thrapston, Islip and the Nene valley villages.</li>
</ul>
<p>Thrapston is on the way from Peterborough, so a truck coming down the A605 can often reach you quickly. Tell us the road and direction.</p>
HTML
  roads => [
    '<b>A14</b> past Thrapston, between Kettering and Huntingdon',
    '<b>A605</b> north-east to Oundle and Peterborough',
    '<b>A45</b> south-west past Raunds to Wellingborough',
    '<b>A6116</b> towards Corby',
  ],
  near => [ 'Raunds', 'Islip', 'Titchmarsh', 'Ringstead', 'Denford', 'Stanwick', 'Clopton', 'Thorpe Waterville' ],
  villages => [qw(titchmarsh thorpe-waterville)],
  faq => [
    [ 'Do you cover the A14 near Thrapston?', 'Yes, and the A605 to Oundle and Peterborough. Tell us your direction and the junction.' ],
  ],
);

1;
