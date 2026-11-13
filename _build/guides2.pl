# More guides (added 2026-11-08). Uses guide() from pages.pl.
use strict;
use warnings;
use utf8;

guide(
  path => 'guides/car-wont-start', label => 'Car won&rsquo;t start? Check these first', big => 'Start',
  card => 'Clicks, silence, cranks but won&rsquo;t fire: what each one means.',
  title => 'Car Won&rsquo;t Start? What to Check Before You Call Recovery',
  description => 'Car won&rsquo;t start? What clicking, silence, slow cranking or cranking without firing usually mean, the checks you can do yourself, and when to call recovery.',
  h1 => 'Car won&rsquo;t <span>start?</span>',
  lead => 'A car that won&rsquo;t start is our most common call. Sometimes it&rsquo;s a five-minute fix; sometimes it needs a garage. Here&rsquo;s how to tell.',
  body => <<'HTML',
<h2>What the noise tells you</h2>
<ul>
  <li><b>Rapid clicking, dim lights:</b> almost always a flat battery. A jump start usually works. See <a href="/jump-start/">jump start</a>.</li>
  <li><b>One click, then nothing:</b> a flat battery, a bad battery connection or a failing starter motor.</li>
  <li><b>Silence, no lights:</b> a completely dead battery, a loose terminal or the main fuse.</li>
  <li><b>Cranks slowly:</b> a weak battery, especially on a cold morning.</li>
  <li><b>Cranks normally but won&rsquo;t fire:</b> fuel, ignition or a sensor problem. Stop before you flatten the battery.</li>
</ul>
<h2>Checks you can do</h2>
<ol class="steps">
  <li><b>Automatic?</b> Make sure it&rsquo;s in Park, and press the brake firmly while starting.</li>
  <li><b>Manual?</b> Press the clutch fully down; many cars won&rsquo;t start without it.</li>
  <li><b>Steering lock:</b> turn the wheel gently while turning the key or pressing start.</li>
  <li><b>Keyless:</b> the fob battery may be flat. Hold the fob right against the start button, or check the handbook for the backup slot.</li>
  <li><b>Fuel:</b> the gauge can be wrong when it&rsquo;s nearly empty, especially on a slope.</li>
</ol>
<h2>When to call us</h2>
<p>If a jump start doesn&rsquo;t work, it cranks but won&rsquo;t fire, or there&rsquo;s a smell of fuel or burning, call us. We take it home, to your garage or to a dealer. See <a href="/breakdown-recovery/">breakdown recovery</a>.</p>
HTML
  faq => [
    [ 'Can you jump start my car instead of recovering it?', 'Often, yes. If the jump works, there&rsquo;s no need to load the car. If it doesn&rsquo;t, we can take it to a garage.' ],
  ],
);

guide(
  path => 'guides/wrong-fuel', label => 'Put the wrong fuel in your car?', big => 'Fuel',
  card => 'Don&rsquo;t start it. What to do next.',
  title => 'Put the Wrong Fuel in Your Car? What to Do (Don&rsquo;t Start It)',
  description => 'Put petrol in a diesel or diesel in a petrol car? Don&rsquo;t start the engine. What to do at the pump, why it matters, and how to get the car drained or recovered.',
  h1 => 'Wrong fuel in the <span>car?</span>',
  lead => 'It happens to thousands of drivers every year. What matters is what you do next: the less the engine runs, the cheaper it is to fix.',
  body => <<'HTML',
<h2>If you haven&rsquo;t started the engine</h2>
<ol class="steps">
  <li><b>Don&rsquo;t turn the ignition on.</b> On many cars, even switching on the ignition starts the fuel pump.</li>
  <li><b>Tell the forecourt staff.</b> They&rsquo;ll help you push the car out of the way.</li>
  <li><b>Put it in neutral</b> and push it to a safe spot, with help.</li>
  <li><b>Arrange a fuel drain</b>, either a mobile fuel-drain service or recovery to a garage.</li>
</ol>
<h2>If you&rsquo;ve already driven off</h2>
<p>Petrol in a diesel usually causes knocking, smoke, loss of power and stalling. Diesel in a petrol car causes misfiring and smoke. As soon as you notice, pull over safely, switch off and don&rsquo;t restart it. The longer it runs, the more damage to the fuel pump and injectors.</p>
<h2>Drain on site or recover?</h2>
<p>A mobile fuel-drain service can often empty the tank at the forecourt. If the engine has run on the wrong fuel, or the garage needs to flush the system, the car should go to a garage. We recover it there. See <a href="/breakdown-recovery/">breakdown recovery</a>.</p>
<p>Tell your insurer: some policies cover misfuelling, but many don&rsquo;t.</p>
HTML
  faq => [
    [ 'Can I drive with a little bit of wrong fuel?', 'It&rsquo;s not worth the risk. Even a small amount can cause damage, especially petrol in a modern diesel. Get advice before starting the engine.' ],
  ],
);

