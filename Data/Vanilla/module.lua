-- DO NOT EDIT THIS FILE; run dataminer.lua to regenerate.
local core = LibStub("AceAddon-3.0"):GetAddon("SilverDragon")
local module = core:NewModule("Data_Vanilla")

function module:OnInitialize()
	core:RegisterMobData("Vanilla", {
		[61] = {name="Thuros Lightfingers",locations={[38]={50408320},},},
		[62] = {name="Gug Fatcandle",locations={[38]={47603180},[425]={31401740},},},
		[79] = {name="Narg the Taskmaster",locations={[38]={38008140},},},
		[99] = {name="Morgaine the Sly",locations={[38]={30806500},},},
		[100] = {name="Gruff Swiftbite",locations={[38]={25409100},},},
		[462] = {name="Vultros",locations={[52]={48403260,53402420,56203580,58001800},},tameable=true,},
		[471] = {name="Mother Fang",locations={[38]={31204420,36401880,39804780,41802160,45004200,46403180,47002420,52202700,53603260,60804700},},tameable=true,},
		[472] = {name="Fedfennel",locations={[38]={66204100},},},
		[506] = {name="Sergeant Brashclaw",locations={[52]={60407420},},},
		[507] = {name="Fenros",locations={[47]={57802900,60604060,61204680,61403440},},},
		[519] = {name="Slark",locations={[52]={49201140,55800860},},},
		[520] = {name="Brack",locations={[52]={27404500,28807280,31008140},},},
		[521] = {name="Lupos",locations={[47]={20002620,64401880},},tameable=true,},
		[534] = {name="Nefaru",locations={[47]={74007840},},},
		[572] = {name="Leprithus",locations={[52]={41202840,64006760},},},
		[573] = {name="Foe Reaper 4000",locations={[52]={37205180,44003620,53403220,62206100},},},
		[574] = {name="Naraxis",locations={[47]={86404740},},tameable=true,},
		[584] = {name="Kazon",locations={[49]={33001020},},},
		[596] = {name="Brainwashed Noble",locations={[52]={40807700,45204720,49004140,49605320,54603980,58605840,59806380,61607020},[291]={42807900},},},
		[599] = {name="Marisa du'Paige",locations={[52]={32805340,34605860,39407800,40005560,46206640,52405580,53806300,53806820},[291]={42207980},},},
		[616] = {name="Chatter",locations={[49]={37403440,44403740,47403120,51204340},},tameable=true,},
		[763] = {name="Lost One Chieftain",locations={[51]={59602640,65202240},},},
		[947] = {name="Rohh the Silent",locations={[49]={67003500,72605060},},},
		[1063] = {name="Jade",locations={[51]={30204740},},},
		[1106] = {name="Lost One Cook",locations={[51]={62402640},},},
		[1112] = {name="Leech Widow",locations={[56]={46806340},},tameable=true,},
		[1119] = {name="Hammerspine",locations={[27]={52403220,53604020,54004820,79405020},},},
		[1130] = {name="Bjarn",locations={[27]={66205960},},tameable=true,},
		[1132] = {name="Timber",locations={[469]={65003740},},tameable=true,},
		[1137] = {name="Edan the Howler",locations={[27]={29204460,30205060,34204540,46404700},},},
		[1140] = {name="Razormaw Matriarch",locations={[56]={69802920},},tameable=true,},
		[1260] = {name="Great Father Arctikus",locations={[27]={29404980,49003740},[469]={29206800,40607200,46407520,52207700,55204920,55805440,57807720,60807080,61205060,61605600,62606420,63207620,65604480,71004280,80603760},},},
		[1398] = {name="Boss Galgosh",locations={[48]={68406860,68805980},},},
		[1399] = {name="Magosh",locations={[48]={30807500},},},
		[1424] = {name="Master Digger",locations={[52]={45801820,56201260,59801820,59802660,64802440},},},
		[1425] = {name="Kubb",locations={[48]={23202900},},},
		[1531] = {name="Lost Soul",locations={[18]={53004860},},},
		[1533] = {name="Tormented Spirit",locations={[18]={44003080,45403600},},},
		[1552] = {name="Scale Belly",locations={[210]={67602520},},tameable=true,},
		[1837] = {name="Scarlet Judge",locations={[22]={69004940},[23]={7806620},},},
		[1838] = {name="Scarlet Interrogator",locations={[22]={44805220},},},
		[1839] = {name="Scarlet High Clerist",locations={[22]={41405300},},},
		[1841] = {name="Scarlet Executioner",locations={[22]={50804040},},},
		[1843] = {name="Foreman Jerris",locations={[23]={55206860},},},
		[1844] = {name="Foreman Marcrid",locations={[23]={53806840},},},
		[1847] = {name="Foulmane",locations={[22]={54008040},},},
		[1848] = {name="Lord Maldazzar",locations={[22]={65404740},},},
		[1849] = {name="Dreadwhisper",locations={[22]={63805640},},},
		[1850] = {name="Putridius",locations={[22]={69407300},[476]={69407300},},},
		[1851] = {name="The Husk",locations={[22]={63208300},},},
		[1885] = {name="Scarlet Smith",locations={[22]={53804420},},},
		[1910] = {name="Muad",locations={[18]={35804300},},},
		[1911] = {name="Deeb",locations={[18]={72402580},},},
		[1936] = {name="Farmer Solliden",locations={[18]={34205200},},},
		[2090] = {name="Ma'ruk Wyrmscale",locations={[56]={48007420},},},
		[2108] = {name="Garneg Charskull",locations={[56]={38204580},},},
		[2162] = {name="Agal",locations={[57]={47204460},},},
		[2172] = {name="Strider Clutchmother",locations={[62]={40604860},},tameable=true,},
		[2175] = {name="Shadowclaw",locations={[62]={41203580},},tameable=true,},
		[2184] = {name="Lady Moongazer",locations={[62]={44805660},},},
		[2186] = {name="Carnivous the Breaker",locations={[62]={44208260},},},
		[2191] = {name="Licillin",locations={[62]={57203280},},},
		[2192] = {name="Firecaller Radison",locations={[62]={40008300},},},
		[2258] = {name="Maggarrak",locations={[25]={60202880},},},
		[2452] = {name="Skhowl",locations={[25]={43403780},},},
		[2453] = {name="Lo'Grosh",locations={[25]={49401820},},},
		[2476] = {name="Gosh-Haldir",locations={[48]={53205580},},tameable=true,},
		[2541] = {name="Lord Sakrasis",locations={[210]={43604920},},},
		[2598] = {name="Darbel Montrose",locations={[14]={19206460},},},
		[2600] = {name="Singer",locations={[14]={27402780},},},
		[2601] = {name="Foulbelly",locations={[14]={14006740},},},
		[2602] = {name="Ruul Onestone",locations={[14]={18403060},},},
		[2603] = {name="Kovork",locations={[14]={24204440},},},
		[2604] = {name="Molok the Crusher",locations={[14]={47207700},},},
		[2605] = {name="Zalas Witherbark",locations={[14]={62608080},},},
		[2606] = {name="Nimar the Slayer",locations={[14]={67806620},},},
		[2609] = {name="Geomancer Flintdagger",locations={[14]={79402940},},},
		[2744] = {name="Shadowforge Commander",locations={[15]={39402440},},},
		[2749] = {name="Barricade",locations={[15]={9204860,27003780},},},
		[2751] = {name="War Golem",locations={[15]={48802580},},},
		[2752] = {name="Rumbler",locations={[15]={15802980},},},
		[2753] = {name="Barnabus",locations={[15]={39405940},},tameable=true,},
		[2754] = {name="Anathemus",locations={[15]={7006620},},},
		[2779] = {name="Prince Nazjak",locations={[14]={14008660,14609180},},},
		[2850] = {name="Broken Tooth",locations={[15]={22406080},},tameable=true,},
		[2931] = {name="Zaricotl",locations={[15]={54804500},},tameable=true,},
		[3058] = {name="Arra'chea",locations={[7]={48206900,52606320,56807000},},tameable=true,},
		[3068] = {name="Mazzranache",locations={[7]={42404540,47604640},},tameable=true,},
		[3253] = {name="Silithid Harvester",locations={[199]={41206700},},tameable=true,},
		[3270] = {name="Elder Mystic Razorsnout",locations={[10]={56405160,61405320},},},
		[3295] = {name="Sludge Anomaly",locations={[10]={57401920},},},
		[3398] = {name="Gesharahan",locations={[10]={39207540},},tameable=true,},
		[3470] = {name="Rathorian",locations={[10]={40803900},},},
		[3535] = {name="Blackmoss the Fetid",locations={[57]={52006380},},},
		[3581] = {name="Sewer Beast",locations={[84]={45607180,48006140,53206460,54207280,57607800,58204280,61803340,63407120,67205300,68406580},},tameable=true,},
		[3652] = {name="Trigore the Lasher",locations={[10]={42606400,60804020,61004760},},tameable=true,},
		[3672] = {name="Boahn",locations={[10]={43406580,73002620,78403900},},},
		[3735] = {name="Apothecary Falthis",faction="Horde",locations={[63]={30802260},},},
		[3736] = {name="Darkslayer Mordenthal",faction="Horde",locations={[63]={72407100},},},
		[3773] = {name="Akkrilus",locations={[63]={25006040},},},
		[3792] = {name="Terrowulf Packlord",locations={[63]={53003740},},},
		[3872] = {name="Deathsworn Captain",locations={[310]={23007440,28407560,34207600,39607880,40204380,43608460,44603080,44801860,45404120,45404700,45602440,50408260,50805000,52208840,54409400,56008320,58605320,61408220,61608740,63805220,66808460,67805780,68807880,70606880,71206280},},},
		[4015] = {name="Pridewing Patriarch",locations={[65]={55204520},},},
		[4066] = {name="Nal'taszar",locations={[65]={48407340},},},
		[4132] = {name="Krkk'kx",locations={[64]={69808560},},tameable=true,},
		[4339] = {name="Brimgore",locations={[70]={50207540},},},
		[4380] = {name="Darkmist Widow",locations={[70]={33402280},},tameable=true,},
		[5343] = {name="Lady Szallah",locations={[69]={30404580},},},
		[5345] = {name="Diamond Head",locations={[69]={49002060},},},
		[5346] = {name="Bloodroar the Stalker",locations={[69]={51806060},},},
		[5347] = {name="Antilus the Soarer",locations={[69]={53806820,56007340},},},
		[5348] = {name="Dreamwatcher Forktongue",locations={[51]={18006980},},},
		[5349] = {name="Arash-ethis",locations={[69]={37402180},},tameable=true,},
		[5350] = {name="Qirot",locations={[69]={73406380},},tameable=true,},
		[5352] = {name="Old Grizzlegut",locations={[69]={55806040,61006200},},tameable=true,},
		[5354] = {name="Gnarl Leafbrother",locations={[69]={69404220},},},
		[5356] = {name="Snarler",locations={[69]={46406900,74803620,80203980},},tameable=true,},
		[5785] = {name="Sister Hatelash",locations={[7]={31802460,53001140},},},
		[5786] = {name="Snagglespear",locations={[7]={48407040,53407140},},},
		[5787] = {name="Enforcer Emilgund",locations={[7]={40408840,60404740},},},
		[5807] = {name="The Rake",locations={[7]={49602280,55402460},},tameable=true,},
		[5808] = {name="Warlord Kolkanis",locations={[1]={47807760},},},
		[5809] = {name="Sergeant Curtis",faction="Alliance",locations={[1]={59205780},},},
		[5822] = {name="Felweaver Scornn",locations={[1]={19205360,22006140,27406080,41204520,45405080,50202240,51400920,55202520,57803120},},},
		[5823] = {name="Death Flayer",locations={[1]={34804340,40004440},},tameable=true,},
		[5824] = {name="Captain Flat Tusk",locations={[1]={38605380,42403860,44605020},},},
		[5826] = {name="Geolord Mottle",locations={[1]={43203940,43605020},},},
		[5828] = {name="Humar the Pridelord",locations={[10]={67206400},},tameable=true,},
		[5829] = {name="Snort the Heckler",locations={[199]={45404340},},tameable=true,},
		[5830] = {name="Sister Rathtalon",locations={[10]={25403340,26602780},},},
		[5831] = {name="Swiftmane",locations={[10]={63006180},},},
		[5832] = {name="Thunderstomp",locations={[199]={44407740,49808020},},tameable=true,},
		[5834] = {name="Azzere the Skyblade",locations={[199]={42205400,44805920},},tameable=true,},
		[5835] = {name="Foreman Grills",locations={[10]={57201940},},},
		[5836] = {name="Engineer Whirleygig",locations={[10]={58002040},},},
		[5837] = {name="Stonearm",locations={[10]={31804840,40004560},[199]={40600880},},},
		[5838] = {name="Brokespear",locations={[10]={51408340,52207580,57808220},},},
		[5841] = {name="Rocklance",locations={[10]={59008060},},},
		[5842] = {name="Takk the Leaper",locations={[10]={59003380,60002680,63802180,65202860},},tameable=true,},
		[5847] = {name="Heggin Stonewhisker",faction="Alliance",locations={[199]={47008860},},},
		[5848] = {name="Malgin Barleybrew",faction="Alliance",locations={[199]={47408580},},},
		[5849] = {name="Digger Flameforge",faction="Alliance",locations={[199]={47808820},},},
		[5851] = {name="Captain Gerogg Hammertoe",faction="Alliance",locations={[199]={49808940},},},
		[5859] = {name="Hagg Taurenbane",locations={[199]={40408300},},},
		[5863] = {name="Geopriest Gukk'rok",locations={[199]={42003780},},},
		[5864] = {name="Swinegart Spearhide",locations={[199]={38603340},},},
		[5865] = {name="Dishu",locations={[10]={45205280,45403280},},tameable=true,},
		[5912] = {name="Deviate Faerie Dragon",locations={[279]={72807180},},},
		[5915] = {name="Brother Ravenoak",locations={[65]={41801900},},},
		[5928] = {name="Sorrow Wing",locations={[65]={50204100},},},
		[5930] = {name="Sister Riven",locations={[65]={40407020},},},
		[5932] = {name="Taskmaster Whipfang",locations={[65]={64404540},},},
		[5933] = {name="Achellios the Banished",locations={[64]={69804960},},},
		[5935] = {name="Ironeye the Invincible",locations={[64]={61006680},},tameable=true,},
		[5937] = {name="Vile Sting",locations={[64]={5404200},},tameable=true,},
		[6118] = {name="Varo'then's Ghost",locations={[76]={33607500},},},
		[6228] = {name="Dark Iron Ambassador",locations={[226]={25405740,28204880,29604200,30806260,31206800,40406620,43805980},},},
		[6581] = {name="Ravasaur Matriarch",locations={[78]={60807280,64204540,66206640},},tameable=true,},
		[6582] = {name="Clutchmother Zavas",locations={[78]={48808500,70205000,75405440,77206260,78404860},},tameable=true,},
		[6583] = {name="Gruff",locations={[78]={31807820},},tameable=true,},
		[6584] = {name="King Mosh",locations={[78]={27603440,28004580,34403740,36203120},},tameable=true,},
		[6585] = {name="Uhk'loc",locations={[78]={62801840},},tameable=true,},
		[6648] = {name="Antilos",locations={[76]={44402740},},},
		[6649] = {name="Lady Sesspira",locations={[76]={44005980},},},
		[6650] = {name="General Fangferror",locations={[76]={59407720},},},
		[6651] = {name="Gatekeeper Rageroar",locations={[76]={32603260},},},
		[7015] = {name="Flagglemurk the Cruel",locations={[62]={58400980},},},
		[7016] = {name="Lady Vespira",locations={[62]={46404140},},},
		[7017] = {name="Lord Sinslayer",locations={[62]={34008340},},},
		[7104] = {name="Dessecus",locations={[77]={57801940},},},
		[7137] = {name="Immolatus",locations={[77]={40804300,42003680},},},
		[7846] = {name="Teremus the Devourer",locations={[17]={51204940,56204540,56405340},},},
		[8199] = {name="Warleader Krazzilak",locations={[71]={40802940},},},
		[8200] = {name="Jin'Zallah the Sandbringer",locations={[71]={37202580},},},
		[8201] = {name="Omgorn the Lost",locations={[71]={37805680,39205140},},},
		[8203] = {name="Kregg Keelhaul",locations={[71]={71204680},},},
		[8204] = {name="Soriid the Devourer",locations={[71]={35004620,51406260,52407280},},tameable=true,},
		[8205] = {name="Haarka the Ravenous",locations={[71]={56406820,58602440},},tameable=true,},
		[8207] = {name="Emberwing",locations={[71]={48004500},},tameable=true,},
		[8208] = {name="Murderous Blisterpaw",locations={[71]={52203400},},tameable=true,},
		[8210] = {name="Razortalon",locations={[26]={66005300},},},
		[8211] = {name="Old Cliff Jumper",locations={[26]={13205380},},tameable=true,},
		[8212] = {name="The Reak",locations={[26]={57404300},},},
		[8213] = {name="Ironback",locations={[26]={79605780},},tameable=true,},
		[8214] = {name="Jalinde Summerdrake",faction="Alliance",locations={[26]={34405500},},},
		[8215] = {name="Grimungous",locations={[26]={71406100,74805500},},},
		[8216] = {name="Retherokk the Berserker",locations={[26]={47606660},},},
		[8217] = {name="Mith'rethis the Enchanter",locations={[26]={64808140},},},
		[8218] = {name="Witherheart the Stalker",locations={[26]={39606640},},},
		[8219] = {name="Zul'arek Hatefowler",locations={[26]={24606540},},},
		[8277] = {name="Rekk'tilac",locations={[32]={28806900,51407140},},tameable=true,},
		[8278] = {name="Smoldar",locations={[32]={48603740},},},
		[8279] = {name="Faulty War Golem",locations={[32]={56405500,62406140},},},
		[8280] = {name="Shleipnarr",locations={[32]={57004560,58005800},},},
		[8281] = {name="Scald",locations={[32]={40205860},},},
		[8282] = {name="Highlord Mastrogonde",locations={[32]={29202580},},},
		[8283] = {name="Slave Master Blackheart",locations={[32]={37404420},},},
		[8296] = {name="Mojo the Twisted",locations={[17]={46402620},},},
		[8297] = {name="Magronos the Unyielding",locations={[17]={46003900},},},
		[8298] = {name="Akubar the Seer",locations={[17]={73405500},},},
		[8299] = {name="Spiteflayer",locations={[17]={53802980,56003800,59003000,61204060},},tameable=true,},
		[8300] = {name="Ravage",locations={[17]={48403420},},tameable=true,},
		[8301] = {name="Clack the Reaver",locations={[17]={46801460},},tameable=true,},
		[8302] = {name="Deatheye",locations={[17]={52402700},},tameable=true,},
		[8303] = {name="Grunter",locations={[17]={54403940},},tameable=true,},
		[8304] = {name="Dreadscorn",locations={[17]={36602820},},},
		[8503] = {name="Gibblewilt",locations={[469]={40004580},},},
		[8660] = {name="The Evalcharr",locations={[76]={14005020,15005820},},tameable=true,},
		[8923] = {name="Panzor the Invincible",locations={[242]={47003720,48003200,49804240},},},
		[8924] = {name="The Behemoth",locations={[32]={34406360,34806880,37605760,43005920,46605300,48605820,48806340,53605760},[36]={34606640,37406080,42806100,47205200,48605820,53605680,54606320},},},
		[8976] = {name="Hematos",locations={[36]={27405900},},},
		[8978] = {name="Thauris Balgarr",locations={[36]={43803980},},},
		[8979] = {name="Gruklash",locations={[36]={33403680},},},
		[8981] = {name="Malfunctioning Reaver",locations={[36]={50403580,55004360,76003200},},},
		[9217] = {name="Spirestone Lord Magus",locations={[250]={35605780,41405860,58205140},},},
		[9218] = {name="Spirestone Battle Lord",locations={[250]={35205580,43205780},},},
		[9219] = {name="Spirestone Butcher",locations={[250]={51205670},},},
		[9596] = {name="Bannok Grimaxe",locations={[250]={47605620,47906420,50805120,57607320,66005080},},},
		[9602] = {name="Hahk'Zor",locations={[36]={68404040},},},
		[9604] = {name="Gorgon'och",locations={[36]={63404580},},},
		[9718] = {name="Ghok Bashguud",locations={[250]={34407100,34806040,39607380,42407940},},},
		[9736] = {name="Quartermaster Zigris",locations={[250]={53908440},},},
		[10077] = {name="Deathmaw",locations={[36]={63203220,68605560,70203100,73605000},},tameable=true,},
		[10078] = {name="Terrorspark",locations={[36]={56203300},},},
		[10080] = {name="Sandarr Dunereaver",locations={[219]={44601540,52404240,64602700},},},
		[10081] = {name="Dustwraith",locations={[219]={24201780,29603780,30004380,30402040,35204520,35601660,39002840,39205060,43601980,44405200,47605740,48204640,48802220,53202740,54204600,54404100,56605400,56609140,57407900,57408460,58606680,58607300,59406000},},},
		[10082] = {name="Zerillis",locations={[219]={25401780,36604400,43202020,48004600,51003920,51005700,55205120,57208580,57407800,58402400,58803740,63402660,63604320,64802140},},},
		[10119] = {name="Volchan",locations={[36]={19204140},},},
		[10196] = {name="General Colbatann",locations={[83]={55606420,62406420},},},
		[10197] = {name="Mezzir the Howler",locations={[83]={24205140},},},
		[10198] = {name="Kashoch the Reaver",locations={[83]={61208380},},},
		[10199] = {name="Grizzle Snowpaw",locations={[83]={68405020},},},
		[10200] = {name="Rak'shiri",locations={[83]={46201860},},tameable=true,},
		[10202] = {name="Azurous",locations={[83]={52406060,58205500,63405560,65606580},},},
		[10263] = {name="Burning Felguard",locations={[250]={37405500,44405760,52205540,56603860,57405760,64204160,65005740,66404840},},},
		[10356] = {name="Bayne",locations={[18]={45404940},},tameable=true,},
		[10357] = {name="Ressan the Needler",locations={[18]={53405740},},tameable=true,},
		[10358] = {name="Fellicent's Shade",locations={[18]={77005980},},},
		[10359] = {name="Sri'skulk",locations={[18]={84404920},},tameable=true,},
		[10376] = {name="Crystal Fang",locations={[250]={51407420,57607340},},tameable=true,},
		[10393] = {name="Skul",locations={[317]={55807020,57606420,72005660,78602220,78604600,81203420},},},
		[10558] = {name="Hearthsinger Forresten",locations={[317]={59202740,64802520,83604440,83802760},},},
		[10559] = {name="Lady Vespia",locations={[63]={12001500,12202940,14602380},},},
		[10639] = {name="Rorgish Jowl",locations={[63]={37003360},},},
		[10640] = {name="Oakpaw",locations={[63]={54006300},},},
		[10641] = {name="Branch Snapper",locations={[63]={42204500,43805120},},},
		[10642] = {name="Eck'alom",locations={[63]={46406940},},},
		[10644] = {name="Mist Howler",locations={[63]={22803420,25202680,26001560},},tameable=true,},
		[10647] = {name="Prince Raze",locations={[63]={66605680,78404520},},},
		[10741] = {name="Sian-Rotam",locations={[83]={45801740},},tameable=true,},
		[10809] = {name="Stonespine",locations={[317]={44002100,54404940,56001780,57603720,61002460,61404760,61405860,63407120,66802840,66807960,67402120,68203360,69201580,70004820,70603880,76204760},},},
		[10817] = {name="Duggan Wildhammer",locations={[23]={35806220},},},
		[10818] = {name="Death Knight Soulbearer",locations={[23]={65202460},},},
		[10819] = {name="Baron Bloodbane",locations={[23]={35402120},},},
		[10820] = {name="Duke Ragereaver",locations={[23]={26001180},[317]={26401160},},},
		[10821] = {name="Hed'mush the Rotting",locations={[23]={79003900},},},
		[10823] = {name="Zul'Brin Warpbranch",locations={[23]={64001220},},},
		[10824] = {name="Death-Hunter Hawkspear",locations={[23]={47202140},},},
		[10825] = {name="Gish the Unmoving",locations={[23]={25806800},},},
		[10826] = {name="Lord Darkscythe",locations={[23]={33204740},},},
		[10827] = {name="Deathspeaker Selendre",locations={[23]={17007860,79204040},},},
		[10828] = {name="Lynnia Abbendis",locations={[23]={77407220},},},
		[11383] = {name="High Priestess Hai'watna",locations={[50]={67003160},},},
		[11447] = {name="Mushgog",locations={[69]={69206060},},},
		[11467] = {name="Tsu'zee",locations={[235]={30604380,31401420,32003760,32202000,32803020,35805260,37602260,44202300,52002480,57201720},},},
		[11497] = {name="The Razza",locations={[69]={84504970},},tameable=true,},
		[11498] = {name="Skarr the Broken",locations={[69]={84203700},},},
		[11688] = {name="Cursed Centaur",locations={[66]={13404700,16004000,16405380,18405940,21804540,22005260,27606280,54807760},},},
		[12037] = {name="Ursol'lok",locations={[63]={89204620},},tameable=true,},
		[12237] = {name="Meshlok the Harvester",locations={[280]={20406940,23207440,24608660,24807960,26406940,26605760,30608580,36406500},},},
		[12431] = {name="Gorefang",locations={[21]={56002380,57201600,60000900},},tameable=true,},
		[12433] = {name="Krethis the Shadowspinner",locations={[21]={35001540},},tameable=true,},
		[13896] = {name="Scalebeard",locations={[76]={41804940},},tameable=true,},
		[14221] = {name="Gravis Slipknot",locations={[25]={55402380},},},
		[14222] = {name="Araga",locations={[25]={44205400},},tameable=true,},
		[14223] = {name="Cranky Benj",locations={[25]={56406220,60405400,60604660,67403420},},tameable=true,},
		[14224] = {name="7:XT",locations={[15]={77803140},},},
		[14225] = {name="Prince Kellen",locations={[66]={74401240,75401880},},},
		[14226] = {name="Kaskk",locations={[66]={50007200,50408120,56607420},},},
		[14227] = {name="Hissperak",locations={[66]={41804660,42804140,43006120,46405400,50804840},},tameable=true,},
		[14228] = {name="Giggler",locations={[66]={57800860,58601780,60202460,63403440,66002480},},tameable=true,},
		[14229] = {name="Accursed Slitherblade",locations={[66]={29401380,30601960,32600580},},},
		[14230] = {name="Burgle Eye",locations={[70]={57801620,58400920},},},
		[14231] = {name="Drogoth the Roamer",locations={[70]={38601980},},},
		[14232] = {name="Dart",locations={[70]={46801740},},tameable=true,},
		[14233] = {name="Ripscale",locations={[70]={37604980,42005500,43404980,49205720},},tameable=true,},
		[14234] = {name="Hayoc",locations={[70]={46006100},},tameable=true,},
		[14235] = {name="The Rot",locations={[70]={51406060},},},
		[14236] = {name="Lord Angler",locations={[70]={55406340},},},
		[14237] = {name="Oozeworm",locations={[70]={35007060,36606180},},tameable=true,},
		[14266] = {name="Shanda the Spinner",locations={[48]={61607440},},tameable=true,},
		[14267] = {name="Emogg the Crusher",locations={[48]={66802180,69402700,72402180},},},
		[14268] = {name="Lord Condar",locations={[48]={64807500,70407440,74206800,75607320,76006260},},tameable=true,},
		[14269] = {name="Seeker Aqualon",locations={[49]={70005460},},},
		[14270] = {name="Squiddic",locations={[49]={37404220},},},
		[14271] = {name="Ribchaser",locations={[49]={29406100},},},
		[14272] = {name="Snarlflare",locations={[49]={34405980},},},
		[14273] = {name="Boulderheart",locations={[49]={56405140},},},
		[14275] = {name="Tamra Stormpike",faction="Alliance",locations={[25]={63208580},},},
		[14276] = {name="Scargil",locations={[25]={32207940},},},
		[14277] = {name="Lady Zephris",locations={[25]={54407660},},},
		[14278] = {name="Ro'Bark",locations={[25]={57407300},},},
		[14279] = {name="Creepthess",locations={[25]={43407460},},tameable=true,},
		[14280] = {name="Big Samras",locations={[25]={63605260},},tameable=true,},
		[14281] = {name="Jimmy the Bleeder",locations={[25]={49805020},},},
		[14339] = {name="Death Howl",locations={[77]={48207440,53808480},},tameable=true,},
		[14340] = {name="Alshirr Banebreath",locations={[77]={39608140},},},
		[14342] = {name="Ragepaw",locations={[77]={48608820},},},
		[14343] = {name="Olm the Wise",locations={[77]={54002740,57401940},},tameable=true,},
		[14344] = {name="Mongress",locations={[77]={43607540,46808220},},tameable=true,},
		[14345] = {name="The Ongar",locations={[77]={41804580},},},
		[14424] = {name="Mirelow",locations={[56]={50403020,52003560,55802820},},},
		[14425] = {name="Gnawbone",locations={[56]={31003240,34402720},},},
		[14426] = {name="Harb Foulmountain",locations={[64]={38402700},},},
		[14427] = {name="Gibblesnik",locations={[64]={39803260},},},
		[14428] = {name="Uruson",locations={[57]={65205120},},},
		[14429] = {name="Grimmaw",locations={[57]={51603860},},},
		[14430] = {name="Duskstalker",locations={[57]={52006740,57406640},},tameable=true,},
		[14431] = {name="Fury Shelda",locations={[57]={36603100,39603740},},},
		[14432] = {name="Threggil",locations={[57]={40804440,42408300,43205060,44405820,45206380,46206900,46807460,48605080,50605600,53004420,55605960,60806620,61006000},},},
		[14433] = {name="Sludginn",locations={[56]={44402480},},},
		[14445] = {name="Captain Wyrmak",locations={[51]={74604540},},},
		[14446] = {name="Fingat",locations={[51]={62008020,76808660},},},
		[14447] = {name="Gilmorian",locations={[51]={89806700},},},
		[14448] = {name="Molt Thorn",locations={[51]={49804140},},},
		[14471] = {name="Setis",locations={[81]={36008220},},},
		[14472] = {name="Gretheer",locations={[81]={36003880,44405040,52005580,64005880},},tameable=true,},
		[14473] = {name="Lapress",locations={[81]={55407100,57607600,62207060},},tameable=true,},
		[14474] = {name="Zora",locations={[81]={25806120,27605360,31206320},},tameable=true,},
		[14475] = {name="Rex Ashil",locations={[81]={50402780},},tameable=true,},
		[14476] = {name="Krellack",locations={[81]={61801940,64603980,67402980},},tameable=true,},
		[14477] = {name="Grubthor",locations={[81]={33607220,40406520,48607100,49406380},},tameable=true,},
		[14478] = {name="Huricanian",locations={[81]={28802220,33801460},},},
		[14479] = {name="Twilight Lord Everun",locations={[81]={26207560,35003080,44204020},},},
		[14487] = {name="Gluggl",locations={[50]={41003940},},},
		[14488] = {name="Roloch",locations={[50]={44405220,45604700},},},
		[14490] = {name="Rippa",locations={[210]={41207180},},},
		[14491] = {name="Kurmokk",locations={[210]={48205780,53405300,58604740},},tameable=true,},
		[14492] = {name="Verifonix",locations={[210]={53202740},},},
		[14506] = {name="Lord Hel'nurath",locations={[235]={33205820},},},
		[16184] = {name="Nerubian Overseer",locations={[23]={4203600},},},
		[16379] = {name="Spirit of the Damned",locations={[317]={59402920},},},
		[90816] = {name="Skystormer",locations={[69]={53606460},},},
		[100000] = {name="Pit Commander Galvinoth",locations={[23]={75604900},},},
		[107431] = {name="Weaponized Rabbot",locations={[27]={43003300},[469]={66002660,67403180},},tameable=true,},
		[107477] = {name="N.U.T.Z.",locations={[76]={43407700},},tameable=true,},
		[107595] = {name="Grimrot",locations={[77]={38404480},},tameable=true,},
		[107596] = {name="Grimrot",locations={[77]={38204540},},tameable=true,},
		[107617] = {name="Ol' Muddle",locations={[26]={43805700,45606240,49205720,53004820,60205240,63404220,69606100,71205140},},tameable=true,},
		[111122] = {name="Large Vile Slime",locations={[22]={69004580},},notes="Paladin Corrupted Ashbringer",},
		[118244] = {name="Lightning Paw",locations={[47]={16405400,16406040,23207660,24203960,30004140},},tameable=true,},
	})
end
