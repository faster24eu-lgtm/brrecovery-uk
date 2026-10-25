# Town pages (/car-recovery/<slug>/), county pages at the old WordPress paths, and road pages (/roads/<slug>/).
# Every town page names real roads, districts and places, so none of them is a copy of another.
use strict;
use warnings;
use utf8;

# Old /car-van-transportation-<village>/ pages forward to the town page that covers them (see pages.pl).
our %VILLAGE_TO;

sub town {
  my %t = @_;
  my $name = $t{name};
  my $roads = join '', map { "<li>$_</li>" } @{ $t{roads} };
  my $near = join ', ', @{ $t{near} };
  $VILLAGE_TO{$_} = $t{slug} for @{ $t{villages} // [] };
  push @main::PAGES, {
    kind => 'town', nav => 'car-recovery', crumbs => [ [ 'Areas', 'car-recovery' ] ],
    path => "car-recovery/$t{slug}", label => $name, big => $t{big} // $name,
    card => $t{card}, service => 'Vehicle recovery', area => $t{area} // $name,
    kicker => "24/7 recovery &middot; $t{county}",
    title => $t{title} // "Car Recovery $name | 24/7 Breakdown &amp; Vehicle Transport",
    description => $t{description},
    h1 => "Car recovery <span>$name</span>",
    lead => $t{lead},
    body => <<"HTML",
$t{intro}
<h2>Roads we cover around $name</h2>
<ul class="roads">$roads</ul>
<h2>Where we take your vehicle</h2>
<p>Home, your own garage, a main dealer, a body shop or secure storage. If it is late and your garage is shut, we can keep the car overnight and deliver first thing.</p>
<h2>Also covering</h2>
<p>$near.</p>
<p>Price: local recovery starts {{PRICE}}, and you get a fixed figure on the call. Moving a car further? See <a href="/car-transport/">car transport</a> or the <a href="/guides/car-recovery-cost/">cost guide</a>.</p>
HTML
    faq => $t{faq},
  };
}

town(
  slug => 'peterborough', name => 'Peterborough', big => 'PE1', county => 'Cambridgeshire',
  card => 'The city, the parkways and the A1(M) J15&ndash;17.',
  title => 'Car Recovery Peterborough | 24/7 Breakdown Recovery, Fixed Price',
  description => '24/7 car recovery in Peterborough: Hampton, Orton, Bretton, Werrington, the parkways and the A1(M). Fixed price {{PRICE}} agreed before dispatch. Call {{PHONE}}.',
  lead => 'Broken down on Fletton Parkway, stuck in a Queensgate car park or dead on your drive in Hampton? Call with the location and you get a fixed price and a truck on the way.',
  intro => <<'HTML',
<p>Peterborough is where most of our jobs start. The parkways move fast and have few safe places to stop, the A1(M) runs past the west of the city, and the A47 Soke Parkway carries traffic from the A1 out to Wisbech and King&rsquo;s Lynn. We recover from all of it, plus the estates and car parks in between.</p>
<h2>Districts we cover</h2>
<p>City Centre, Hampton, Hampton Vale and Hampton Gardens, Orton Malborne, Orton Goldhay and Orton Southgate, Bretton, Werrington, Gunthorpe, Paston, Walton, Dogsthorpe, Millfield, Eastfield, Fengate, Stanground, Woodston, Fletton, Longthorpe, Netherton, Ravensthorpe, Eye and Yaxley.</p>
<h2>Common pick-ups</h2>
<ul>
  <li>Peterborough City Hospital car parks in Bretton.</li>
  <li>Queensgate and the city centre multi-storeys, where a low roof needs a short truck. Tell us which car park.</li>
  <li>Fengate, Lynch Wood, Orton Southgate and Hampton business parks.</li>
  <li>Peterborough Services at A1(M) junction 17.</li>
</ul>
HTML
  roads => [
    '<b>A1(M)</b> junction 15 (Sawtry), 16 (Norman Cross) and 17 (Peterborough Services)',
    '<b>A1139</b> Fletton Parkway and Frank Perkins Parkway',
    '<b>A47</b> Soke Parkway, from the A1 at Wansford to Eye',
    '<b>A1260</b> Nene Parkway and <b>A15</b> Paston Parkway',
    '<b>A605</b> to Whittlesey and Oundle, <b>A16</b> to Crowland and Spalding',
  ],
  near => [ 'Yaxley', 'Farcet', 'Stilton', 'Eye', 'Thorney', 'Glinton', 'Castor', 'Ailsworth', 'Alwalton', 'Wansford', 'Peakirk', 'Newborough', 'Helpston', 'Northborough' ],
  villages => [qw(peterborough ailsworth alwalton bretton castor chesterton dogsthorpe eye eye-green farcet fengate longthorpe marholm newborough norman-cross northborough paston peakirk glinton etton helpston maxey ufford upton walton woodston yaxley haddon morborne folksworth southorpe bainton pilsgate thorney thorney-toll stilton stibbington sibson water-newton wansford thornhaugh lolham milking-nook northgate gunthorpe werrington orton hampton holme glatton caldecote denton newstead)],
  faq => [
    [ 'How much is car recovery in Peterborough?', 'Local recovery in Peterborough starts {{PRICE}}. Things that change it: the distance to the drop-off, a non-rolling car, or a low multi-storey that needs a smaller truck. You get the full price on the call.' ],
    [ 'Can you get a car out of a multi-storey car park?', 'Yes. Tell us which car park and floor so we send a truck that fits under the barrier height, or the driver uses skates to move the car to a level where it can be loaded.' ],
    [ 'I have broken down on the A1(M) near Peterborough. What should I do?', 'Pull onto the hard shoulder or into a lay-by, put the hazards on, and get everyone out on the verge side and behind the barrier. Then call us with the junction number and direction. If you cannot get off the live lane, call 999.' ],
  ],
);

town(
  slug => 'stamford', name => 'Stamford', big => 'PE9', county => 'Lincolnshire',
  card => 'A1 north of Wansford, A43 and A606.',
  description => '24/7 car recovery in Stamford and on the A1 between Wansford and Colsterworth. Fixed price agreed before dispatch, {{PRICE}}. Call {{PHONE}}.',
  lead => 'Stamford sits right on the A1, so many of our calls here are drivers heading north or south who need to get off the road and get the car home.',
  intro => <<'HTML',
<p>The A1 skirts the west side of Stamford, with junctions for the A43 to Corby, the A606 to Oakham and the A6121 to Bourne. Lay-bys are short and traffic is heavy, so a fast recovery matters. In town, narrow streets around the centre and Burghley Park need a driver who knows how to place a truck.</p>
<h2>Areas we cover</h2>
<p>Stamford town centre, Uffington Road, Empingham Road and the Ryhall Road industrial estate, plus Easton-on-the-Hill, Wothorpe, Ketton, Tinwell, Collyweston, Great Casterton and Ryhall.</p>
HTML
  roads => [
    '<b>A1</b> from Wansford north past Stamford to Colsterworth',
    '<b>A43</b> south to Corby and Kettering',
    '<b>A606</b> west to Oakham and Rutland Water',
    '<b>A6121</b> to Bourne, and the <b>A1175</b> to Market Deeping',
  ],
  near => [ 'Ketton', 'Easton-on-the-Hill', 'Collyweston', 'Tinwell', 'Great Casterton', 'Little Casterton', 'Ryhall', 'Belmesthorpe', 'Essendine', 'Uffington', 'Barnack', 'Wittering' ],
  villages => [qw(stamford ingthorpe wothorpe easton-on-the-hill ketton tinwell collyweston great-casterton little-casterton ryhall belmesthorpe essendine tickencote uffington tallington wittering barnack duddington wakerley pickworth clipsham southorpe)],
  faq => [
    [ 'Do you cover the A1 around Stamford at night?', 'Yes, 24 hours. Give us the direction of travel and the nearest junction or lay-by, and stay behind the barrier while you wait.' ],
  ],
);

town(
  slug => 'market-deeping-and-bourne', name => 'Market Deeping &amp; Bourne', big => 'PE6', county => 'Lincolnshire',
  title => 'Car Recovery Market Deeping &amp; Bourne | 24/7 Breakdown Recovery',
  area => 'Market Deeping and Bourne',
  card => 'The Deepings, Bourne and the A15 north of Peterborough.',
  description => '24/7 car and van recovery in Market Deeping, Deeping St James and Bourne, on the A15 and A1175. Fixed price before dispatch, {{PRICE}}. Call {{PHONE}}.',
  lead => 'Between Peterborough and Bourne the A15 is a busy single carriageway with few places to stop. We recover from the road and from the towns and villages either side.',
  intro => <<'HTML',
<p>The A15 runs north out of Peterborough past Glinton and Northborough, bypasses Market Deeping and continues to Bourne and Sleaford. The A1175 crosses it at the Deepings, linking Stamford to Spalding. Most of our calls here are breakdowns on these two roads, or cars that will not start at home.</p>
<h2>Areas we cover</h2>
<p>Market Deeping, Deeping St James, Deeping Gate, West Deeping, Langtoft, Baston, Bourne, Thurlby, Dyke, Morton, Rippingale and the villages along the A6121 towards Stamford.</p>
HTML
  roads => [
    '<b>A15</b> Peterborough to Market Deeping and Bourne',
    '<b>A1175</b> Stamford to Market Deeping and Spalding',
    '<b>A151</b> Bourne to Spalding',
    '<b>A6121</b> Bourne to Stamford',
  ],
  near => [ 'Deeping St James', 'Deeping St Nicholas', 'Langtoft', 'Baston', 'Thurlby', 'Dyke', 'Morton', 'Rippingale', 'Edenham', 'Greatford', 'Tallington', 'West Deeping' ],
  villages => [qw(market-deeping corby-glen frognall deeping-gate deeping-st-james deeping-st-nicholas west-deeping langtoft baston bourne dyke cawthorpe edenham greatford braceborough wilsthorpe barholm carlby careby little-bytham castle-bytham witham-on-the-hill toft lound manthorpe hanthorpe haconby kirkby-underwood rippingale dunsby dowsby graby grimsthorpe irnham swinstead swayfield creeton counthorpe obthorpe stainfield scottlethorpe elsthorpe millthorpe bulby hawthorpe aunby)],
  faq => [
    [ 'Do you cover Bourne as well as the Deepings?', 'Yes, and the villages around both, plus the A15 and A151. Price is fixed on the call.' ],
  ],
);

town(
  slug => 'spalding', name => 'Spalding', big => 'PE11', county => 'Lincolnshire',
  card => 'Spalding, Holbeach and the A16 &amp; A151.',
  description => '24/7 car recovery in Spalding, Pinchbeck and Holbeach, on the A16, A151 and A17. Fixed price agreed before dispatch, {{PRICE}}. Call {{PHONE}}.',
  lead => 'Long straight fen roads, deep dykes either side and not much passing traffic at night. If you are stuck near Spalding, we get a truck to you and the car home.',
  intro => <<'HTML',
<p>The A16 links Spalding with Crowland and Peterborough to the south and Boston to the north, bypassing the town on the west. The A151 runs east to Holbeach and the A17, the main lorry route to King&rsquo;s Lynn. Fen roads mean ditch and verge recoveries are common here, so tell us if the car has left the tarmac.</p>
<h2>Areas we cover</h2>
<p>Spalding town, Pinchbeck, Surfleet, Gosberton, Cowbit, Weston, Moulton, Whaplode, Holbeach, Fleet, Gedney, Long Sutton and Sutton Bridge, plus Crowland to the south.</p>
HTML
  roads => [
    '<b>A16</b> Peterborough to Crowland, Spalding and Boston',
    '<b>A151</b> Spalding to Holbeach and the A17',
    '<b>A17</b> Holbeach, Long Sutton and Sutton Bridge',
    '<b>A1175</b> to Market Deeping and Stamford',
  ],
  near => [ 'Pinchbeck', 'Surfleet', 'Gosberton', 'Cowbit', 'Crowland', 'Moulton', 'Weston', 'Whaplode', 'Holbeach', 'Fleet', 'Gedney', 'Long Sutton' ],
  villages => [qw(spalding wykeham pinchbeck pinchbeck-west pode-hole surfleet surfleet-seas-end gosberton gosberton-clough risegate westhorpe cowbit crowland moulton moulton-chapel moulton-seas-end weston weston-hills whaplode whaplode-drove whaplode-st-catherine holbeach holbeach-bank holbeach-clough holbeach-drove holbeach-st-johns fleet fleet-hargate gedney gedney-hill lutton low-fulney saracens-head loosegate austendike wargate tongue-end guthram-gowt fitton-end begdale)],
  faq => [
    [ 'Can you pull a car out of a ditch near Spalding?', 'Often, yes, with a winch from the road. Send us a photo on WhatsApp so we can check the angle and send the right truck. Deep water or a roll-over may need a heavy recovery firm, and we tell you if so.' ],
  ],
);

town(
  slug => 'wisbech', name => 'Wisbech', big => 'PE13', county => 'Cambridgeshire',
  card => 'Wisbech, the A47 and Copart Wisbech.',
  description => '24/7 car recovery in Wisbech and on the A47 between Thorney and King&rsquo;s Lynn, plus Copart Wisbech collections. Fixed price, {{PRICE}}. Call {{PHONE}}.',
  lead => 'The A47 east of Peterborough is single carriageway for long stretches, and a breakdown near Guyhirn or Wisbech can leave you far from help. We come out 24/7.',
  intro => <<'HTML',
<p>The A47 bypasses Wisbech to the south on its way from Peterborough to King&rsquo;s Lynn, crossing the A141 at Guyhirn. Wisbech is also home to a large Copart salvage site, so alongside breakdowns we collect a lot of auction cars here. See <a href="/auction-collection/">auction collection</a>.</p>
<h2>Areas we cover</h2>
<p>Wisbech, Walsoken, Leverington, Gorefield, Wisbech St Mary, Guyhirn, Parson Drove, Murrow, Elm, Friday Bridge, Emneth, Outwell, Upwell, the Tydds and Sutton St Edmund.</p>
HTML
  roads => [
    '<b>A47</b> Thorney, Guyhirn, the Wisbech bypass and on to King&rsquo;s Lynn',
    '<b>A141</b> Guyhirn to March',
    '<b>A1101</b> Outwell and Upwell to Long Sutton',
    '<b>B1169</b> and the fen roads around Parson Drove and Murrow',
  ],
  near => [ 'Walsoken', 'Leverington', 'Gorefield', 'Wisbech St Mary', 'Guyhirn', 'Parson Drove', 'Murrow', 'Elm', 'Friday Bridge', 'Emneth', 'Upwell', 'Tydd St Giles' ],
  villages => [qw(wisbech walsoken leverington gorefield wisbech-st-mary guyhirn parson-drove murrow elm friday-bridge emneth upwell tydd-gote tydd-st-giles tydd-st-mary sutton-st-edmund sutton-st-james newton-in-the-isle four-gotes west-walton coldham dowsdale shepeau-stow throckenholt rings-end boyces-bridge begdale)],
  faq => [
    [ 'Can you collect a car from Copart Wisbech?', 'Yes. Send the lot number, your buyer number and the release details, and tell us if it is a non-runner. We book the slot and deliver it to you.' ],
  ],
);

town(
  slug => 'march-and-whittlesey', name => 'March &amp; Whittlesey', big => 'PE15', county => 'Cambridgeshire',
  title => 'Car Recovery March &amp; Whittlesey | 24/7 Breakdown Recovery Fenland',
  area => 'March and Whittlesey',
  card => 'March, Whittlesey, Chatteris and the A605 &amp; A141.',
  description => '24/7 car recovery in March, Whittlesey and Chatteris, on the A605, A141 and A142. Fixed price agreed before dispatch, {{PRICE}}. Call {{PHONE}}.',
  lead => 'Fen roads, level crossings and long drops into drains. We recover broken-down and crashed cars around March, Whittlesey and Chatteris, day and night.',
  intro => <<'HTML',
<p>The A605 runs east from Peterborough through Whittlesey and Coates to meet the A141 between March and Guyhirn. The A141 then carries on south past March to Chatteris and Huntingdon. These are narrow, raised fen roads with water on one or both sides, so verge and ditch recoveries are part of the job here.</p>
<h2>Areas we cover</h2>
<p>March, Whittlesey, Coates, Eastrea, Turves, Benwick, Doddington, Wimblington, Manea, Chatteris and the villages in between.</p>
HTML
  roads => [
    '<b>A605</b> Peterborough to Whittlesey and Coates',
    '<b>A141</b> Guyhirn, March, Chatteris and on to Huntingdon',
    '<b>A142</b> Chatteris to Ely',
    '<b>B1040</b> Whittlesey to Thorney and Ramsey',
  ],
  near => [ 'Coates', 'Eastrea', 'Turves', 'Benwick', 'Doddington', 'Wimblington', 'Manea', 'Chatteris', 'Pondersbridge', 'Kings Dyke' ],
  villages => [qw(march whittlesey coates eastrea turves benwick doddington wimblington manea chatteris pondersbridge kings-dyke eldernell three-holes twenty horseway christchurch tholomas-drove)],
  faq => [
    [ 'Do you cover Chatteris too?', 'Yes, Chatteris and the A141 and A142 around it.' ],
  ],
);

town(
  slug => 'huntingdon', name => 'Huntingdon', big => 'PE29', county => 'Cambridgeshire',
  card => 'Huntingdon, St Ives, Ramsey and the A14 &amp; A1.',
  description => '24/7 car recovery in Huntingdon, St Ives and Ramsey, on the A14, A1 and A141. Fixed price agreed before dispatch, {{PRICE}}. Call {{PHONE}}.',
  lead => 'Huntingdon sits where the A14 meets the A1, two of the busiest roads in the east. If you break down here we get you off the road and the car to your garage.',
  intro => <<'HTML',
<p>The A14 now runs south of Huntingdon on the newer bypass towards Cambridge, meeting the A1 near Brampton. The A141 rings the town and runs north to Warboys and Chatteris. We also cover St Ives, Ramsey, Sawtry and the Alconbury area at the south end of the A1(M).</p>
<h2>Areas we cover</h2>
<p>Huntingdon, Godmanchester, Brampton, Hartford, Hinchingbrooke Hospital, St Ives, Hemingford Grey, Houghton, Wyton, Alconbury, Sawtry, Ramsey and Warboys.</p>
HTML
  roads => [
    '<b>A14</b> south of Huntingdon towards Cambridge, and west to Kettering',
    '<b>A1</b> and <b>A1(M)</b> from Brampton to Alconbury and Sawtry',
    '<b>A141</b> Huntingdon ring road to Warboys and Chatteris',
    '<b>A1123</b> Huntingdon to St Ives',
  ],
  near => [ 'Godmanchester', 'Brampton', 'Hartford', 'St Ives', 'Hemingford Grey', 'Wyton', 'Alconbury', 'Sawtry', 'Ramsey', 'Warboys', 'Somersham', 'Kimbolton' ],
  villages => [qw(huntingdon molesworth old-weston bythorn hartford alconbury alconbury-weston abbots-ripton kings-ripton great-stukeley little-stukeley wyton woodhurst old-hurst pidley somersham warboys wistow upwood great-raveley little-raveley ramsey ramsey-forty-foot ramsey-heights ramsey-hollow ramsey-mereside ramsey-st-marys bury sawtry coppingford buckworth barham spaldwick ellington leighton-bromswold great-gidding little-gidding steeple-gidding hamerton winwick wood-walton broughton woolley)],
  faq => [
    [ 'Do you recover from the A14 near Huntingdon?', 'Yes, both directions, 24/7. Tell us the direction and the nearest junction, and wait behind the barrier.' ],
  ],
);

town(
  slug => 'st-neots', name => 'St Neots', big => 'PE19', county => 'Cambridgeshire',
  card => 'St Neots, the Black Cat and the A428.',
  description => '24/7 car recovery in St Neots, Eaton Socon and Eynesbury, on the A1 and the A428. Fixed price agreed before dispatch, {{PRICE}}. Call {{PHONE}}.',
  lead => 'With the A1 to the west and the A428 to Cambridge, St Neots sees a lot of breakdowns on through traffic. We recover from both, and from the town itself.',
  intro => <<'HTML',
<p>The A1 passes the west side of St Neots, with the Black Cat junction to the south where it meets the A421 to Bedford. The A428 runs east to Cambridge. With roadworks around the Black Cat and the A428 in recent years, lane closures and narrow lanes make a quick recovery even more important.</p>
<h2>Areas we cover</h2>
<p>St Neots, Eaton Socon, Eaton Ford, Eynesbury, Loves Farm, Little Paxton, Great Paxton, Buckden, Great Staughton, Kimbolton and Gamlingay.</p>
HTML
  roads => [
    '<b>A1</b> from Buckden past St Neots to the Black Cat',
    '<b>A428</b> St Neots to Cambridge',
    '<b>A421</b> the Black Cat to Bedford',
    '<b>B1428</b> and <b>B1043</b> through the town',
  ],
  near => [ 'Eaton Socon', 'Eaton Ford', 'Eynesbury', 'Little Paxton', 'Great Paxton', 'Buckden', 'Great Staughton', 'Kimbolton', 'Gamlingay', 'Abbotsley' ],
  faq => [
    [ 'Can you take my car from St Neots to Peterborough or Bedford?', 'Yes. Recovery to any garage or address is priced on distance, and you get the fixed figure on the call.' ],
  ],
);

town(
  slug => 'oundle', name => 'Oundle', big => 'PE8', county => 'Northamptonshire',
  card => 'Oundle, the Nene valley and the A605.',
  description => '24/7 car recovery in Oundle and the Nene valley villages, on the A605 and A427. Fixed price agreed before dispatch, {{PRICE}}. Call {{PHONE}}.',
  lead => 'Country lanes, narrow stone villages and the A605 to Peterborough. If your car stops anywhere around Oundle, we send a truck that fits.',
  intro => <<'HTML',
<p>The A605 bypasses Oundle to the east and runs north to the A1(M) at junction 17, and south to Thrapston and the A14. The A427 heads west to Corby. Villages along the Nene, such as Fotheringhay, Nassington and Warmington, have narrow streets and soft verges, so tell us the exact spot.</p>
<h2>Areas we cover</h2>
<p>Oundle, Polebrook, Warmington, Elton, Nassington, Yarwell, Fotheringhay, Kings Cliffe, Apethorpe, Woodnewton, Glapthorn, Barnwell and Thrapston.</p>
HTML
  roads => [
    '<b>A605</b> Oundle to the A1(M) at Peterborough, and south to Thrapston',
    '<b>A427</b> Oundle to Corby',
    '<b>A14</b> at Thrapston',
    'The Nene valley lanes to Fotheringhay, Nassington and Kings Cliffe',
  ],
  near => [ 'Polebrook', 'Warmington', 'Elton', 'Nassington', 'Yarwell', 'Fotheringhay', 'Kings Cliffe', 'Apethorpe', 'Woodnewton', 'Glapthorn', 'Barnwell', 'Thrapston' ],
  villages => [qw(oundle elmington papley polebrook warmington elton nassington yarwell fotheringhay kings-cliffe apethorpe woodnewton glapthorn barnwell thorpe-waterville titchmarsh achurch aldwincle wadenhoe lilford pilton stoke-doyle wigsthorpe tansor cotterstock southwick hemington luddington-in-the-brook thurning clopton armston ashton lutton great-gidding)],
  faq => [
    [ 'Can you get a truck down a narrow village lane?', 'Usually, yes. Tell us the lane and anything tight on the way in, and we send a shorter truck or a driver who uses skates to bring the car out.' ],
  ],
);

town(
  slug => 'corby', name => 'Corby', big => 'NN17', county => 'Northamptonshire',
  card => 'Corby, Weldon and the A43 &amp; A6003.',
  description => '24/7 car recovery in Corby, Weldon and Brigstock, on the A43, A6003 and A427. Fixed price agreed before dispatch, {{PRICE}}. Call {{PHONE}}.',
  lead => 'Corby&rsquo;s industrial estates and the A43 to Stamford and Kettering keep our trucks busy. We recover cars and vans across the town and the villages around it.',
  intro => <<'HTML',
<p>The A43 runs past Corby on its way from Kettering to the A1 at Stamford. The A6003 heads north to Uppingham and Oakham, and the A427 east to Oundle. Most van calls here come from the big industrial estates on the edge of town.</p>
<h2>Areas we cover</h2>
<p>Corby town, Weldon, Great Oakley, Cottingham, Middleton, Gretton, Rockingham, Brigstock, Stanion, Deene, Bulwick, Harringworth and Kettering on request.</p>
HTML
  roads => [
    '<b>A43</b> Kettering to Corby and Stamford',
    '<b>A6003</b> Corby to Uppingham and Oakham',
    '<b>A427</b> Corby to Oundle',
    '<b>A6116</b> Corby to Brigstock and Thrapston',
  ],
  near => [ 'Weldon', 'Great Oakley', 'Cottingham', 'Gretton', 'Rockingham', 'Brigstock', 'Stanion', 'Deene', 'Bulwick', 'Harringworth', 'Kettering' ],
  villages => [qw(weldon brigstock deene deenethorpe bulwick harringworth blatherwycke laxton lower-benefield upper-benefield brington)],
  faq => [
    [ 'Do you recover vans from Corby&rsquo;s industrial estates?', 'Yes, vans up to 3.5 tonnes, including long wheelbase. Trade customers can book by WhatsApp and pay on invoice.' ],
  ],
);

town(
  slug => 'rutland', name => 'Rutland', big => 'LE15', county => 'Oakham &amp; Uppingham',
  title => 'Car Recovery Rutland | Oakham &amp; Uppingham 24/7 Breakdown Recovery',
  area => 'Rutland',
  card => 'Oakham, Uppingham and Rutland Water.',
  description => '24/7 car recovery in Rutland: Oakham, Uppingham and around Rutland Water, on the A606, A6003 and A47. Fixed price before dispatch, {{PRICE}}. Call {{PHONE}}.',
  lead => 'Day out at Rutland Water and the car will not start? Broken down on the A47 near Uppingham? We cover all of Rutland from our Peterborough and Stamford side.',
  intro => <<'HTML',
<p>The A606 runs from Stamford past Empingham and the north shore of Rutland Water to Oakham. The A6003 links Oakham with Uppingham and Corby, and the A47 crosses the south of the county past Uppingham on the way to Leicester. Car parks at the reservoir are a regular pick-up, as are breakdowns on the A47 hills.</p>
<h2>Areas we cover</h2>
<p>Oakham, Uppingham, Empingham, Edith Weston, Whitwell, Exton, Greetham, Cottesmore, Ketton, the Luffenhams, Morcott, Barrowden, Lyndon, Manton and Langham.</p>
HTML
  roads => [
    '<b>A606</b> Stamford to Empingham and Oakham',
    '<b>A6003</b> Oakham to Uppingham and Corby',
    '<b>A47</b> past Uppingham, Morcott and Wansford',
    '<b>A1</b> along the eastern edge of the county',
  ],
  near => [ 'Oakham', 'Uppingham', 'Empingham', 'Edith Weston', 'Whitwell', 'Exton', 'Greetham', 'Cottesmore', 'Morcott', 'Barrowden', 'Lyndon', 'Manton' ],
  villages => [qw(empingham edith-weston whitwell exton greetham barnsdale lyndon north-luffenham south-luffenham morcott barrowden glaston seaton tixover stretton)],
  faq => [
    [ 'Do you come out to Rutland Water car parks?', 'Yes. Tell us which car park (for example Whitwell, Sykes Lane or Normanton) and we send a truck straight there.' ],
  ],
);

# ----------------------------------------------------------------- counties
# These three existed on the old site at the same paths, so they keep whatever links they earned.
sub county {
  my %c = @_;
  push @main::PAGES, {
    kind => 'county', nav => 'car-recovery', crumbs => [ [ 'Areas', 'car-recovery' ] ],
    service => 'Vehicle recovery', kicker => '24/7 county-wide recovery', %c,
  };
}

county(
  path => 'car-recovery-cambridgeshire', label => 'Cambridgeshire', area => 'Cambridgeshire', big => 'Cambs',
  card => 'Peterborough, Huntingdon, St Neots, Fenland and Cambridge.',
  title => 'Car Recovery Cambridgeshire | 24/7 Breakdown Recovery &amp; Transport',
  description => '24/7 car recovery across Cambridgeshire: Peterborough, Huntingdon, St Neots, Wisbech, March and Cambridge, on the A1(M), A14 and A47. Fixed price. Call {{PHONE}}.',
  h1 => 'Car recovery <span>Cambridgeshire</span>',
  lead => 'From the Fens to the A14 and the A1(M), one call gets you a fixed price and a truck from the nearest operator in our network.',
  body => <<'HTML',
<p>Cambridgeshire splits into very different driving. In the north, Peterborough&rsquo;s parkways and the A1(M) carry fast traffic. In the east, the fen roads around Wisbech, March and Chatteris are long and narrow with drains on both sides. In the south, the A14 and the A428 carry heavy freight into Cambridge. We cover all three.</p>
<h2>Town pages</h2>
<ul class="cards">
  <li><a href="/car-recovery/peterborough/"><strong>Peterborough</strong><span>City, parkways, A1(M) J15&ndash;17</span></a></li>
  <li><a href="/car-recovery/huntingdon/"><strong>Huntingdon</strong><span>A14, A1, St Ives, Ramsey</span></a></li>
  <li><a href="/car-recovery/st-neots/"><strong>St Neots</strong><span>A1, A428, the Black Cat</span></a></li>
  <li><a href="/car-recovery/wisbech/"><strong>Wisbech</strong><span>A47, Copart Wisbech</span></a></li>
  <li><a href="/car-recovery/march-and-whittlesey/"><strong>March &amp; Whittlesey</strong><span>A605, A141, Chatteris</span></a></li>
</ul>
<h2>Main roads</h2>
<p><a href="/roads/a1-a1m/">A1 and A1(M)</a>, <a href="/roads/a14/">A14</a>, <a href="/roads/a47/">A47</a>, <a href="/roads/peterborough-parkways/">Peterborough parkways</a>, plus the A141, A142, A605 and A428.</p>
<h2>Cambridge and the south</h2>
<p>We also take jobs in Cambridge, Ely and the villages around them, usually for transport to a garage or a long-distance delivery. Call and we tell you how soon a truck can be there.</p>
HTML
  faq => [
    [ 'Do you cover all of Cambridgeshire?', 'Yes. Peterborough, Huntingdonshire and Fenland are our busiest areas, and we take jobs in Cambridge and East Cambridgeshire too.' ],
  ],
);

county(
  path => 'car-recovery-lincolnshire', label => 'South Lincolnshire', area => 'South Lincolnshire', big => 'Lincs',
  card => 'Stamford, the Deepings, Bourne, Spalding and Holbeach.',
  title => 'Car Recovery Lincolnshire | South Lincs 24/7 Breakdown Recovery',
  description => '24/7 car recovery in South Lincolnshire: Stamford, Market Deeping, Bourne, Spalding and Holbeach, on the A1, A15, A16 and A17. Fixed price. Call {{PHONE}}.',
  h1 => 'Car recovery <span>South Lincolnshire</span>',
  lead => 'South Lincolnshire is big, flat and quiet at night. If you break down between Stamford and Holbeach, we send the nearest truck and agree the price up front.',
  body => <<'HTML',
<p>The A1 runs up the western edge of the county past Stamford. The A15 and A16 head north out of Peterborough to Bourne and Spalding, and the A17 crosses the south-east past Holbeach and Long Sutton. Long distances between towns mean a recovery operator who is already in the area makes a real difference to how long you wait.</p>
<h2>Town pages</h2>
<ul class="cards">
  <li><a href="/car-recovery/stamford/"><strong>Stamford</strong><span>A1, A43, A606</span></a></li>
  <li><a href="/car-recovery/market-deeping-and-bourne/"><strong>Market Deeping &amp; Bourne</strong><span>A15, A1175, A151</span></a></li>
  <li><a href="/car-recovery/spalding/"><strong>Spalding</strong><span>A16, A151, A17, Holbeach</span></a></li>
</ul>
<h2>Further north</h2>
<p>Grantham, Boston and Sleaford are outside our usual patch, but we take transport jobs there and beyond. Call for a price.</p>
HTML
  faq => [
    [ 'Do you cover Grantham or Boston?', 'For breakdowns, call and we check whether a truck can reach you quickly. For planned transport to or from there, yes.' ],
  ],
);

county(
  path => 'car-recovery-northamptonshire', label => 'North Northamptonshire', area => 'North Northamptonshire', big => 'Northants',
  card => 'Corby, Oundle, Thrapston and the A43 &amp; A605.',
  title => 'Car Recovery Northamptonshire | Corby, Oundle &amp; Kettering 24/7',
  description => '24/7 car recovery in North Northamptonshire: Corby, Oundle, Thrapston and Kettering, on the A43, A605, A427 and A14. Fixed price. Call {{PHONE}}.',
  h1 => 'Car recovery <span>Northamptonshire</span>',
  lead => 'The north of the county borders Peterborough and Rutland. We cover Corby, Oundle and the villages between, and the A43 and A14 corridors.',
  body => <<'HTML',
<p>North Northamptonshire is a mix of quiet stone villages in the Nene valley and busy roads around Corby and Kettering. The A43 links Kettering and Corby with the A1 at Stamford, and the A605 links Oundle and Thrapston with Peterborough.</p>
<h2>Town pages</h2>
<ul class="cards">
  <li><a href="/car-recovery/corby/"><strong>Corby</strong><span>A43, A6003, A427</span></a></li>
  <li><a href="/car-recovery/oundle/"><strong>Oundle</strong><span>A605, Nene valley villages</span></a></li>
  <li><a href="/car-recovery/rutland/"><strong>Rutland</strong><span>Oakham, Uppingham, Rutland Water</span></a></li>
</ul>
<h2>Kettering, Wellingborough and Northampton</h2>
<p>We take jobs further south on request, especially transport to or from Peterborough. Call for a fixed price.</p>
HTML
  faq => [
    [ 'Do you cover Kettering?', 'Yes, on request. Kettering is on the A14 and A43 and a truck can usually reach it from Corby or Thrapston.' ],
  ],
);

# ------------------------------------------------------------------- roads
sub road {
  my %r = @_;
  push @main::PAGES, {
    kind => 'road', nav => 'roads', crumbs => [ [ 'Roads', 'roads' ] ],
    service => 'Roadside vehicle recovery', kicker => 'Road guide &middot; 24/7 recovery', %r,
  };
}

my $SAFE = <<'HTML';
<h2>If you break down on this road</h2>
<ol class="steps">
  <li><b>Get off the road</b> if the car still moves: hard shoulder, lay-by, slip road or verge.</li>
  <li><b>Hazards on, everyone out</b> on the side away from traffic, and behind the barrier if there is one.</li>
  <li><b>Can&rsquo;t get out of a live lane?</b> Keep your seat belt on and call 999.</li>
  <li><b>Call us</b> with the road, the direction and the nearest junction, marker post or lay-by.</li>
</ol>
HTML

road(
  path => 'roads/a1-a1m', label => 'A1 &amp; A1(M)', big => 'A1(M)',
  card => 'Alconbury to Stamford: J14&ndash;17, Peterborough Services, Wansford.',
  title => 'A1(M) Breakdown Recovery Peterborough | J14&ndash;17, Wansford, Stamford',
  description => 'Broken down on the A1(M) near Peterborough or the A1 at Wansford or Stamford? 24/7 recovery, fixed price before dispatch. Junction-by-junction guide. Call {{PHONE}}.',
  h1 => 'A1(M) &amp; A1 <span>recovery</span>',
  area => 'A1(M) and A1 near Peterborough',
  lead => 'The A1(M) runs from Alconbury past Peterborough to junction 17, then becomes the A1 north through Wansford and Stamford. It is our busiest road.',
  body => <<"HTML",
<h2>The stretch we cover</h2>
<ul class="roads">
  <li><b>J14 Alconbury</b>: where the A1(M) starts, near the A14 junction.</li>
  <li><b>J15 Sawtry</b>: B1043 to Sawtry and Stilton.</li>
  <li><b>J16 Norman Cross</b>: A15 to Yaxley and Peterborough.</li>
  <li><b>J17 Peterborough</b>: Peterborough Services, the A1139 Fletton Parkway and the A605.</li>
  <li><b>A1 north</b>: Wansford (A47 junction), Stamford, and on towards Colsterworth.</li>
</ul>
<p>Tell us the junction you last passed and your direction (northbound or southbound). That is all the driver needs to find you.</p>
$SAFE
<h2>Where we take the car</h2>
<p>Off the A1 and to your home, your garage or our operator&rsquo;s yard, or on to anywhere in the UK if you are a long way from home. For long runs, see <a href="/car-transport/">car transport</a>.</p>
HTML
  faq => [
    [ 'How much is recovery from the A1(M) near Peterborough?', 'Recovery to an address in Peterborough starts {{PRICE}}. Further than that is priced on distance, and you get a fixed figure before we dispatch.' ],
    [ 'Can you take me and my car home if I live far away?', 'Yes, we can transport the car and in most cases carry passengers in the truck cab, seat belts permitting. Tell us how many people when you call.' ],
  ],
);

road(
  path => 'roads/a47', label => 'A47', big => 'A47',
  card => 'Wansford to Wisbech: Soke Parkway, Thorney, Guyhirn.',
  title => 'A47 Breakdown Recovery | Wansford, Peterborough, Thorney, Wisbech 24/7',
  description => 'Broken down on the A47 between Uppingham, Wansford, Peterborough, Thorney and Wisbech? 24/7 recovery, fixed price agreed on the call. Call {{PHONE}}.',
  h1 => 'A47 <span>recovery</span>',
  area => 'A47 between Uppingham and Wisbech',
  lead => 'The A47 crosses our whole patch from Rutland to the Fens. Busy and dual through Peterborough, narrow and exposed east of it.',
  body => <<"HTML",
<h2>The stretch we cover</h2>
<ul class="roads">
  <li><b>Uppingham to Wansford</b>: hills and bends through Rutland, single carriageway.</li>
  <li><b>Wansford</b>: junction with the A1.</li>
  <li><b>Soke Parkway</b>: the dual carriageway across the north of Peterborough.</li>
  <li><b>Eye to Thorney</b>: single carriageway, heavy with lorries.</li>
  <li><b>Guyhirn</b>: the A141 junction for March.</li>
  <li><b>Wisbech bypass</b>, and on towards King&rsquo;s Lynn.</li>
</ul>
$SAFE
<h2>Fen stretch</h2>
<p>East of Thorney there are few lay-bys and steep verges into drains. If you cannot get fully off the road, stay out of the car and well away from it, and call 999 if it is in a live lane.</p>
HTML
  faq => [
    [ 'Do you cover the A47 at night?', 'Yes, 24/7, including the Thorney to Wisbech stretch.' ],
  ],
);

road(
  path => 'roads/a14', label => 'A14', big => 'A14',
  card => 'Huntingdon bypass, Brampton, St Ives and the Thrapston stretch.',
  title => 'A14 Breakdown Recovery Huntingdon | Brampton to Cambridge, 24/7',
  description => 'Broken down on the A14 near Huntingdon, Brampton, St Ives or Thrapston? 24/7 recovery, fixed price on the call. Call {{PHONE}}.',
  h1 => 'A14 <span>recovery</span>',
  area => 'A14 around Huntingdon',
  lead => 'The A14 carries a huge amount of freight between the Midlands and Felixstowe. When a car breaks down among the lorries, it needs moving quickly.',
  body => <<"HTML",
<h2>The stretch we cover</h2>
<ul class="roads">
  <li><b>Thrapston</b>: the A605 junction for Oundle and Peterborough.</li>
  <li><b>Brampton</b>: where the A14 meets the A1.</li>
  <li><b>The Huntingdon southern bypass</b>, the newer section running south of the town.</li>
  <li><b>Swavesey to Girton</b> towards Cambridge, with St Ives just to the north.</li>
</ul>
$SAFE
HTML
  faq => [
    [ 'Can you recover a van from the A14?', 'Yes, vans up to 3.5 tonnes. Tell us the wheelbase and how much load is on board.' ],
  ],
);

road(
  path => 'roads/a16-a15', label => 'A15 &amp; A16', big => 'A15/A16',
  card => 'North out of Peterborough to Bourne, Crowland and Spalding.',
  title => 'A15 &amp; A16 Breakdown Recovery | Peterborough to Bourne &amp; Spalding',
  description => 'Broken down on the A15 to Market Deeping and Bourne, or the A16 to Crowland and Spalding? 24/7 recovery with a fixed price. Call {{PHONE}}.',
  h1 => 'A15 &amp; A16 <span>recovery</span>',
  area => 'A15 and A16 north of Peterborough',
  lead => 'Two roads head north out of Peterborough into Lincolnshire. Both are long, fast single carriageways with few places to stop.',
  body => <<"HTML",
<h2>A15</h2>
<p>From Peterborough past Glinton and Northborough, around Market Deeping, then on to Bourne and Sleaford. Busy at rush hour with commuters into the city.</p>
<h2>A16</h2>
<p>From the A47 near Eye, past Crowland and around Spalding, then on to Boston. This stretch used to be the A1073 and was renumbered as the A16 in 2011, so older sat-navs and maps may still call it that.</p>
$SAFE
HTML
  faq => [
    [ 'Is the old A1073 the same road as the A16?', 'Yes. The Peterborough to Spalding road via Crowland became part of the A16 in 2011.' ],
  ],
);

road(
  path => 'roads/peterborough-parkways', label => 'Peterborough parkways', big => 'Parkways',
  card => 'Fletton, Frank Perkins, Nene, Soke and Paston Parkways.',
  title => 'Peterborough Parkway Breakdown Recovery | Fletton, Nene, Soke 24/7',
  description => 'Broken down on a Peterborough parkway? Fletton, Frank Perkins, Nene, Soke or Paston Parkway: 24/7 recovery, fixed price agreed on the call. Call {{PHONE}}.',
  h1 => 'Parkway <span>recovery</span>',
  area => 'Peterborough parkways',
  lead => 'Peterborough&rsquo;s parkways are fast dual carriageways with short slip roads and almost no hard shoulder. A breakdown on one needs moving fast.',
  body => <<"HTML",
<h2>The parkways</h2>
<ul class="roads">
  <li><b>Fletton Parkway (A1139)</b>: from the A1(M) at junction 17 across the south of the city.</li>
  <li><b>Frank Perkins Parkway (A1139)</b>: the eastern side, past Stanground and Fengate.</li>
  <li><b>Nene Parkway (A1260)</b>: the west side, through Orton and Longthorpe.</li>
  <li><b>Soke Parkway (A47)</b>: across the north of the city.</li>
  <li><b>Paston Parkway (A15)</b>: north towards Werrington and Glinton.</li>
</ul>
<p>Tell us the parkway, which way you were heading and the last junction or roundabout you passed.</p>
$SAFE
HTML
  faq => [
    [ 'There is no hard shoulder. What do I do?', 'If you can, get onto a slip road, a verge or the next junction. If the car stops in a lane, put the hazards on and, only if it is safe, get out and behind the barrier, then call 999 before calling us.' ],
  ],
);

1;