guide(
  path => 'guides/after-a-car-accident', label => 'What to do after a car accident', big => 'Crash',
  card => 'At the scene, the law, your insurer and the car.',
  title => 'What to Do After a Car Accident in the UK: Step by Step',
  description => 'Had a car accident? What to do at the scene, what the law says you must do, details to swap, evidence to collect, your insurer, and getting the car recovered.',
  h1 => 'What to do after a car <span>accident</span>',
  lead => 'In the shock of a crash it&rsquo;s easy to forget things that matter later. Work through these steps in order, and leave the car for last.',
  body => <<'HTML',
<ol class="steps">
  <li><b>Stop and get safe.</b> Hazards on, engine off. Get everyone out on the safe side and away from traffic.</li>
  <li><b>Check for injuries.</b> Call 999 if anyone is hurt, the road is blocked or a driver leaves the scene.</li>
  <li><b>Swap details:</b> names, addresses, phone numbers, registrations and insurers. Get witness contacts too.</li>
  <li><b>Collect evidence:</b> photos of the vehicles, their positions, the road, signs, and any dashcam footage. Save it straight away.</li>
  <li><b>Get the car moved</b> once the police are done. Call us for <a href="/accident-recovery/">accident recovery</a>.</li>
  <li><b>Tell your insurer</b> as soon as you can, even if you&rsquo;re not claiming.</li>
</ol>
<h2>What the law says</h2>
<p>If you&rsquo;re involved in a collision on a road that injures someone or damages another vehicle or property, you must stop. You must give your name and address, the vehicle owner&rsquo;s name and address and the registration to anyone with reasonable grounds to ask. If you can&rsquo;t, you must report it to the police as soon as reasonably possible and within 24 hours.</p>
<h2>What happens to the car</h2>
<p>If the police remove the car, it goes to a storage yard that charges by the day, so arrange collection quickly. If you&rsquo;re free to choose, decide where it should go: home, a dealer, your insurer&rsquo;s approved repairer or storage. Don&rsquo;t drive a crashed car unless you&rsquo;re sure it&rsquo;s safe.</p>
<h2>Claims</h2>
<p>If the accident wasn&rsquo;t your fault, recovery and storage costs are usually part of your claim against the other driver&rsquo;s insurer. Keep our invoice. This is general information, not legal advice.</p>
HTML
  faq => [
    [ 'Should I move my car after an accident?', 'Only if it&rsquo;s safe and nobody is hurt, and it&rsquo;s causing danger where it is. Take photos first if you can. If anyone is injured, leave it for the police.' ],
  ],
);

