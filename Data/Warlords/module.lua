-- DO NOT EDIT THIS FILE; run dataminer.lua to regenerate.
local core = LibStub("AceAddon-3.0"):GetAddon("SilverDragon")
local module = core:NewModule("Data_Warlords")

function module:OnInitialize()
	core:RegisterMobData("Warlords", {
		[50883] = {name="Pathrunner",locations={[539]={38803640,42603080,44404340,45806860,52803100,56205240},},mount=636,},
		[50981] = {name="Luk'hok",locations={[550]={65604180,71005660,76003000,77404060,79205680,83806480},},mount=614,},
		[50985] = {name="Poundfist",locations={[543]={40602580,43205550,45404750,48405680,51404310},},mount=655,},
		[50990] = {name="Nakk the Thunderer",locations={[550]={48803420,54403540,60203280,62201500,64402040},},mount=612,tameable=true,},
		[50992] = {name="Gorok",locations={[525]={22406620,51205020,57401820,63407960,64605200},},mount=627,},
		[51015] = {name="Silthide",locations={[535]={51408120,61803120,62004540,67206040,78405500},},mount=630,},
		[71665] = {name="Giant-Slayer Kul",locations={[525]={54602220},},quest=32918,},
		[71721] = {name="Canyon Icemother",locations={[525]={33802300},},quest=32941,tameable=true,vignette=195,},
		[72156] = {name="Borrok the Devourer",locations={[525]={62604220},},},
		[72294] = {name="Cindermaw",locations={[525]={40604700},},quest=33014,},
		[72362] = {name="Ku'targ the Voidseer",locations={[539]={32203500},},quest=33039,vignette=13,},
		[72364] = {name="Gorg'ak the Lava Guzzler",locations={[525]={70802780},},quest=33512,vignette=203,},
		[72537] = {name="Leaf-Reader Kurri",locations={[539]={37401440},},quest=33055,vignette=23,},
		[72606] = {name="Rockhoof",locations={[539]={52805080},},quest=34068,tameable=true,},
		[74206] = {name="Killmaw",locations={[539]={40604460},},quest=33043,tameable=true,},
		[74613] = {name="Broodmother Reeg'ak",locations={[525]={65403140},},quest=33843,},
		[74971] = {name="Firefury Giant",locations={[525]={71404680},},quest=33504,vignette=200,},
		[75071] = {name="Mother Om'ra",locations={[539]={43805760},},quest=33642,},
		[75434] = {name="Windfang Matriarch",locations={[539]={42604060},},quest=33038,vignette=16,},
		[75435] = {name="Yggdrel",locations={[539]={48406540},},quest=33389,toy=113570,vignette=30,},
		[75482] = {name="Veloss",locations={[539]={21402080},},quest=33640,tameable=true,},
		[75492] = {name="Venomshade",locations={[539]={54607020},},quest=33643,vignette=207,},
		[75590] = {name="Enormous Bullfrog",locations={[301]={10603260,12003800,21803220},},},
		[76380] = {name="Gorum",locations={[539]={21603300,29604160,31004700,33203520},},quest=33664,},
		[76473] = {name="Mother Araneae",locations={[543]={53407820},},quest=34726,tameable=true,vignette=336,},
		[76914] = {name="Coldtusk",locations={[525]={54206740},},quest=34131,tameable=true,},
		[76918] = {name="Primalist Mur'og",locations={[525]={37003380},},quest=33938,vignette=214,},
		[77081] = {name="The Lanticore",locations={[616]={29404100,35603740},},},
		[77085] = {name="Dark Emanation",locations={[539]={48404300},},quest=33064,vignette=215,},
		[77140] = {name="Amaukwa",locations={[539]={29203100,34803460,35202900,40203000},},quest=33061,tameable=true,},
		[77310] = {name="Mad \"King\" Sporeon",locations={[539]={44602100},},quest=35906,},
		[77513] = {name="Coldstomp the Griever",locations={[525]={25405440},},quest=34129,tameable=true,vignette=225,},
		[77519] = {name="Giantbane",locations={[525]={57003800,58603240},},tameable=true,},
		[77526] = {name="Scout Goreseeker",locations={[525]={76406340},[543]={27407160},},quest=34132,},
		[77527] = {name="The Beater",locations={[525]={26603140},},quest=34133,},
		[77529] = {name="Yazheera the Incinerator",locations={[535]={53802580},[543]={30201120},},quest=34135,},
		[77561] = {name="Dr. Gloom",locations={[535]={68201580},},quest=34142,},
		[77614] = {name="Frenzied Golem",locations={[535]={46205500},},quest=34145,vignette=236,},
		[77620] = {name="Cro Fleshrender",locations={[535]={37207020},},quest=34165,},
		[77626] = {name="Hen-Mother Hami",locations={[535]={75405080},},quest=34167,tameable=true,},
		[77634] = {name="Taladorantula",locations={[535]={58608740},},quest=34171,tameable=true,},
		[77664] = {name="Aarko",locations={[535]={36409600},},quest=34182,vignette=241,},
		[77715] = {name="Hammertooth",locations={[535]={61004600},},quest=34185,tameable=true,},
		[77719] = {name="Glimmerwing",locations={[535]={30406420},},quest=34189,tameable=true,},
		[77741] = {name="Ra'kahn",locations={[535]={59405940},},quest=34196,tameable=true,},
		[77750] = {name="Kaavu the Crimson Claw",locations={[535]={77805660},},quest=34199,vignette=248,},
		[77776] = {name="Wandering Vindicator",locations={[535]={69203340},},quest=34204,vignette=249,},
		[77784] = {name="Lo'marg Jawcrusher",locations={[535]={49009220},[542]={29401540},},quest=34208,},
		[77828] = {name="Echo of Murmur",locations={[535]={34005720},},quest=34220,toy=113670,},
		[78128] = {name="Gronnstalker Dawarn",locations={[525]={56203840,58803240},},quest=34130,},
		[78134] = {name="Pathfinder Jalog",locations={[525]={57403740},},quest=34130,},
		[78144] = {name="Giantslayer Kimla",locations={[525]={57403740},},quest=34130,},
		[78150] = {name="Beastcarver Saramor",locations={[525]={57403740},},quest=34130,},
		[78151] = {name="Huntmaster Kuang",locations={[525]={56203860,58403240},},quest=34130,vignette="Giantstalker Hunting Party",},
		[78161] = {name="Hyperious",locations={[550]={87005480},},quest=34862,vignette=332,},
		[78169] = {name="Cloudspeaker Daber",locations={[525]={56403820,58403240},},},
		[78260] = {name="King Slime",locations={[543]={52205540},},quest=37412,},
		[78265] = {name="The Bone Crawler",locations={[525]={72203300},},quest=34361,},
		[78269] = {name="Gnarljaw",locations={[543]={49403960,52803340,52805340,53202820,54803880},},quest=37413,},
		[78606] = {name="Pale Fishmonger",locations={[525]={28206640},},quest=34470,vignette=259,},
		[78621] = {name="Cyclonic Fury",locations={[525]={66407720},},quest=34477,},
		[78710] = {name="Kharazos the Triumphant",locations={[535]={56206540},},quest=35220,toy=116122,vignette=262,},
		[78713] = {name="Galzomar",locations={[535]={56206540},},quest=34483,toy=116122,vignette=657,},
		[78715] = {name="Sikthiss, Maiden of Slaughter",locations={[535]={56206540},},quest=35219,toy=116122,vignette=346,},
		[78867] = {name="Breathless",locations={[525]={26804940},},quest=34497,toy=111476,},
		[78872] = {name="Klikixx",locations={[535]={66808540},},quest=34498,tameable=true,toy=116125,},
		[79024] = {name="Warmaster Blugthol",locations={[550]={82607620},},quest=34645,},
		[79104] = {name="Ug'lok the Frozen",locations={[525]={40201220},},quest=34522,},
		[79145] = {name="Yaga the Scarred",locations={[525]={40402740},},quest=34559,},
		[79334] = {name="No'losh",locations={[535]={85602900},},quest=34859,tameable=true,},
		[79485] = {name="Talonpriest Zorkra",locations={[535]={53809100},},quest=34668,},
		[79524] = {name="Hypnocroak",locations={[539]={37204900},},quest=35558,toy=113631,},
		[79543] = {name="Shirzir",locations={[535]={42805420,66202360},},quest=34671,},
		[79629] = {name="Stomper Kreego",locations={[543]={38206620},},quest=35910,},
		[79686] = {name="Silverleaf Ancient",locations={[539]={61406800},},},
		[79692] = {name="Silverleaf Ancient",locations={[539]={61406740},},},
		[79693] = {name="Silverleaf Ancient",locations={[539]={61406760},},},
		[79725] = {name="Captain Ironbeard",locations={[550]={34407700},},quest=34727,toy=118244,vignette=318,},
		[79938] = {name="Shadowbark",locations={[542]={51803540},},quest=36478,},
		[80057] = {name="Soulfang",locations={[550]={75206460},},quest=36128,},
		[80122] = {name="Gaz'orda",locations={[550]={43407760},},quest=34725,tameable=true,vignette=339,},
		[80190] = {name="Gruuk",locations={[525]={50405240,51806480},},quest=34825,},
		[80204] = {name="Felbark",locations={[535]={49208340},},quest=35018,},
		[80235] = {name="Gurun",locations={[525]={46605500},},quest=34839,vignette=328,},
		[80242] = {name="Chillfang",locations={[525]={41206820},},quest=34843,tameable=true,},
		[80312] = {name="Grutush the Pillager",locations={[525]={38406300},},quest=34865,vignette=334,},
		[80370] = {name="Lernaea",locations={[550]={49008260,52208980,54008000},},quest=37408,tameable=true,},
		[80371] = {name="Typhon",locations={[543]={75404240},},quest=37405,},
		[80372] = {name="Echidna",locations={[542]={69205380},},quest=37406,tameable=true,},
		[80398] = {name="Keravnos",locations={[534]={38408060},},quest=37407,tameable=true,},
		[80471] = {name="Gennadian",locations={[535]={67208020},},quest=34929,tameable=true,},
		[80524] = {name="Underseer Bloodmane",locations={[535]={63602100},},quest=34945,},
		[80614] = {name="Blade-Dancer Aeryx",locations={[542]={46802300},},quest=35599,},
		[80725] = {name="Sulfurious",locations={[543]={39406040},},quest=36394,toy=114227,},
		[80868] = {name="Glut",locations={[543]={45605060},},quest=36204,vignette=434,},
		[81001] = {name="Nok-Karosh",locations={[525]={13805140},},mount=657,tameable=true,},
		[81038] = {name="Gelgor of the Blue Flame",locations={[543]={29003880,34203800,41804540},},quest=36391,},
		[81330] = {name="Warleader Tome",locations={[550]={},},toy=120276,},
		[81406] = {name="Bahameye",locations={[539]={29000540},},quest=35281,},
		[81639] = {name="Brambleking Fili",locations={[539]={44807620},},quest=33383,},
		[82050] = {name="Varasha",locations={[542]={29404140},},pet=1541,quest=35334,tameable=true,},
		[82058] = {name="Depthroot",locations={[543]={72204080},},quest=35996,},
		[82085] = {name="Bashiok",locations={[543]={40007900},},quest=35335,toy=118222,},
		[82207] = {name="Faebright",locations={[539]={61606180},},quest=35725,},
		[82247] = {name="Nas Dunberlin",locations={[542]={36205220},},quest=36129,},
		[82268] = {name="Darkmaster Go'vid",locations={[539]={38408300},},quest=35448,},
		[82311] = {name="Char the Burning",locations={[543]={53404460},},quest=35503,},
		[82326] = {name="Ba'ruun",locations={[539]={52801640},},quest=35731,},
		[82362] = {name="Morva Soultwister",locations={[539]={38607020},},quest=35523,},
		[82374] = {name="Rai'vosh",locations={[539]={48602260},},quest=35553,},
		[82411] = {name="Darktalon",locations={[539]={49404180},},quest=35555,},
		[82415] = {name="Shinri",locations={[539]={59005700,61005020},},quest=35732,},
		[82486] = {name="Explorer Nozzand",locations={[550]={88804100},},quest=35623,},
		[82536] = {name="Gorivax",locations={[525]={38001400},},quest=37388,},
		[82614] = {name="Moltnoma",locations={[525]={42402140},},quest=37387,},
		[82616] = {name="Jabberjaw",locations={[525]={48402340},},quest=37386,tameable=true,},
		[82617] = {name="Slogtusk the Corpse-Eater",locations={[525]={44601500},},quest=37385,tameable=true,vignette=374,},
		[82618] = {name="Tor'goroth",locations={[525]={43400900},},quest=37384,toy=119163,},
		[82620] = {name="Son of Goramal",locations={[525]={37801580},},quest=37383,},
		[82676] = {name="Enavra",locations={[539]={67806380},},quest=35688,vignette=378,},
		[82742] = {name="Enavra",locations={[539]={67806380},},notes="Interact with the corpse",quest=35688,vignette=378,},
		[82755] = {name="Redclaw the Feral",locations={[550]={73605780},},quest=35712,},
		[82758] = {name="Greatfeather",locations={[550]={66805120},},quest=35714,tameable=true,},
		[82764] = {name="Gar'lua",locations={[550]={52205580},},quest=35715,},
		[82778] = {name="Gnarlhoof the Rabid",locations={[550]={66605620},},quest=35717,tameable=true,},
		[82826] = {name="Berserk T-300 Series Mark II",locations={[550]={76406440},},quest=35735,},
		[82876] = {name="Grand Marshal Tremblade",faction="Alliance",locations={[588]={45207900},},},
		[82877] = {name="High Warlord Volrath",faction="Horde",locations={[588]={46202180,48002860},},},
		[82878] = {name="Marshal Gabriel",faction="Alliance",locations={[588]={45207940},},},
		[82880] = {name="Marshal Karsh Stormforge",faction="Alliance",locations={[588]={45007940},},},
		[82882] = {name="General Aevd",faction="Horde",locations={[588]={46202180},},},
		[82883] = {name="Warlord Noktyn",faction="Horde",locations={[588]={46402160},},},
		[82899] = {name="Ancient Blademaster",locations={[550]={84405300},},quest=35778,},
		[82912] = {name="Grizzlemaw",locations={[550]={89407240},},quest=35784,tameable=true,},
		[82920] = {name="Lord Korinak",locations={[535]={31002680},},quest=37345,},
		[82922] = {name="Xothear, the Destroyer",locations={[535]={36801460},},quest=37343,vignette=589,},
		[82930] = {name="Shadowflame Terrorwalker",locations={[535]={41004200},},quest=37347,vignette=576,},
		[82942] = {name="Lady Demlash",locations={[535]={33403820},},quest=37346,},
		[82975] = {name="Fangler",locations={[550]={74801180},},quest=35836,},
		[82988] = {name="Kurlosh Doomfang",locations={[535]={37403740},},quest=37348,},
		[82992] = {name="Felfire Consort",locations={[535]={47803300},},quest=37341,},
		[82998] = {name="Matron of Sin",locations={[535]={38804980},},quest=37349,},
		[83008] = {name="Haakun the All-Consuming",locations={[535]={48002540},},quest=37312,vignette=562,},
		[83019] = {name="Gug'tol",locations={[535]={47603900},},quest=37340,},
		[83385] = {name="Voidseer Kalurg",locations={[539]={32604140},},quest=35847,},
		[83401] = {name="Netherspawn",locations={[550]={47407020},},pet=1524,quest=35865,},
		[83409] = {name="Ophiis",locations={[550]={38604980,44804800},},quest=35875,},
		[83428] = {name="Windcaller Korast",locations={[550]={70402900},},quest=35877,},
		[83483] = {name="Flinthide",locations={[550]={69604140},},quest=35893,tameable=true,},
		[83509] = {name="Gorepetal",locations={[550]={93202820},},quest=35898,},
		[83522] = {name="Hive Queen Skrikka",locations={[543]={52207020},},quest=35908,tameable=true,vignette=406,},
		[83526] = {name="Ru'klaa",locations={[550]={57808380},},quest=35900,},
		[83542] = {name="Sean Whitesea",locations={[550]={60804780},},quest=35912,},
		[83553] = {name="Insha'tar",locations={[539]={57404840},},quest=35909,tameable=true,},
		[83591] = {name="Tura'aka",locations={[550]={64603940},},quest=35920,tameable=true,},
		[83603] = {name="Hunter Blacktooth",locations={[550]={80403040},},quest=35923,},
		[83634] = {name="Scout Pokhar",locations={[550]={54806120},},quest=35931,},
		[83643] = {name="Malroc Stonesunder",locations={[550]={81005980},},quest=35932,},
		[83680] = {name="Outrider Duretha",locations={[550]={61806900},},quest=35943,},
		[83683] = {name="Mandragoraster",locations={[588]={30203140,49205080},},},
		[83691] = {name="Panthora",locations={[588]={57405740},},},
		[83713] = {name="Titarus",locations={[588]={33404980,44207540,46406480,46805100,48009120,48605780,52606880,61206940},},},
		[83746] = {name="Rukhmar",boss=true,locations={[542]={36003900},},mount=634,tameable=true,notes="Weekly; flies",},
		[83819] = {name="Brickhouse",locations={[588]={61803020},},},
		[83990] = {name="Solar Magnifier",locations={[542]={51800740},},quest=37394,},
		[84110] = {name="Korthall Soulgorger",locations={[588]={36806700},},},
		[84196] = {name="Web-wrapped Soldier",locations={[588]={35006060,35406620,37405540,43405780},},},
		[84263] = {name="Graveltooth",locations={[550]={83403700},},quest=36159,},
		[84374] = {name="Kaga the Ironbender",locations={[525]={86804660},},quest=37404,},
		[84376] = {name="Earthshaker Holar",locations={[525]={84204640},},quest=37403,},
		[84378] = {name="Ak'ox the Slaughterer",locations={[525]={88405740},},quest=37525,},
		[84392] = {name="Ragore Driftstalker",locations={[525]={86804900},},quest=37401,},
		[84406] = {name="Mandrakor",locations={[543]={50405300},},pet=1564,quest=36178,vignette=428,},
		[84417] = {name="Mutafen",locations={[542]={53208900},},quest=36396,},
		[84431] = {name="Greldrok the Cunning",locations={[543]={46604300},},quest=36186,},
		[84435] = {name="Mr. Pinchy Sr.",locations={[550]={45601520},},quest=36229,},
		[84465] = {name="Leaping Gorger",locations={[588]={55207500,58006560,62407240},},},
		[84746] = {name="Captured Gor'vosh Stoneshaper",locations={[588]={54403200,60203000,61402320},},},
		[84775] = {name="Tesska the Broken",locations={[542]={57207380},},quest=36254,},
		[84805] = {name="Stonespite",locations={[542]={33402200},},quest=36265,tameable=true,},
		[84807] = {name="Durkath Steelmaw",locations={[542]={46202860},},quest=36267,},
		[84810] = {name="Kalos the Bloodbathed",locations={[542]={62803740},},quest=36268,},
		[84833] = {name="Sangrikass",locations={[542]={68804900},},quest=36276,},
		[84836] = {name="Talonbreaker",locations={[542]={54406320},},quest=36278,},
		[84838] = {name="Poisonmaster Bortusk",locations={[542]={59003700},},quest=36279,},
		[84854] = {name="Slippery Slime",locations={[588]={30803000,32403740,37803540},},},
		[84856] = {name="Blightglow",locations={[542]={63606460},},quest=36283,tameable=true,},
		[84872] = {name="Oskiira the Vengeful",locations={[542]={64805420},},quest=36288,},
		[84875] = {name="Ancient Inferno",locations={[588]={34005020},},},
		[84887] = {name="Betsi Boombasket",locations={[542]={58208460},},quest=36291,},
		[84890] = {name="Festerbloom",locations={[542]={54803940},},quest=36297,},
		[84893] = {name="Goregore",locations={[588]={34405320},},tameable=true,},
		[84904] = {name="Oraggro",locations={[588]={31204820},},},
		[84911] = {name="Demidos",locations={[539]={46007140},},pet=1601,quest=37351,},
		[84912] = {name="Sunderthorn",locations={[542]={58404500},},quest=36298,tameable=true,},
		[84925] = {name="Quartermaster Hershak",locations={[539]={50007240},},quest=37352,},
		[84926] = {name="Burning Power",locations={[588]={31805020,37204740},},},
		[84951] = {name="Gobblefin",locations={[542]={33005860},},quest=36305,},
		[84955] = {name="Jiasska the Sporegorger",locations={[542]={56409440},},quest=36306,tameable=true,},
		[85001] = {name="Master Sergeant Milgra",locations={[539]={51407680},},quest=37353,},
		[85026] = {name="Soul-Twister Torek",locations={[542]={72401940},},quest=37358,toy=119178,},
		[85029] = {name="Shadowspeaker Niir",locations={[539]={48008100},},quest=37354,},
		[85036] = {name="Formless Nightmare",locations={[542]={72001980},},quest=37360,},
		[85037] = {name="Kenos the Unraveler",locations={[542]={70402380},},quest=37361,vignette=622,},
		[85078] = {name="Voidreaver Urnae",locations={[542]={73003180},},quest=37359,},
		[85121] = {name="Lady Temptessa",locations={[539]={48007740},},quest=37355,},
		[85250] = {name="Fossilwood the Petrified",locations={[543]={57406840},},quest=36387,toy=118221,},
		[85264] = {name="Rolkor",locations={[543]={47604100},},quest=36393,},
		[85451] = {name="Malgosh Shadowkeeper",locations={[539]={29405100},},quest=36568,},
		[85504] = {name="Rotcap",locations={[542]={38002780},},pet=1540,quest=36470,},
		[85520] = {name="Swarmleaf",locations={[542]={52805480},},quest=36472,},
		[85555] = {name="Nagidna",locations={[539]={60409000},},quest=37409,},
		[85568] = {name="Avalanche",locations={[539]={67008420},},quest=37410,},
		[85572] = {name="Grrbrrgle",locations={[535]={22207420},},quest=36919,},
		[85763] = {name="Cursed Ravager",locations={[588]={49604960,56604460,58203760},},},
		[85765] = {name="Cursed Kaliri",locations={[588]={55203500,59004220},},},
		[85766] = {name="Cursed Sharptalon",locations={[588]={49003700,49804300,54003620,55004400},},},
		[85767] = {name="Cursed Harbinger",locations={[588]={52004060,57204420,59803780},},},
		[85771] = {name="Elder Darkweaver Kath",locations={[588]={59404300},},},
		[85837] = {name="Slivermaw",locations={[539]={61408860},},quest=37411,},
		[85907] = {name="Berthora",locations={[543]={39407460},},quest=36597,tameable=true,},
		[85970] = {name="Riptar",locations={[543]={37408140},},quest=36600,tameable=true,},
		[86137] = {name="Sunclaw",locations={[543]={44609220},},quest=36656,},
		[86213] = {name="Aqualir",locations={[539]={50807900},},quest=37356,},
		[86257] = {name="Basten",locations={[543]={69204460},},quest=37369,toy=119432,vignette=586,},
		[86258] = {name="Nultra",locations={[543]={69204460},},},
		[86259] = {name="Valstil",locations={[543]={69404440},},},
		[86266] = {name="Venolasix",locations={[543]={63403060},},quest=37372,tameable=true,},
		[86268] = {name="Alkali",locations={[543]={56204080,71404020},},quest=37371,},
		[86410] = {name="Sylldross",locations={[543]={63006140},},quest=36794,},
		[86520] = {name="Stompalupagus",locations={[543]={53607300},},quest=36837,tameable=true,},
		[86549] = {name="Steeltusk",locations={[535]={67403560},},quest=36858,},
		[86562] = {name="Maniacal Madgard",locations={[543]={49003300},},quest=37363,},
		[86566] = {name="Defector Dazgo",locations={[543]={48202100},},quest=37362,},
		[86571] = {name="Durp the Hated",locations={[543]={49602340},},quest=37366,},
		[86574] = {name="Inventor Blammo",locations={[543]={47603080},},quest=37367,},
		[86577] = {name="Horgg",locations={[543]={45402820},},quest=37365,},
		[86579] = {name="Blademaster Ro'gor",locations={[543]={45603140},},quest=37368,},
		[86582] = {name="Morgo Kain",locations={[543]={45802400},},quest=37364,},
		[86621] = {name="Morphed Sentient",locations={[539]={30206920},[542]={73404500},},quest=37493,},
		[86689] = {name="Sneevel",locations={[539]={27404340},},quest=36880,},
		[86724] = {name="Hermit Palefur",locations={[539]={17604200},[542]={59201500},},quest=36887,},
		[86729] = {name="Direhoof",locations={[550]={60203700},},tameable=true,},
		[86732] = {name="Bergruu",locations={[550]={61001220,63601960,64202820},},tameable=true,},
		[86743] = {name="Dekorhan",locations={[550]={64003060},},},
		[86750] = {name="Thek'talon",locations={[550]={49203980,53003420,60402840},},tameable=true,},
		[86771] = {name="Gagrog the Brutal",locations={[550]={48202220},},},
		[86774] = {name="Aogexon",locations={[550]={51001540},},tameable=true,},
		[86835] = {name="Xelganak",locations={[550]={41404500},},tameable=true,},
		[86959] = {name="Karosh Blackwind",locations={[550]={45603460},},quest=37399,},
		[86978] = {name="Gaze",locations={[542]={25202420},},quest=36943,},
		[87019] = {name="Gluttonous Giant",locations={[539]={31606800},[542]={74404340},},quest=37390,},
		[87026] = {name="Mecha Plunderer",locations={[539]={31206360},[542]={73803820},},quest=37391,},
		[87027] = {name="Shadow Hulk",locations={[542]={71403320},},quest=37392,},
		[87029] = {name="Giga Sentinel",locations={[542]={71404500},},quest=37393,},
		[87234] = {name="Brutag Grimblade",locations={[550]={43003620},},quest=37400,},
		[87239] = {name="Krahl Deadeye",locations={[550]={42403640},},quest=37473,vignette=551,},
		[87241] = {name="Dreadfang",locations={[595]={47803410},},},
		[87344] = {name="Gortag Steelgrip",locations={[550]={42203660},},quest=37472,},
		[87348] = {name="Hoarfrost",locations={[525]={68001980},},quest=37382,},
		[87351] = {name="Mother of Goren",locations={[525]={71802300},},quest=37381,},
		[87352] = {name="Gibblette the Cowardly",locations={[525]={66602540},},quest=37380,vignette=546,},
		[87356] = {name="Vrok the Ancient",locations={[525]={70403900},},quest=37379,},
		[87357] = {name="Valkor",locations={[525]={68802900},},quest=37378,},
		[87362] = {name="Gibby",locations={[588]={47406900,47602840,48405560,49204280,49204880,49803660,50006300},},tameable=true,},
		[87493] = {name="Rukhmar",boss=true,locations={[542]={36013901},},mount=634,tameable=true,notes="Weekly; flies",hidden=true,},
		[87597] = {name="Bombardier Gu'gok",locations={[535]={43003820,46204340},},quest=37339,},
		[87600] = {name="Jaluk the Pacifist",locations={[525]={85005220},},quest=37556,},
		[87622] = {name="Ogom the Mangler",locations={[525]={84404780},},quest=37402,},
		[87641] = {name="Xelganak",locations={[550]={50204120},},hidden=true,},
		[87647] = {name="Aogexon",locations={[550]={50204120},},hidden=true,},
		[87650] = {name="Direhoof",locations={[550]={50204120},},hidden=true,},
		[87653] = {name="Vileclaw",locations={[550]={50204120},},hidden=true,},
		[87655] = {name="Thek'talon",locations={[550]={50204120},},hidden=true,},
		[87659] = {name="Gagrog the Brutal",locations={[550]={50204120},},hidden=true,},
		[87660] = {name="Dekorhan",locations={[550]={50204120},},hidden=true,},
		[87661] = {name="Bergruu",locations={[550]={50204120},},hidden=true,},
		[87666] = {name="Mu'gra",locations={[550]={33805060},},tameable=true,},
		[87667] = {name="Mu'gra",locations={[550]={50204120},},hidden=true,},
		[87668] = {name="Orumo the Observer",locations={[535]={31404740},},quest=37344,},
		[87788] = {name="Durg Spinecrusher",locations={[550]={35402120},},quest=37395,},
		[87837] = {name="Bonebreaker",locations={[550]={38401480},},quest=37396,},
		[87846] = {name="Pit Slayer",locations={[550]={39401420},},quest=37397,vignette=559,},
		[88043] = {name="Avatar of Socrethar",locations={[535]={44003420},},quest=37338,vignette=561,},
		[88071] = {name="Strategist Ankor",locations={[535]={43602700,44603700},},quest=37337,},
		[88072] = {name="Archmagus Tekar",locations={[535]={43602660,45003260},},quest=37337,},
		[88083] = {name="Soulbinder Naylana",locations={[535]={43402660,45403200},},quest=37337,},
		[88208] = {name="Pit Beast",locations={[550]={58001860},},quest=37637,},
		[88210] = {name="Krud the Eviscerator",locations={[550]={58201180},},quest=37398,},
		[88436] = {name="Vigilant Paarthos",locations={[535]={35803980,42404380},},quest=37350,},
		[88494] = {name="Legion Vanguard",locations={[535]={37802060},},quest=37342,},
		[88580] = {name="Firestarter Grash",locations={[543]={57803580},},quest=37373,},
		[88582] = {name="Swift Onyx Flayer",locations={[543]={59603180},},quest=37374,},
		[88583] = {name="Grove Warden Yal",locations={[543]={59604300},},quest=37375,},
		[88586] = {name="Mogamago",locations={[543]={61403920},},quest=37376,tameable=true,},
		[88672] = {name="Hunter Bal'ra",locations={[543]={55004620},},quest=37377,},
		[88951] = {name="Vileclaw",locations={[550]={37403900},},tameable=true,},
		[89675] = {name="Commander Org'mok",locations={[534]={50004780},},quest=38749,},
		[90024] = {name="Sergeant Mor'grak",locations={[534]={41403740},},quest=37953,},
		[90041] = {name="The Last Voidtalon",locations={[525]={47702750,51001990,52301830,53841721},[535]={39705540,46205260,47004800,51904120},[539]={41907570,43207100,46607000,48706990,49607160,50907250},[542]={36501820,47002010,50400610,60801120},[543]={43203420,51603880,54004500,56004000},[550]={40504750,45903140,57302670,},},mount=682,notes="Look for the Edge of Reality portals",quest=37864,},
		[90094] = {name="Harbormaster Korak",locations={[534]={39403240},},quest=39046,},
		[90122] = {name="Zoug the Heavy",locations={[534]={37003300},},quest=39045,vignette=688,},
		[90429] = {name="Imp-Master Valessa",locations={[534]={30807140},},quest=38026,toy=127655,},
		[90434] = {name="Ceraxas",locations={[534]={31406740},},quest=38031,},
		[90437] = {name="Jax'zor",locations={[534]={26207540},},quest=38030,vignette=703,},
		[90438] = {name="Lady Oran",locations={[534]={25207620},},quest=38029,},
		[90442] = {name="Mistress Thavra",locations={[534]={25807960},},quest=38032,},
		[90519] = {name="Cindral the Wildfire",locations={[534]={44403740},},quest=37990,vignette="Cindral",},
		[90777] = {name="High Priest Ikzan",locations={[534]={20204120},},quest=38028,toy=122117,},
		[90782] = {name="Rasthe",locations={[534]={16804300},},quest=38034,},
		[90884] = {name="Bilkor the Thrower",locations={[534]={23405220},},quest=38262,},
		[90885] = {name="Rogond the Tracker",locations={[534]={20404980},},quest=38263,vignette=726,},
		[90887] = {name="Dorg the Bloody",locations={[534]={22804880},},quest=38265,vignette=728,},
		[90888] = {name="Drivnul",locations={[534]={25404620},},quest=38264,},
		[90936] = {name="Bloodhunter Zulk",locations={[534]={21005240},},quest=38266,vignette=729,},
		[91009] = {name="Putre'thar",locations={[534]={57002300},},quest=38457,},
		[91087] = {name="Zeter'el",locations={[534]={48202840},},quest=38207,},
		[91093] = {name="Bramblefell",locations={[534]={39006840},},quest=38209,toy=127652,},
		[91098] = {name="Felspark",locations={[534]={51802740},},quest=38211,},
		[91227] = {name="Remnant of the Blood Moon",locations={[534]={22205040},},quest=39159,toy=127666,vignette=730,},
		[91232] = {name="Commander Krag'goth",locations={[534]={15005420},},quest=38746,vignette=856,},
		[91243] = {name="Tho'gar Gorefist",locations={[534]={13405640},},quest=38747,vignette=857,},
		[91374] = {name="Podlord Wakkawam",locations={[534]={16804820},},quest=38282,vignette=734,},
		[91695] = {name="Grand Warlock Nethekurse",locations={[534]={46404220},},quest=38400,},
		[91727] = {name="Executor Riloth",locations={[534]={49603660},},quest=38411,},
		[91871] = {name="Argosh the Destroyer",locations={[534]={52404020},},quest=38430,},
		[91921] = {name="Wyrmple",locations={[588]={54005820,79607540},},},
		[92197] = {name="Relgor",locations={[534]={26205420},},quest=38496,vignette=798,},
		[92274] = {name="Painmistress Selora",locations={[534]={53402140},},quest=38557,vignette=813,},
		[92408] = {name="Xanzith the Everlasting",locations={[534]={60002100},},quest=38579,},
		[92411] = {name="Overlord Ma'gruth",locations={[534]={52201980},},quest=38580,},
		[92429] = {name="Broodlord Ixkor",locations={[534]={57606720},},quest=38589,tameable=true,vignette=817,},
		[92451] = {name="Varyx the Damned",locations={[534]={27403260},},quest=37937,},
		[92465] = {name="The Blackfang",locations={[534]={49207340},},quest=38597,vignette=818,},
		[92495] = {name="Soulslicer",locations={[534]={62407240},},quest=38600,vignette=819,},
		[92508] = {name="Gloomtalon",locations={[534]={63408100},},quest=38604,vignette=820,},
		[92517] = {name="Krell the Serene",locations={[534]={51808340},},quest=38605,vignette=821,},
		[92552] = {name="Belgork",locations={[534]={35004700},},quest=38609,vignette=822,},
		[92574] = {name="Thromma the Gutslicer",locations={[534]={34004420},},quest=38620,vignette=823,},
		[92606] = {name="Sylissa",locations={[534]={41007860},},quest=38628,vignette=827,},
		[92627] = {name="Rendrak",locations={[534]={39007300,42207940},},quest=38631,tameable=true,vignette=829,},
		[92636] = {name="The Night Haunter",locations={[534]={37807260,38007900,43406820},},quest=38632,vignette=830,},
		[92645] = {name="The Night Haunter",locations={[534]={37406780,38207920,43806740},},quest=38632,},
		[92647] = {name="Felsmith Damorka",locations={[534]={45804700},},quest=38634,},
		[92657] = {name="Bleeding Hollow Horror",locations={[534]={50807440},},quest=38696,},
		[92694] = {name="The Goreclaw",locations={[534]={34407240},},quest=38654,tameable=true,vignette=834,},
		[92887] = {name="Steelsnout",locations={[534]={64603700},},quest=38700,tameable=true,},
		[92941] = {name="Gorabosh",locations={[534]={32603540},},quest=38709,vignette=846,},
		[92977] = {name="The Iron Houndmaster",locations={[534]={12605660},},quest=38751,vignette=860,},
		[93001] = {name="Szirek the Twisted",locations={[534]={15805700},},quest=38752,vignette=861,},
		[93002] = {name="Magwia",locations={[534]={52206500},},quest=38726,tameable=true,},
		[93028] = {name="Driss Vile",locations={[534]={20005360},},quest=38736,vignette=853,},
		[93057] = {name="Grannok",locations={[534]={16005900},},quest=38750,vignette=859,},
		[93076] = {name="Captain Ironbeard",locations={[534]={35808020},},quest=38756,toy=127659,vignette=862,},
		[93125] = {name="Glub'glok",locations={[534]={34407780},},quest=38764,vignette=864,},
		[93168] = {name="Felbore",locations={[534]={28805100},},quest=38775,},
		[93236] = {name="Shadowthrash",locations={[534]={49606100},},quest=38812,tameable=true,},
		[93264] = {name="Captain Grok'mar",locations={[534]={48405700},},quest=38820,},
		[93279] = {name="Kris'kar the Unredeemed",locations={[534]={39606820},},quest=38825,},
		[94113] = {name="Rukmaz",locations={[588]={38803500,41404580},},},
		[95044] = {name="Terrorfist",locations={[534]={13205940,17206480},},quest=39288,},
		[95053] = {name="Deathtalon",locations={[534]={23004020},[543]={56009260},},quest=39287,},
		[95054] = {name="Vengeance",locations={[534]={32407380},},quest=39290,},
		[95056] = {name="Doomroller",locations={[534]={46805260},},quest=39289,},
		[96235] = {name="Xemirkol",locations={[534]={69003820},},},
		[96323] = {name="Arachnis",locations={[579]={61203580,67603900,68406360,73803500},[585]={55408840,57008080},},quest=39617,toy=128794,},
		[98198] = {name="Rukdug",locations={[550]={26203420},},pet=1764,quest=40075,},
		[98199] = {name="Pugg",locations={[550]={28503030},},pet=1766,quest=40073,},
		[98200] = {name="Guk",locations={[550]={23803790},},pet=1765,quest=40074,},
		[98283] = {name="Drakum",locations={[534]={83404340},},quest=40105,toy=108631,},
		[98284] = {name="Gondar",locations={[534]={80405660},},quest=40106,toy=108633,},
		[98285] = {name="Smashum Grabb",locations={[534]={87605580},},quest=40104,toy=108634,},
		[98408] = {name="Fel Overseer Mudlump",locations={[534]={40605640,87505610},},quest=40107,},
	})
end
