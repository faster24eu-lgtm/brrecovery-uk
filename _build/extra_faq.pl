# Extra FAQs (added 2026-11-08): real questions people search, two per page.
# Added to the page's FAQ section and FAQPage schema. Loaded last by build.pl.
use strict;
use warnings;
use utf8;

our %EXTRA_FAQ = (

# ---------------------------------------------------------------- towns
'car-recovery/yaxley' => [
  [ 'Is there 24 hour recovery near Yaxley?', 'Yes. The phone is answered day and night, and because Yaxley is only a few miles from Peterborough, a truck can usually reach you quickly. We give you an honest arrival time and the full price before anyone sets off.' ],
  [ 'Can you recover a car from Great Haddon or Hampton?', 'Yes. Both are on our doorstep. Tell us the street and whether the car is on a driveway, in a garage or on the road, and whether it will go into neutral.' ],
],
'car-recovery/crowland' => [
  [ 'Is the A1073 the same road as the A16 at Crowland?', 'Yes. The Peterborough to Spalding road past Crowland was renumbered as part of the A16 in 2011. Some older sat-navs and maps still call it the A1073, so either name is fine when you call.' ],
  [ 'How do I tell you where I am on a fen road near Crowland?', 'Share a live location pin or a what3words address. Otherwise, tell us the last village or junction you passed and which way you were heading. Fen roads look alike, so a pin saves a lot of time.' ],
],
'car-recovery/holbeach' => [
  [ 'Can you collect a car from a packhouse car park in Holbeach?', 'Yes. Tell us the company and car park, and let site security know we&rsquo;re coming. Early-morning non-starters at packhouses are one of our most common calls in South Holland.' ],
  [ 'Do you cover Gedney Hill and Holbeach Drove?', 'Yes, and all the villages around Holbeach. They are a long way from main roads, so a live location pin helps the driver find you quickly.' ],
],
'car-recovery/sawtry' => [
  [ 'What is the nearest services to Sawtry on the A1(M)?', 'Peterborough Services at junction 17 is the nearest proper service area north of Sawtry. If your car is struggling, it is often safer to come off at junction 15 into Sawtry than to try to reach it.' ],
  [ 'Can you take my car from Sawtry to Huntingdon?', 'Yes. Huntingdon is a short run down the A1. Tell us which garage, and check it is open; out of hours, we can keep the car overnight and deliver it in the morning.' ],
],
'car-recovery/ramsey' => [
  [ 'Do you cover Ramsey Forty Foot and Ramsey St Mary&rsquo;s?', 'Yes. We cover all of the Ramsey villages and the fen roads between them. Send a location pin if you can, as the roads along the drains are hard to describe.' ],
  [ 'Is it safe to wait in my car on a fen road?', 'Usually not. If you are on a narrow road with traffic, get out on the side away from the road and wait well away from the car, with a torch or phone light on. If the car is near water, stay out of it.' ],
],
'car-recovery/st-ives' => [
  [ 'Do you cover Fenstanton and Hemingford Grey?', 'Yes, and all the villages around St Ives. Many calls come from the A14 near Fenstanton, so tell us whether you are on the A14 or in the village.' ],
  [ 'Can you take my car to a garage in Cambridge from St Ives?', 'Yes. Tell us which garage and when it opens. Out of hours we can keep the car overnight and deliver it first thing.' ],
],
'car-recovery/chatteris' => [
  [ 'Is there 24 hour breakdown recovery in Chatteris?', 'Yes, day and night. Chatteris is out on the fen, so we tell you honestly how long the truck will take, and you hear the full price before anyone sets off.' ],
  [ 'Do you cover the A142 between Chatteris and Ely?', 'Yes, the whole road. See the <a href="/roads/a141-a142/">A141 and A142 road guide</a> for what to do while you wait.' ],
],
'car-recovery/ely' => [
  [ 'Can you recover a car from Ely station or the city centre?', 'Yes. Tell us the car park or street. Station and city-centre car parks are easy for a truck to reach, and loading there is safer than at the roadside.' ],
  [ 'Do you cover Soham and Littleport?', 'Yes, and the villages around them. Both are on our regular routes along the A142 and A10.' ],
],
'car-recovery/kings-lynn' => [
  [ 'Can you take my car from King&rsquo;s Lynn to Peterborough?', 'Yes. It is a straight run along the A47. Tell us where the car needs to go, and you hear the price before we set off.' ],
  [ 'Do you cover Hunstanton and the coast?', 'For planned moves, yes. For breakdowns on the A149 to Hunstanton, call and we&rsquo;ll check how quickly a truck can reach you.' ],
],
'car-recovery/downham-market' => [
  [ 'Is there 24 hour car recovery in Downham Market?', 'Yes, day and night. Downham Market is at the edge of our area, so we give you an honest arrival time on the call.' ],
  [ 'Can you take my car to a garage in King&rsquo;s Lynn?', 'Yes. It is a short run up the A10. Tell us the garage and check it can take the car.' ],
],
'car-recovery/grantham' => [
  [ 'What should I do if I break down on the A1 near Colsterworth?', 'Get off the road if you can, at a lay-by or the next junction. Get everyone out on the verge side and behind any barrier, then call us with your direction and the last place you passed.' ],
  [ 'Can you take my car from Grantham back home?', 'Yes, anywhere in the UK. You hear the price for the whole journey before we set off, and passengers can usually travel in the truck cab.' ],
],
'car-recovery/boston' => [
  [ 'Do you cover the Sutterton roundabout?', 'Yes. It is a busy junction where the A16 meets the A17. Tell us which road you came from and where you stopped.' ],
  [ 'Can you take my car from Boston to Spalding or Peterborough?', 'Yes. Tell us the garage or address, and you hear the price before we set off.' ],
],
'car-recovery/sleaford' => [
  [ 'Do you cover the Holdingham roundabout?', 'Yes, and the A15 and A17 on either side of it. Tell us which road you were on and which way you were heading.' ],
  [ 'Is there 24 hour recovery in Sleaford?', 'Yes, the phone is answered day and night. Sleaford is further from our base, so allow a little longer; we give you an honest arrival time on the call.' ],
],
'car-recovery/kettering' => [
  [ 'Can you collect a car from Kettering General Hospital?', 'Yes. Tell us which car park and where, and bring your parking ticket so the truck can get in and out.' ],
  [ 'Do you cover Rothwell and Desborough?', 'Yes, and the A6 between them. Tell us the street or the nearest junction.' ],
],
'car-recovery/thrapston' => [
  [ 'Do you cover Raunds and Islip?', 'Yes, and the other Nene valley villages around Thrapston. A truck coming down the A605 from Peterborough can usually reach you without much delay.' ],
  [ 'Can you take my car from Thrapston to Kettering or Peterborough?', 'Yes. Both are short runs. Tell us the garage and check it is open.' ],
],

# ------------------------------------------------------------- counties
'car-recovery-lincolnshire' => [
  [ 'Is there 24 hour car recovery in South Lincolnshire?', 'Yes. We cover Stamford, the Deepings, Bourne, Spalding, Holbeach, Long Sutton, Crowland, Boston, Sleaford and Grantham, day and night. You hear the price before anyone sets off.' ],
  [ 'Can you take a car from Lincolnshire to a garage in Peterborough?', 'Yes. Many of our Lincolnshire recoveries end at a Peterborough garage or dealer. Tell us which one, and check they are open.' ],
],
'car-recovery-northamptonshire' => [
  [ 'Is there 24 hour car recovery in Corby?', 'Yes. Corby, Kettering, Oundle and Thrapston are all covered day and night. See the <a href="/car-recovery/corby/">Corby</a> page for more.' ],
  [ 'Do you cover the A14 through Northamptonshire?', 'Yes, from Kettering past Thrapston towards Huntingdon. Tell us your direction and the junction.' ],
],

# ---------------------------------------------------------------- roads
'roads/a47' => [
  [ 'Is the A47 between Peterborough and Wisbech dangerous?', 'It is a busy single carriageway with heavy lorries, few lay-bys and drains beside the road east of Thorney. If you break down there, get well away from the car, and call 999 if it is in a live lane.' ],
  [ 'Can you take my car from the A47 to King&rsquo;s Lynn?', 'Yes, or anywhere else. Tell us where it needs to go, and you hear the price before we set off.' ],
],
'roads/a14' => [
  [ 'Does the new A14 near Huntingdon have a hard shoulder?', 'The newer southern bypass section does. Use it if you can, then get everyone out on the left and behind the barrier.' ],
  [ 'Is there 24 hour recovery on the A14?', 'Yes, day and night, around Huntingdon, St Ives, Brampton and Thrapston. You hear the price before we set off.' ],
],
'roads/a16-a15' => [
  [ 'Do you cover the A15 between Bourne and Sleaford?', 'Yes. It is a long road through open country, so a live location pin helps the driver find you quickly.' ],
  [ 'Do you cover the A16 north of Spalding to Boston?', 'Yes, including the Sutterton roundabout where the A16 meets the A17.' ],
],
'roads/peterborough-parkways' => [
  [ 'Which parkway am I on?', 'If you are not sure, share a live location pin and we&rsquo;ll work it out. Fletton and Frank Perkins are in the south and east, Nene in the west, Soke in the north and Paston to the north-east.' ],
  [ 'Can you take my car from a parkway to a Peterborough garage?', 'Yes. Most parkway breakdowns end at a garage or dealer in the city. Tell us which one.' ],
],
'roads/a605' => [
  [ 'Do you cover the A605 between Peterborough and Whittlesey?', 'Yes, including King&rsquo;s Dyke and the roads through Whittlesey. Tell us your direction and the nearest junction or roundabout.' ],
  [ 'Can you take my car from the A605 to Oundle?', 'Yes. Tell us the garage or address, and you hear the price first.' ],
],
'roads/a141-a142' => [
  [ 'Can you pull a car out of a fen drain?', 'Yes, with a winch, once everyone is safe. If the car is in water or anyone is hurt, call 999 first. Then send us a photo so the driver brings the right kit.' ],
  [ 'Do you cover the A141 March bypass?', 'Yes, and the roads into March. Tell us which roundabout you last passed.' ],
],
'roads/a17' => [
  [ 'Do you cover the A17 at night?', 'Yes, day and night, from Sleaford to King&rsquo;s Lynn. Tell us the last village and your direction.' ],
  [ 'Can you recover a car near the Cross Keys bridge?', 'Yes. Tell us which side of the river you are on, because the truck may need to come from the other direction.' ],
],
'roads/a428' => [
  [ 'Is there 24 hour recovery on the A428?', 'Yes, from the Black Cat to Cambridge. Tell us your direction and the last junction you passed.' ],
  [ 'Can you take my car from the A428 to St Neots?', 'Yes, or to any garage in Cambridge or Bedford. Check it is open, or we can keep the car overnight.' ],
],
'roads/a10' => [
  [ 'Is there 24 hour recovery on the A10?', 'Yes, between Cambridge and King&rsquo;s Lynn. You hear the price and an honest arrival time on the call.' ],
  [ 'What if the A10 is foggy and I have broken down?', 'Get everyone out on the verge side, well away from the car, and keep your hazard lights on. Fog makes a stopped car much harder to see.' ],
],
'roads/a43' => [
  [ 'Is there 24 hour recovery on the A43?', 'Yes, from Stamford to Corby and Kettering. Tell us your direction and the nearest village or roundabout.' ],
  [ 'Can you take my car from the A43 to Stamford?', 'Yes, or to Corby, Kettering or Peterborough. Tell us the garage and check it is open.' ],
],
'roads' => [
  [ 'Which roads do you cover?', 'The A1 and A1(M), A47, A14, A15, A16, A17, A605, A141, A142, A428, A10, A43 and the Peterborough parkways, plus every road in between.' ],
  [ 'How do I tell you where I am on a main road?', 'The road, your direction and the last junction or village you passed. A live location pin is even better.' ],
],

# ------------------------------------------------------------- services
'motorbike-recovery' => [
  [ 'Is there motorbike recovery near me in Peterborough?', 'Yes, day and night across Peterborough, the Fens, Stamford, Huntingdon and South Lincolnshire. Call with the bike&rsquo;s location and we send a truck with a wheel chock and soft straps.' ],
  [ 'Can you recover a scooter or moped?', 'Yes. Scooters and mopeds go on the truck the same way as bigger bikes, strapped without touching the bodywork.' ],
],
'electric-car-recovery' => [
  [ 'What if my electric car has no charge at all?', 'We load it onto the flatbed with a winch and skates if needed, and take it to a charger or home. It doesn&rsquo;t need any charge to be moved.' ],
  [ 'Do you recover hybrids too?', 'Yes. Hybrids also go fully on the flatbed, never towed on their wheels.' ],
],
'classic-car-transport' => [
  [ 'Can you take my classic car to a show at Burghley or Stamford?', 'Yes. Book early in the show season, tell us the date and when the car needs to be there, and we bring it back afterwards.' ],
  [ 'Do you carry classic cars that leak oil?', 'Yes. We put a drip tray under the car on the bed.' ],
],
'dealer-car-transport' => [
  [ 'Do you collect from Copart Wisbech for dealers?', 'Yes, regularly. Send us the lot numbers and release details and we&rsquo;ll collect and deliver.' ],
  [ 'Can you move more than one car at once?', 'Sometimes, depending on the cars and the trucks available. Tell us what you need and we&rsquo;ll tell you the options.' ],
],
'motorhome-recovery' => [
  [ 'Can you recover a campervan on the A47 to Norfolk?', 'Yes, campervans and small motorhomes up to 3.5 tonnes, anywhere on the A47 from Peterborough to King&rsquo;s Lynn.' ],
  [ 'Can my family travel with the campervan?', 'Usually some passengers can travel in the truck cab, seat belts permitting. Tell us how many people when you call.' ],
],
'services' => [
  [ 'Do you offer 24 hour recovery?', 'Yes. Every service is available day and night, every day of the year, and the price is the same at 3am as at 3pm.' ],
  [ 'Do you need a membership?', 'No. You call when you need us and pay for that job only. The price is agreed on the phone before we set off.' ],
],

# --------------------------------------------------------------- guides
'guides' => [
  [ 'What should I do first if my car breaks down?', 'Get off the road if you can, put the hazards on, and get everyone out on the side away from traffic. Call 999 if the car is stuck in a live lane. Then call us.' ],
  [ 'Are these guides legal advice?', 'No. They are practical help from people who recover cars every day. For legal or insurance questions, speak to your insurer or a solicitor.' ],
],
'guides/broken-down-on-the-a1' => [
  [ 'What is the nearest services on the A1(M) near Peterborough?', 'Peterborough Services at junction 17. If your car is still moving, it is a much safer place to stop than the hard shoulder.' ],
  [ 'Can you take me home if I break down on the A1 far from home?', 'Yes. We take the car, and usually you and your passengers, anywhere in the UK. You hear the full price first.' ],
],
'guides/car-wont-start' => [
  [ 'Why won&rsquo;t my car start but the lights work?', 'The lights need far less power than the starter motor, so a weak battery can still light the dash. It may also be a starter motor, immobiliser or fuel problem.' ],
  [ 'Can a car not start because of the key?', 'Yes. A flat key fob battery or an immobiliser fault can stop the car starting. Try the spare key.' ],
],
'guides/wrong-fuel' => [
  [ 'Is petrol in a diesel worse than diesel in a petrol car?', 'Usually, yes. Petrol in a modern diesel can damage the high-pressure fuel pump and injectors. Diesel in a petrol car tends to cause misfiring and smoke, and is often cheaper to fix. Either way, don&rsquo;t start the engine.' ],
  [ 'Will my insurance cover wrong fuel?', 'Some policies cover misfuelling, many don&rsquo;t. Check your policy before booking the work.' ],
],
'guides/broken-down-on-the-a47' => [
  [ 'Is there 24 hour recovery on the A47?', 'Yes, from Uppingham to King&rsquo;s Lynn, day and night.' ],
  [ 'Where is the safest place to stop on the A47 near Peterborough?', 'On the Soke Parkway, a slip road or the next junction. East of Eye, a lay-by if there is one, or as far onto the verge as you safely can.' ],
],
'guides/flat-tyre-no-spare' => [
  [ 'Can a flat tyre be repaired after using sealant?', 'Sometimes. Many fitters can repair a small tread puncture after sealant has been used, but some won&rsquo;t. Tell them you used it.' ],
  [ 'How far can I drive on a run-flat tyre?', 'It depends on the tyre and the car. Check your handbook; many allow a limited distance at reduced speed.' ],
],
'guides/car-overheating' => [
  [ 'Can I just top up with water?', 'In an emergency, water will get you to a garage. Get the coolant mix checked soon, as plain water doesn&rsquo;t protect against frost or corrosion.' ],
  [ 'Why does my car overheat in traffic?', 'At low speeds the engine relies on the cooling fan. If the fan or its fuse has failed, the car overheats in queues but may be fine at speed.' ],
],
'guides/dashboard-warning-lights' => [
  [ 'Can I drive with the engine management light on?', 'If it is steady and the car feels normal, usually yes, carefully, to a garage. If it is flashing or the car is losing power, stop.' ],
  [ 'What does a red battery light mean while driving?', 'The car isn&rsquo;t charging the battery. It will run until the battery is flat, then stop. Head somewhere safe and call.' ],
],
'guides/car-in-a-police-pound' => [
  [ 'How long do I have to collect my car from a police pound?', 'It varies between police forces, but storage fees usually start straight away and cars left too long can be disposed of. Act as soon as you are told it is ready.' ],
  [ 'What if the car was stolen and found?', 'Tell your insurer straight away. They may cover the recovery and storage costs.' ],
],
'guides/breakdown-cover-vs-pay-as-you-go' => [
  [ 'Can I get breakdown cover after I&rsquo;ve broken down?', 'Some providers allow it with an extra fee and a waiting period; many don&rsquo;t. Pay-as-you-go recovery is for exactly that situation.' ],
  [ 'Is pay-as-you-go recovery more expensive than cover?', 'For one breakdown a year or less, often not. If you break down several times a year, cover may work out cheaper.' ],
],
'guides/stuck-in-a-multi-storey-car-park' => [
  [ 'What is the height limit in most multi-storey car parks?', 'Usually around 2 metres, shown at the entrance. Most recovery trucks are taller, which is why the car is moved to a level where it can be loaded.' ],
  [ 'Can you get an automatic car out of a multi-storey?', 'Yes. Automatics and electric cars shouldn&rsquo;t be towed on their wheels, so we use skates to move them to a loading point.' ],
],
'guides/sharing-your-location' => [
  [ 'What is what3words?', 'A free app that gives every 3-metre square in the world a unique three-word address. Read us the three words and we know exactly where you are.' ],
  [ 'Can you find me without a postcode?', 'Yes. A live location pin, what3words, a marker post number, or the last junction and your direction all work.' ],
],

);

for my $p (@main::PAGES) {
  my $x = $EXTRA_FAQ{ $p->{path} // '' } or next;
  push @{ $p->{faq} //= [] }, @$x;
  delete $EXTRA_FAQ{ $p->{path} };
}
die "extra_faq.pl: no page for @{[ join ', ', sort keys %EXTRA_FAQ ]}\n" if %EXTRA_FAQ;

1;