guide(
  path => 'guides/broken-down-on-the-a47', label => 'Broken down on the A47: what to do', big => 'A47',
  card => 'From Wansford to Wisbech: staying safe and getting found.',
  title => 'Broken Down on the A47 Near Peterborough? What to Do',
  description => 'Step-by-step help if you break down on the A47 between Wansford, Peterborough, Thorney and Wisbech: staying safe, telling us where you are, getting home.',
  h1 => 'Broken down on the <span>A47?</span>',
  lead => 'The A47 changes character across our patch: dual carriageway through Peterborough, then a narrow, busy fen road east of Eye. Here&rsquo;s what to do if your car stops.',
  body => <<'HTML',
<h2>1. Get off the road</h2>
<p>On the Soke Parkway, aim for a slip road or the next junction. East of Eye, there are few lay-bys and the verges drop into drains. Pull as far in as you safely can.</p>
<h2>2. Get everyone out, away from the car</h2>
<p>Hazards on. Everyone out on the side away from traffic, and well away from the car, up the verge if possible. Lorries pass close on this road.</p>
<h2>3. Stuck in a live lane? Call 999</h2>
<p>If the car can&rsquo;t be moved and is in the carriageway, call 999 before you call us.</p>
<h2>4. Tell us where you are</h2>
<ul>
  <li>Your direction: towards Peterborough or towards Wisbech.</li>
  <li>The last place you passed: Wansford, Castor, Eye, Thorney, Thorney Toll, Guyhirn.</li>
  <li>Or share a live location pin. See <a href="/guides/sharing-your-location/">how to share your location</a>.</li>
</ul>
<h2>5. Call us</h2>
<p>We give you a price and an arrival time before we set off. See the <a href="/roads/a47/">A47 road guide</a> and <a href="/car-recovery/thorney/">Thorney</a>.</p>
HTML
);

guide(
  path => 'guides/broken-down-on-the-a14', label => 'Broken down on the A14: what to do', big => 'A14',
  card => 'Huntingdon, Brampton, St Ives and Thrapston.',
  title => 'Broken Down on the A14 Near Huntingdon? What to Do',
  description => 'Step-by-step help if you break down on the A14 near Thrapston, Brampton, Huntingdon or St Ives: staying safe among the lorries and getting recovered fast.',
  h1 => 'Broken down on the <span>A14?</span>',
  lead => 'The A14 carries a huge amount of freight. A car stopped among the lorries needs to be dealt with quickly and safely.',
  body => <<'HTML',
<h2>1. Get to the left</h2>
<p>If the car still moves, get onto the hard shoulder, into a lay-by or off at the next junction. The newer Huntingdon southern bypass has hard shoulders; older stretches have fewer safe places.</p>
<h2>2. Behind the barrier</h2>
<p>Hazards on, everyone out on the left and up behind the barrier. Don&rsquo;t stand between the car and the traffic, and don&rsquo;t try to fix it on the roadside.</p>
<h2>3. Live lane? Call 999</h2>
<p>If the car stops in a running lane and you can&rsquo;t get out safely, keep seat belts on, hazards on, and call 999.</p>
<h2>4. Tell us where you are</h2>
<ul>
  <li>Eastbound or westbound.</li>
  <li>The last junction you passed: Thrapston, Brampton, Huntingdon, Swavesey, Girton.</li>
  <li>Any marker post number, or a live location pin.</li>
</ul>
<p>See the <a href="/roads/a14/">A14 road guide</a>, <a href="/car-recovery/huntingdon/">Huntingdon</a> and <a href="/car-recovery/st-ives/">St Ives</a>.</p>
HTML
);

guide(
  path => 'guides/flat-tyre-no-spare', label => 'Flat tyre and no spare wheel', big => 'Tyre',
  card => 'Sealant kits, run-flats, and when to call recovery.',
  title => 'Flat Tyre and No Spare Wheel? What to Do',
  description => 'Got a flat tyre and no spare? How to use a sealant kit, what run-flat tyres allow, when not to drive on it, and how recovery to a tyre fitter works.',
  h1 => 'Flat tyre, no <span>spare?</span>',
  lead => 'Many new cars come with a sealant kit or run-flat tyres instead of a spare wheel. Here&rsquo;s what each can and can&rsquo;t do.',
  body => <<'HTML',
<h2>Sealant and compressor kits</h2>
<p>These can seal a small puncture in the tread, such as a screw or nail, and reinflate the tyre to get you to a tyre fitter. Follow the instructions on the kit, drive slowly, and check the pressure after a short distance. Tell the fitter you used sealant.</p>
<p><b>They won&rsquo;t work</b> on a sidewall cut, a blowout, a tyre that has come off the rim, or a big hole.</p>
<h2>Run-flat tyres</h2>
<p>Run-flats let you keep driving for a limited distance at reduced speed after a puncture. Check your handbook for the limits. Get to a tyre fitter as soon as you can.</p>
<h2>When not to drive on it</h2>
<ul>
  <li>The tyre is shredded or off the rim.</li>
  <li>The wheel is damaged or bent.</li>
  <li>You&rsquo;re on a motorway or fast road with nowhere safe to stop.</li>
</ul>
<h2>Recovery to a tyre fitter</h2>
<p>If you can&rsquo;t fix it at the roadside, we can take the car to a tyre fitter, a garage or home. Tell us the tyre size if you know it, so you can check the fitter has it in stock. See <a href="/breakdown-recovery/">breakdown recovery</a>.</p>
HTML
);

guide(
  path => 'guides/car-overheating', label => 'Car overheating: what to do', big => 'Temp',
  card => 'Warning light, steam or a high gauge. Stop safely and don&rsquo;t open the cap.',
  title => 'Car Overheating? What to Do and What Not to Do',
  description => 'Temperature light on, gauge in the red or steam from the bonnet? How to stop safely, why not to open a hot radiator cap, and when to call recovery.',
  h1 => 'Car <span>overheating?</span>',
  lead => 'Driving an overheating engine can warp the cylinder head or blow the head gasket in minutes. Stop early and it&rsquo;s often a cheap fix.',
  body => <<'HTML',
<h2>What to do</h2>
<ol class="steps">
  <li><b>Pull over safely</b> as soon as you can.</li>
  <li><b>Switch off the engine.</b></li>
  <li><b>Never open a hot radiator or expansion cap.</b> The coolant is under pressure and can scald you badly.</li>
  <li><b>Wait at least 30 minutes</b> before opening the bonnet to check.</li>
</ol>
<h2>Common causes</h2>
<ul>
  <li>Low coolant from a leak: a split hose, radiator or water pump.</li>
  <li>A cooling fan that isn&rsquo;t working.</li>
  <li>A stuck thermostat.</li>
  <li>A head gasket failure, often with white smoke and milky oil.</li>
</ul>
<h2>When to call us</h2>
<p>If there&rsquo;s steam, a big leak, milky oil, or the temperature goes straight back up after cooling, don&rsquo;t drive it. We take it to your garage or home. In summer, cars often overheat in queues on the A1, the A47 and at the Cross Keys bridge at Sutton Bridge. See <a href="/breakdown-recovery/">breakdown recovery</a>.</p>
HTML
);

guide(
  path => 'guides/dashboard-warning-lights', label => 'Dashboard warning lights: stop or carry on?', big => 'Lights',
  card => 'Red means stop, amber means get it checked.',
  title => 'Dashboard Warning Lights: Which Mean Stop Right Now?',
  description => 'Which dashboard warning lights mean stop now and which mean get it checked soon: oil pressure, temperature, battery, brakes, engine management and more.',
  h1 => 'Warning lights: stop or <span>carry on?</span>',
  lead => 'As a rule, red means stop as soon as it&rsquo;s safe, and amber means get it checked soon. Here are the ones that matter most.',
  body => <<'HTML',
<h2>Red: stop as soon as it&rsquo;s safe</h2>
<ul>
  <li><b>Oil pressure</b> (an oil can): the engine may be running without oil. Stop and switch off.</li>
  <li><b>Coolant temperature</b> (a thermometer): the engine is overheating. See <a href="/guides/car-overheating/">car overheating</a>.</li>
  <li><b>Brake warning</b>: low brake fluid or a brake fault. Check the handbrake is off; if the light stays on, don&rsquo;t drive.</li>
  <li><b>Battery or charging</b>: the alternator may have failed. The car will run until the battery is flat, then stop.</li>
</ul>
<h2>Amber: get it checked soon</h2>
<ul>
  <li><b>Engine management</b>: a fault in the engine or emissions system. If it&rsquo;s flashing, or the car is losing power, stop.</li>
  <li><b>ABS</b>: normal brakes still work, but the anti-lock system may not.</li>
  <li><b>Tyre pressure</b>: check the tyres as soon as you can.</li>
  <li><b>Glow plug or DPF</b> on diesels: check the handbook.</li>
</ul>
<h2>When to call us</h2>
<p>If a red warning comes on and stays on, don&rsquo;t drive on to get home. Pull in somewhere safe and call. We&rsquo;ll take it home or to your garage. See <a href="/breakdown-recovery/">breakdown recovery</a>.</p>
HTML
);

guide(
  path => 'guides/car-in-a-police-pound', label => 'Getting your car back from a police pound', big => 'Pound',
  card => 'What to bring, why fees add up, and getting it home.',
  title => 'Car in a Police Pound? How to Get It Back and Home',
  description => 'Car seized, stolen and found, or removed after a crash? What to bring to the pound, why fees add up daily, and getting a car that can&rsquo;t be driven home.',
  h1 => 'Getting your car back from a <span>pound</span>',
  lead => 'Cars end up in police pounds after a crash, after being stolen and found, or after being seized. Getting yours out quickly saves money.',
  body => <<'HTML',
<h2>What to bring</h2>
<ul>
  <li>Photo ID.</li>
  <li>Proof of ownership or keepership: the V5C logbook in your name, or the new keeper slip and a receipt.</li>
  <li>Proof of insurance if you plan to drive it away.</li>
  <li>Any reference number the police gave you.</li>
</ul>
<p>Check with the pound before you go: rules vary between police forces.</p>
<h2>Fees add up</h2>
<p>Pounds charge a release fee and a daily storage fee. If the car was stolen and found, or you weren&rsquo;t at fault in a crash, tell your insurer straight away, as they may cover the costs.</p>
<h2>Can&rsquo;t drive it out?</h2>
<p>If the car is damaged, has a broken ignition, no key, or you have no insurance to drive it, we can collect it from the pound and take it home or to a garage. Tell us the pound address and the release details. See <a href="/accident-recovery/">accident recovery</a> and <a href="/non-runner-transport/">non-runner transport</a>.</p>
HTML
  faq => [
    [ 'Can you collect my car from a police pound for me?', 'Usually, yes, once it&rsquo;s released. Some pounds need the owner present or a signed authority. Check what they need, and we fit around it.' ],
  ],
);

guide(
  path => 'guides/breakdown-cover-vs-pay-as-you-go', label => 'Breakdown cover or pay as you go?', big => 'Cover',
  card => 'An honest comparison.',
  title => 'Breakdown Cover vs Pay-As-You-Go Recovery: Which Is Better?',
  description => 'Should you buy breakdown cover or pay for recovery only when you need it? An honest look at the pros, cons and who each one suits, from a pay-as-you-go service.',
  h1 => 'Breakdown cover or <span>pay as you go?</span>',
  lead => 'We&rsquo;re a pay-as-you-go service, so we have an interest here. But breakdown cover is the right choice for some drivers. Here&rsquo;s an honest comparison.',
  body => <<'HTML',
<h2>When breakdown cover makes sense</h2>
<ul>
  <li>You drive a lot, including long distances from home.</li>
  <li>Your car is older and likely to break down more than once a year.</li>
  <li>You want home-start, onward travel or hotel cover included.</li>
  <li>You drive abroad: European cover is hard to arrange after the event.</li>
</ul>
<h2>When pay as you go makes sense</h2>
<ul>
  <li>You drive mostly locally and your car is reliable.</li>
  <li>Your car already has manufacturer assistance under warranty.</li>
  <li>You&rsquo;ve broken down and don&rsquo;t have cover. Most cover can&rsquo;t be bought and used for a breakdown that has already happened.</li>
  <li>You need something cover doesn&rsquo;t include: moving a non-runner, an auction car or a car you&rsquo;ve just bought.</li>
</ul>
<h2>Check what you already have</h2>
<p>Look at your insurance, your bank account perks and your warranty before buying. Some already include roadside help.</p>
<h2>How we price</h2>
<p>No membership. You call, tell us where the car is and where it needs to go, and hear the price before we set off. See the <a href="/guides/car-recovery-cost/">car recovery cost guide</a>.</p>
HTML
);

guide(
  path => 'guides/stuck-in-a-multi-storey-car-park', label => 'Stuck in a multi-storey car park', big => '2.1m',
  card => 'Height barriers, skates and low-roof recovery.',
  title => 'Car Broken Down in a Multi-Storey Car Park? What Happens',
  description => 'Car won&rsquo;t start in a multi-storey or underground car park? Height limits, how recovery trucks deal with low roofs, and what to tell the operator.',
  h1 => 'Stuck in a <span>multi-storey?</span>',
  lead => 'Most recovery trucks are too tall for a multi-storey car park. That doesn&rsquo;t mean your car is stuck: it just means the operator needs to know before they set off.',
  body => <<'HTML',
<h2>Try a jump start first</h2>
<p>Most multi-storey breakdowns are flat batteries. A jump start fixes the problem without moving the car. See <a href="/jump-start/">jump start</a>.</p>
<h2>If it won&rsquo;t go</h2>
<p>The operator moves the car down to a level, or out to the street, where a truck can reach it. Depending on the car park and the car, that might mean:</p>
<ul>
  <li><b>Skates</b> under the wheels, so a car that won&rsquo;t roll can be pushed.</li>
  <li><b>Towing it down</b> on a short tow pole, if it&rsquo;s safe and the car allows it.</li>
  <li><b>A low-roof vehicle</b> that fits under the height barrier.</li>
</ul>
<h2>What to tell us</h2>
<ul>
  <li>The car park name and the height limit at the entrance.</li>
  <li>The floor and bay number.</li>
  <li>Whether the car rolls, goes into neutral and has a working handbrake.</li>
  <li>Whether it&rsquo;s automatic or electric. These should not be towed on their wheels.</li>
</ul>
<p>We cover car parks in Peterborough, including Queensgate and the city centre, as well as Cambridge, Stamford, Huntingdon and the other towns. See <a href="/car-recovery/peterborough/">Peterborough</a>.</p>
<h2>Parking fees</h2>
<p>Keep your ticket or receipt and tell the car park staff what&rsquo;s happened. Many will let the truck in and out without charge, or extend your stay.</p>
HTML
);

guide(
  path => 'guides/sharing-your-location', label => 'How to tell us exactly where you are', big => 'Pin',
  card => 'WhatsApp pins, what3words and marker posts.',
  title => 'How to Share Your Exact Location When You&rsquo;ve Broken Down',
  description => 'How to send your exact location when you&rsquo;ve broken down: WhatsApp pins, Google Maps, Apple Maps, what3words and motorway marker posts.',
  h1 => 'How to tell us exactly <span>where you are</span>',
  lead => 'On a fen road or a dual carriageway, &ldquo;near the turn-off&rdquo; isn&rsquo;t enough. An exact location gets a truck to you faster.',
  body => <<'HTML',
<h2>WhatsApp location pin</h2>
<p>In a chat, tap the attach button (paperclip or plus), choose <b>Location</b>, then <b>Send your current location</b>. Check the pin is where you actually are.</p>
<h2>Google Maps or Apple Maps</h2>
<p>Press and hold on your blue dot to drop a pin, then share it. Google Maps shows the coordinates in the search bar.</p>
<h2>what3words</h2>
<p>The what3words app gives every 3-metre square a three-word address. It works well on long fen roads and droves where nothing has a name. Read us the three words.</p>
<h2>On the A1(M) and dual carriageways</h2>
<p>Look for the small marker posts on the verge. The numbers on them, together with the road and direction, pinpoint where you are. See the <a href="/roads/a1-a1m/">A1(M) guide</a>.</p>
<h2>No signal or battery low?</h2>
<ul>
  <li>Send your location first, then call.</li>
  <li>Note the last village, junction or landmark you passed.</li>
  <li>A text often gets through when a call won&rsquo;t.</li>
  <li>In an emergency, call 999. It works on any available network.</li>
</ul>
HTML
);

1;
