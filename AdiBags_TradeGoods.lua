local tContains = tContains
local AdiBags = LibStub("AceAddon-3.0"):GetAddon("AdiBags")

local items = {
	[LE_EXPANSION_CLASSIC] = {
		-- 1.11.1
		723, -- Goretusk Liver
		765, -- Silverleaf
		769, -- Chunk of Boar Meat
		774, -- Malachite
		783, -- Light Hide
		785, -- Mageroyal
		814, -- Flask of Oil
		818, -- Tigerseye
		1015, -- Lean Wolf Flank
		1080, -- Tough Condor Meat
		1206, -- Moss Agate
		1210, -- Shadowgem
		1288, -- Large Venom Sac
		1468, -- Murloc Fin
		1475, -- Small Venom Sac
		1529, -- Jade
		1705, -- Lesser Moonstone
		2251, -- Gooey Spider Leg
		2318, -- Light Leather
		2319, -- Medium Leather
		2320, -- Coarse Thread
		2321, -- Fine Thread
		2324, -- Bleach
		2325, -- Black Dye
		2447, -- Peacebloom
		2449, -- Earthroot
		2450, -- Briarthorn
		2452, -- Swiftthistle
		2453, -- Bruiseweed
		2589, -- Linen Cloth
		2592, -- Wool Cloth
		2604, -- Red Dye
		2605, -- Green Dye
		2672, -- Stringy Wolf Meat
		2673, -- Coyote Meat
		2674, -- Crawler Meat
		2675, -- Crawler Claw
		2677, -- Boar Ribs
		2678, -- Mild Spices
		2770, -- Copper Ore
		2771, -- Tin Ore
		2772, -- Iron Ore
		2775, -- Silver Ore
		2776, -- Gold Ore
		2835, -- Rough Stone
		2836, -- Coarse Stone
		2838, -- Heavy Stone
		2840, -- Copper Bar
		2841, -- Bronze Bar
		2842, -- Silver Bar
		2880, -- Weak Flux
		2886, -- Crag Boar Rib
		2924, -- Crocolisk Meat
		2934, -- Ruined Leather Scraps
		2996, -- Bolt of Linen Cloth
		2997, -- Bolt of Woolen Cloth
		3164, -- Discolored Worg Heart
		3173, -- Bear Meat
		3182, -- Spider's Silk
		3355, -- Wild Steelbloom
		3356, -- Kingsblood
		3357, -- Liferoot
		3358, -- Khadgar's Whisker
		3369, -- Grave Moss
		3371, -- Crystal Vial
		3404, -- Buzzard Wing
		3466, -- Strong Flux
		3470, -- Rough Grinding Stone
		3478, -- Coarse Grinding Stone
		3486, -- Heavy Grinding Stone
		3575, -- Iron Bar
		3576, -- Tin Bar
		3577, -- Gold Bar
		3667, -- Tender Crocolisk Meat
		3685, -- Raptor Egg
		3712, -- Turtle Meat
		3730, -- Big Bear Meat
		3731, -- Lion Meat
		3818, -- Fadeleaf
		3819, -- Dragon's Teeth
		3820, -- Stranglekelp
		3821, -- Goldthorn
		3857, -- Coal
		3858, -- Mithril Ore
		3859, -- Steel Bar
		3860, -- Mithril Bar
		3864, -- Citrine
		4231, -- Cured Light Hide
		4232, -- Medium Hide
		4233, -- Cured Medium Hide
		4234, -- Heavy Leather
		4235, -- Heavy Hide
		4236, -- Cured Heavy Hide
		4289, -- Salt
		4291, -- Silken Thread
		4304, -- Thick Leather
		4305, -- Bolt of Silk Cloth
		4306, -- Silk Cloth
		4337, -- Thick Spider's Silk
		4338, -- Mageweave Cloth
		4339, -- Bolt of Mageweave
		4340, -- Gray Dye
		4341, -- Yellow Dye
		4342, -- Purple Dye
		4357, -- Rough Blasting Powder
		4359, -- Handful of Copper Bolts
		4364, -- Coarse Blasting Powder
		4371, -- Bronze Tube
		4375, -- Whirring Bronze Gizmo
		4377, -- Heavy Blasting Powder
		4382, -- Bronze Framework
		4387, -- Iron Strut
		4389, -- Gyrochronatom
		4399, -- Wooden Stock
		4400, -- Heavy Stock
		4402, -- Small Flame Sac
		4404, -- Silver Contact
		4461, -- Raptor Hide
		4470, -- Simple Wood
		4603, -- Raw Spotted Yellowtail
		4611, -- Blue Pearl
		4625, -- Firebloom
		4655, -- Giant Clam Meat
		5082, -- Thin Kodo Leather
		5465, -- Small Spider Leg
		5466, -- Scorpid Stinger
		5467, -- Kodo Meat
		5468, -- Soft Frenzy Flesh
		5469, -- Strider Meat
		5470, -- Thunder Lizard Tail
		5471, -- Stag Meat
		5498, -- Small Lustrous Pearl
		5500, -- Iridescent Pearl
		5503, -- Clam Meat
		5504, -- Tangy Clam Meat
		5635, -- Sharp Claw
		5637, -- Large Fang
		5784, -- Slimy Murloc Scale
		5785, -- Thick Murloc Scale
		6037, -- Truesilver Bar
		6260, -- Blue Dye
		6261, -- Orange Dye
		6289, -- Raw Longjaw Mud Snapper
		6291, -- Raw Brilliant Smallfish
		6303, -- Raw Slitherskin Mackerel
		6308, -- Raw Bristle Whisker Catfish
		6317, -- Raw Loch Frenzy
		6358, -- Oily Blackmouth
		6359, -- Firefin Snapper
		6361, -- Raw Rainbow Fin Albacore
		6362, -- Raw Rockscale Cod
		6370, -- Blackmouth Oil
		6371, -- Fire Oil
		6470, -- Deviate Scale
		6471, -- Perfect Deviate Scale
		6889, -- Small Egg
		7067, -- Elemental Earth
		7068, -- Elemental Fire
		7069, -- Elemental Air
		7070, -- Elemental Water
		7071, -- Iron Buckle
		7072, -- Naga Scale
		7075, -- Core of Earth
		7076, -- Essence of Earth
		7077, -- Heart of Fire
		7078, -- Essence of Fire
		7079, -- Globe of Water
		7080, -- Essence of Water
		7081, -- Breath of Wind
		7082, -- Essence of Air
		7191, -- Fused Wiring
		7286, -- Black Whelp Scale
		7392, -- Green Whelp Scale
		7909, -- Aquamarine
		7910, -- Star Ruby
		7911, -- Truesilver Ore
		7912, -- Solid Stone
		7966, -- Solid Grinding Stone
		7971, -- Black Pearl
		7972, -- Ichor of Undeath
		7974, -- Zesty Clam Meat
		8150, -- Deeprock Salt
		8153, -- Wildvine
		8154, -- Scorpid Scale
		8165, -- Worn Dragonscale
		8167, -- Turtle Scale
		8169, -- Thick Hide
		8170, -- Rugged Leather
		8171, -- Rugged Hide
		8172, -- Cured Thick Hide
		8343, -- Heavy Silken Thread
		8365, -- Raw Mithril Head Trout
		8831, -- Purple Lotus
		8836, -- Arthas' Tears
		8838, -- Sungrass
		8839, -- Blindweed
		8845, -- Ghost Mushroom
		8846, -- Gromsblood
		9060, -- Inlaid Mithril Cylinder
		9061, -- Goblin Rocket Fuel
		9210, -- Ghost Dye
		9262, -- Black Vitriol
		10285, -- Shadow Silk
		10286, -- Heart of the Wild
		10290, -- Pink Dye
		10505, -- Solid Blasting Powder
		10558, -- Gold Power Core
		10559, -- Mithril Tube
		10560, -- Unstable Trigger
		10561, -- Mithril Casing
		10620, -- Thorium Ore
		10647, -- Engineer's Ink
		10938, -- Lesser Magic Essence
		10939, -- Greater Magic Essence
		10940, -- Strange Dust
		10978, -- Small Glimmering Shard
		10998, -- Lesser Astral Essence
		11082, -- Greater Astral Essence
		11083, -- Soul Dust
		11084, -- Large Glimmering Shard
		11134, -- Lesser Mystic Essence
		11135, -- Greater Mystic Essence
		11137, -- Vision Dust
		11138, -- Small Glowing Shard
		11139, -- Large Glowing Shard
		11174, -- Lesser Nether Essence
		11175, -- Greater Nether Essence
		11176, -- Dream Dust
		11177, -- Small Radiant Shard
		11178, -- Large Radiant Shard
		11291, -- Star Wood
		11370, -- Dark Iron Ore
		11371, -- Dark Iron Bar
		11382, -- Blood of the Mountain
		12037, -- Mystery Meat
		12184, -- Raptor Flesh
		12202, -- Tiger Meat
		12203, -- Red Wolf Meat
		12204, -- Heavy Kodo Meat
		12205, -- White Spider Meat
		12206, -- Tender Crab Meat
		12207, -- Giant Egg
		12208, -- Tender Wolf Meat
		12223, -- Meaty Bat Wing
		12359, -- Thorium Bar
		12360, -- Arcanite Bar
		12361, -- Blue Sapphire
		12363, -- Arcane Crystal
		12364, -- Huge Emerald
		12365, -- Dense Stone
		12644, -- Dense Grinding Stone
		12655, -- Enchanted Thorium Bar
		12662, -- Demonic Rune
		12799, -- Large Opal
		12800, -- Azerothian Diamond
		12803, -- Living Essence
		12804, -- Powerful Mojo
		12808, -- Essence of Undeath
		12809, -- Guardian Stone
		12810, -- Enchanted Leather
		12811, -- Righteous Orb
		13422, -- Stonescale Eel
		13423, -- Stonescale Oil
		13463, -- Dreamfoil
		13464, -- Golden Sansam
		13465, -- Mountain Silversage
		13466, -- Sorrowmoss
		13467, -- Icecap
		13468, -- Black Lotus
		13754, -- Raw Glossy Mightfish
		13756, -- Raw Summer Bass
		13757, -- Lightning Eel
		13758, -- Raw Redgill
		13759, -- Raw Nightfin Snapper
		13760, -- Raw Sunscale Salmon
		13888, -- Darkclaw Lobster
		13889, -- Raw Whitescale Salmon
		13926, -- Golden Pearl
		14047, -- Runecloth
		14048, -- Bolt of Runecloth
		14227, -- Ironweb Spider Silk
		14256, -- Felcloth
		14341, -- Rune Thread
		14342, -- Mooncloth
		14343, -- Small Brilliant Shard
		14344, -- Large Brilliant Shard
		15407, -- Cured Rugged Hide
		15408, -- Heavy Scorpid Scale
		15410, -- Scale of Onyxia
		15412, -- Green Dragonscale
		15414, -- Red Dragonscale
		15415, -- Blue Dragonscale
		15416, -- Black Dragonscale
		15417, -- Devilsaur Leather
		15419, -- Warbear Leather
		15992, -- Dense Blasting Powder
		15994, -- Thorium Widget
		16000, -- Thorium Tube
		16006, -- Delicate Arcanite Converter
		16202, -- Lesser Eternal Essence
		16203, -- Greater Eternal Essence
		16204, -- Illusion Dust
		17010, -- Fiery Core
		17011, -- Lava Core
		17012, -- Core Leather
		17056, -- Light Feather
		17203, -- Sulfuron Ingot
		18240, -- Ogre Tannin
		18562, -- Elementium Ingot
		18567, -- Elemental Flux
		18631, -- Truesilver Transformer
		19441, -- Huge Venom Sac
		19767, -- Primal Bat Leather
		19768, -- Primal Tiger Leather
		19943, -- Massive Mojo
		20381, -- Dreamscale
		20424, -- Sandworm Meat
		20520, -- Dark Rune
		20725, -- Nexus Crystal
		21024, -- Chimaerok Tenderloin
		21071, -- Raw Sagefish
		21153, -- Raw Greater Sagefish
		22202, -- Small Obsidian Shard
		22203, -- Large Obsidian Shard
		22682, -- Frozen Rune
	},

	[LE_EXPANSION_BURNING_CRUSADE] = {
		-- 2.0.1
		20816, -- Delicate Copper Wire
		20817, -- Bronze Setting
		20963, -- Mithril Filigree
		21752, -- Thorium Setting
		21840, -- Bolt of Netherweave
		21842, -- Bolt of Imbued Netherweave
		21844, -- Bolt of Soulcloth
		21845, -- Primal Mooncloth
		21877, -- Netherweave Cloth
		21881, -- Netherweb Spider Silk
		21882, -- Soul Essence
		21884, -- Primal Fire
		21885, -- Primal Water
		21886, -- Primal Life
		21887, -- Knothide Leather
		21929, -- Flame Spessarite
		22445, -- Arcane Dust
		22446, -- Greater Planar Essence
		22447, -- Lesser Planar Essence
		22448, -- Small Prismatic Shard
		22449, -- Large Prismatic Shard
		22450, -- Void Crystal
		22451, -- Primal Air
		22452, -- Primal Earth
		22456, -- Primal Shadow
		22457, -- Primal Mana
		22572, -- Mote of Air
		22573, -- Mote of Earth
		22574, -- Mote of Fire
		22575, -- Mote of Life
		22576, -- Mote of Mana
		22577, -- Mote of Shadow
		22578, -- Mote of Water
		22644, -- Crunchy Spider Leg
		22785, -- Felweed
		22786, -- Dreaming Glory
		22787, -- Ragveil
		22789, -- Terocone
		22790, -- Ancient Lichen
		22791, -- Netherbloom
		22792, -- Nightmare Vine
		22793, -- Mana Thistle
		22794, -- Fel Lotus
		23077, -- Blood Garnet
		23079, -- Deep Peridot
		23107, -- Shadow Draenite
		23112, -- Golden Draenite
		23117, -- Azure Moonstone
		23424, -- Fel Iron Ore
		23425, -- Adamantite Ore
		23426, -- Khorium Ore
		23427, -- Eternium Ore
		23436, -- Living Ruby
		23437, -- Talasite
		23439, -- Noble Topaz
		23440, -- Dawnstone
		23441, -- Nightseye
		23446, -- Adamantite Bar
		23447, -- Eternium Bar
		23448, -- Felsteel Bar
		23449, -- Khorium Bar
		23571, -- Primal Might
		23572, -- Primal Nether
		23573, -- Hardened Adamantite Bar
		23676, -- Moongraze Stag Tenderloin
		23781, -- Elemental Blasting Powder
		23782, -- Fel Iron Casing
		23783, -- Handful of Fel Iron Bolts
		23784, -- Adamantite Frame
		23785, -- Hardened Adamantite Tube
		23786, -- Khorium Power Core
		23787, -- Felsteel Stabilizer
		23793, -- Heavy Knothide Leather
		24243, -- Adamantite Powder
		24271, -- Spellcloth
		24272, -- Shadowcloth
		24477, -- Jaggal Clam Meat
		24478, -- Jaggal Pearl
		25649, -- Knothide Leather Scraps
		25699, -- Crystal Infused Leather
		25700, -- Fel Scales
		25707, -- Fel Hide
		25708, -- Thick Clefthoof Leather
		25867, -- Earthstorm Diamond
		25868, -- Skyfire Diamond
		27422, -- Barbed Gill Trout
		27425, -- Spotted Feltail
		27429, -- Zangarian Sporefish
		27435, -- Figluster's Mudfish
		27437, -- Icefin Bluefish
		27438, -- Golden Darter
		27439, -- Furious Crawdad
		27668, -- Lynx Meat
		27669, -- Bat Flesh
		27671, -- Buzzard Meat
		27674, -- Ravager Flesh
		27677, -- Chunk o' Basilisk
		27678, -- Clefthoof Meat
		27681, -- Warped Flesh
		27682, -- Talbuk Venison
		29539, -- Cobra Scales
		29547, -- Wind Scales
		29548, -- Nether Dragonscales
		30183, -- Nether Vortex
		30817, -- Simple Flour
		31079, -- Mercurial Adamantite
		31670, -- Raptor Ribs
		31671, -- Serpent Flesh

		-- 2.1.0
		23438, -- Star of Elune
		23445, -- Fel Iron Bar
		24479, -- Shadow Pearl
		32227, -- Crimson Spinel
		32228, -- Empyrean Sapphire
		32229, -- Lionseye
		32230, -- Shadowsong Amethyst
		32231, -- Pyrestone
		32249, -- Seaspray Emerald
		32423, -- Icy Blasting Primers
		32428, -- Heart of Darkness

		-- 2.3.0
		33823, -- Bloodfin Catfish
		33824, -- Crescent-Tail Skullfish

		-- 2.4.0
		34664, -- Sunmote
		35128, -- Hardened Khorium
		35562, -- Bear Flank
	},

	[LE_EXPANSION_WRATH_OF_THE_LICH_KING] = {
		-- 3.0.1
		33470, -- Frostweave Cloth
		33567, -- Borean Leather Scraps
		33568, -- Borean Leather
		34052, -- Dream Shard
		34053, -- Small Dream Shard
		34054, -- Infinite Dust
		34055, -- Greater Cosmic Essence
		34056, -- Lesser Cosmic Essence
		34057, -- Abyss Crystal
		35622, -- Eternal Water
		35623, -- Eternal Air
		35624, -- Eternal Earth
		35625, -- Eternal Life
		35627, -- Eternal Shadow
		36783, -- Northsea Pearl
		36784, -- Siren's Tear
		36860, -- Eternal Fire
		36901, -- Goldclover
		36903, -- Adder's Tongue
		36904, -- Tiger Lily
		36905, -- Lichbloom
		36906, -- Icethorn
		36907, -- Talandra's Rose
		36909, -- Cobalt Ore
		36910, -- Titanium Ore
		36912, -- Saronite Ore
		36913, -- Saronite Bar
		36916, -- Cobalt Bar
		36917, -- Bloodstone
		36918, -- Scarlet Ruby
		36920, -- Sun Crystal
		36921, -- Autumn's Glow
		36923, -- Chalcedony
		36924, -- Sky Sapphire
		36926, -- Shadow Crystal
		36927, -- Twilight Opal
		36929, -- Huge Citrine
		36930, -- Monarch Topaz
		36932, -- Dark Jade
		36933, -- Forest Emerald
		37663, -- Titansteel Bar
		37700, -- Crystallized Air
		37701, -- Crystallized Earth
		37702, -- Crystallized Fire
		37703, -- Crystallized Shadow
		37704, -- Crystallized Life
		37705, -- Crystallized Water
		37921, -- Deadnettle
		38425, -- Heavy Borean Leather
		38426, -- Eternium Thread
		38557, -- Icy Dragonscale
		38558, -- Nerubian Chitin
		38561, -- Jormungar Scale
		39151, -- Alabaster Pigment
		39334, -- Dusky Pigment
		39338, -- Golden Pigment
		39339, -- Emerald Pigment
		39354, -- Light Parchment
		39469, -- Moonglow Ink
		39681, -- Handful of Cobalt Bolts
		39682, -- Overcharged Capacitor
		39683, -- Froststeel Tube
		39684, -- Hair Trigger
		39690, -- Volatile Blasting Trigger
		39774, -- Midnight Ink
		39970, -- Fire Leaf
		40195, -- Pygmy Oil
		40199, -- Pygmy Suckerfish
		40533, -- Walnut Stock
		41163, -- Titanium Bar
		41266, -- Skyflare Diamond
		41334, -- Earthsiege Diamond
		41510, -- Bolt of Frostweave
		41511, -- Bolt of Imbued Frostweave
		41593, -- Ebonweave
		41594, -- Moonshroud
		41595, -- Spellweave
		41800, -- Deep Sea Monsterbelly
		41801, -- Moonglow Cuttlefish
		41802, -- Imperial Manta Ray
		41803, -- Rockfin Grouper
		41805, -- Borean Man O' War
		41806, -- Musselback Sculpin
		41807, -- Dragonfin Angelfish
		41808, -- Bonescale Snapper
		41809, -- Glacial Salmon
		41810, -- Fangtooth Herring
		41812, -- Barrelhead Goby
		41813, -- Nettlefish
		41814, -- Glassfin Minnow
		42225, -- Dragon's Eye
		42253, -- Iceweb Spider Silk

		-- 3.0.2
		34736, -- Chunk o' Mammoth
		36782, -- Succulent Clam Meat
		36908, -- Frost Lotus
		39340, -- Violet Pigment
		39341, -- Silvery Pigment
		39342, -- Nether Pigment
		39343, -- Azure Pigment
		43007, -- Northern Spices
		43009, -- Shoveltusk Flank
		43010, -- Worm Meat
		43011, -- Worg Haunch
		43012, -- Rhino Meat
		43013, -- Chilled Meat
		43102, -- Frozen Orb
		43103, -- Verdant Pigment
		43104, -- Burnt Pigment
		43105, -- Indigo Pigment
		43106, -- Ruby Pigment
		43107, -- Sapphire Pigment
		43108, -- Ebon Pigment
		43109, -- Icy Pigment
		43115, -- Hunter's Ink
		43116, -- Lion's Ink
		43117, -- Dawnstar Ink
		43118, -- Jadefire Ink
		43119, -- Royal Ink
		43120, -- Celestial Ink
		43121, -- Fiery Ink
		43122, -- Shimmering Ink
		43123, -- Ink of the Sky
		43124, -- Ethereal Ink
		43125, -- Darkflame Ink
		43126, -- Ink of the Sea
		43127, -- Snowfall Ink
		43501, -- Northern Egg
		44128, -- Arctic Fur
		44499, -- Salvaged Iron Golem Parts
		44500, -- Elementium-Plated Exhaust Pipe
		44501, -- Goblin-Machined Piston

		-- 3.0.8
		44958, -- Ethereal Oil

		-- 3.1.0
		44834, -- Wild Turkey
		44835, -- Autumnal Herbs
		44853, -- Honey
		45087, -- Runed Orb

		-- 3.2.0
		36919, -- Cardinal Ruby
		36922, -- King's Amber
		36925, -- Majestic Zircon
		36928, -- Dreadstone
		36931, -- Ametrine
		36934, -- Eye of Zul
		47556, -- Crusader Orb

		-- 3.3.0
		49908, -- Primordial Saronite
	},

	[LE_EXPANSION_CATACLYSM] = {
		-- 4.0.1
		51950, -- Pyrium Bar
		52177, -- Carnelian
		52178, -- Zephyrite
		52179, -- Alicite
		52180, -- Nightstone
		52181, -- Hessonite
		52182, -- Jasper
		52185, -- Elementium Ore
		52186, -- Elementium Bar
		65892, -- Pyrium-Laced Crystalline Vial
		67229, -- Stag Flank
		67319, -- Preserved Ogre Eye
		67335, -- Silver Charm Bracelet

		-- 4.0.3
		52078, -- Chaos Orb
		52183, -- Pyrite Ore
		52188, -- Jeweler's Setting
		52190, -- Inferno Ruby
		52191, -- Ocean Sapphire
		52192, -- Dream Emerald
		52193, -- Ember Topaz
		52194, -- Demonseye
		52195, -- Amberjewel
		52196, -- Chimera's Eye
		52303, -- Shadowspirit Diamond
		52325, -- Volatile Fire
		52326, -- Volatile Water
		52327, -- Volatile Earth
		52328, -- Volatile Air
		52329, -- Volatile Life
		52555, -- Hypnotic Dust
		52718, -- Lesser Celestial Essence
		52719, -- Greater Celestial Essence
		52720, -- Small Heavenly Shard
		52721, -- Heavenly Shard
		52722, -- Maelstrom Crystal
		52976, -- Savage Leather
		52977, -- Savage Leather Scraps
		52979, -- Blackened Dragonscale
		52980, -- Pristine Hide
		52982, -- Deepsea Scale
		52983, -- Cinderbloom
		52984, -- Stormvine
		52985, -- Azshara's Veil
		52986, -- Heartblossom
		52987, -- Twilight Jasmine
		52988, -- Whiptail
		53010, -- Embersilk Cloth
		53038, -- Obsidium Ore
		53039, -- Hardened Elementium Bar
		53062, -- Sharptooth
		53063, -- Mountain Trout
		53064, -- Highland Guppy
		53065, -- Albino Cavefish
		53066, -- Blackbelly Mudfish
		53067, -- Striped Lurker
		53068, -- Lavascale Catfish
		53069, -- Murglesnout
		53070, -- Fathom Eel
		53071, -- Algaefin Rockfish
		53072, -- Deepsea Sagefish
		53643, -- Bolt of Embersilk Cloth
		54440, -- Dreamcloth
		54849, -- Obsidium Bar
		56516, -- Heavy Savage Leather
		56850, -- Deepstone Oil
		58480, -- Truegold
		60224, -- Handful of Obsidium Bolts
		61978, -- Blackfallow Ink
		61979, -- Ashen Pigment
		61980, -- Burning Embers
		61981, -- Inferno Ink
		62323, -- Deathwing Scale Fragment
		62778, -- Toughened Flesh
		62779, -- Monstrous Claw
		62780, -- Snake Eye
		62781, -- Giant Turtle Tongue
		62782, -- Dragon Flank
		62783, -- Basilisk "Liver"
		62784, -- Crocolisk Tail
		62785, -- Delicate Wing
		62786, -- Cocoa Beans
		62791, -- Blood Shrimp
		65365, -- Folded Obsidium
		65893, -- Sands of Time
		67749, -- Electrified Ether

		-- 4.1.0
		69237, -- Living Ember

		-- 4.3.0
		71805, -- Queen's Garnet
		71806, -- Lightstone
		71807, -- Deepholm Iolite
		71808, -- Lava Coral
		71809, -- Shadow Spinel
		71810, -- Elven Peridot
		71998, -- Essence of Destruction
	},

	[LE_EXPANSION_MISTS_OF_PANDARIA] = {
		-- 5.0.1
		72092, -- Ghost Iron Ore
		72093, -- Kyparite
		72094, -- Black Trillium Ore
		72095, -- Trillium Bar
		72096, -- Ghost Iron Bar
		72103, -- White Trillium Ore
		72104, -- Living Steel
		72120, -- Exotic Leather
		72162, -- Sha-Touched Leather
		72163, -- Magnificent Hide
		72234, -- Green Tea Leaf
		72235, -- Silkweed
		72237, -- Rain Poppy
		72238, -- Golden Lotus
		72988, -- Windwool Cloth
		74247, -- Ethereal Shard
		74248, -- Sha Crystal
		74249, -- Spirit Dust
		74250, -- Mysterious Essence
		74252, -- Small Ethereal Shard
		74659, -- Farm Chicken
		74660, -- Pandaren Peach
		74661, -- Black Pepper
		74662, -- Rice Flour
		74832, -- Barley
		74833, -- Raw Tiger Steak
		74834, -- Mushan Ribs
		74837, -- Raw Turtle Meat
		74838, -- Raw Crab Meat
		74839, -- Wildfowl Breast
		74840, -- Green Cabbage
		74841, -- Juicycrunch Carrot
		74842, -- Mogu Pumpkin
		74843, -- Scallions
		74844, -- Red Blossom Leek
		74845, -- Ginseng
		74846, -- Witchberries
		74847, -- Jade Squash
		74848, -- Striped Melon
		74849, -- Pink Turnip
		74850, -- White Turnip
		74851, -- Rice
		74852, -- Yak Milk
		74853, -- 100 Year Soy Sauce
		74854, -- Instant Noodles
		74856, -- Jade Lungfish
		74857, -- Giant Mantis Shrimp
		74859, -- Emperor Salmon
		74860, -- Redbelly Mandarin
		74861, -- Tiger Gourami
		74863, -- Jewel Danio
		74864, -- Reef Octopus
		74865, -- Krasarang Paddlefish
		74866, -- Golden Carp
		75014, -- Raw Crocolisk Belly
		76061, -- Spirit of Harmony
		76130, -- Tiger Opal
		76131, -- Primordial Ruby
		76132, -- Primal Diamond
		76133, -- Lapis Lazuli
		76134, -- Sunstone
		76135, -- Roguestone
		76136, -- Pandarian Garnet
		76137, -- Alexandrite
		76138, -- River's Heart
		76139, -- Wild Jade
		76140, -- Vermilion Onyx
		76141, -- Imperial Amethyst
		76142, -- Sun's Radiance
		76349, -- <DEPRECATED> Silver Filigree Flask
		76734, -- Serpent's Eye
		77467, -- Ghost Iron Bolts
		77468, -- High-Explosive Gunpowder
		79010, -- Snow Lily
		79011, -- Fool's Cap
		79101, -- Prismatic Scale
		79246, -- Delicate Blossom Petals
		79250, -- Fresh Pomfruit
		79251, -- Shadow Pigment
		79253, -- Misty Pigment
		79254, -- Ink of Dreams
		79255, -- Starlight Ink
		79731, -- Scroll of Wisdom
		80433, -- Blood Spirit
		82441, -- Bolt of Windwool Cloth
		82447, -- Imperial Silk
		83064, -- Spinefish
		83092, -- Orb of Mystery
		85506, -- Viseclaw Meat
		85583, -- Needle Mushrooms
		85584, -- Silkworm Pupa
		85585, -- Red Beans
		89112, -- Mote of Harmony

		-- 5.0.4
		90146, -- Tinker's Kit
		90407, -- Sparkling Shard

		-- 5.2.0
		94111, -- Lightning Steel Ingot
		94113, -- Jard's Peculiar Energy Source
		94289, -- Haunting Spirit

		-- 5.3.0
		97512, -- Ghost Iron Nugget
		97546, -- Kyparite Fragment
		97619, -- Torn Green Tea Leaf
		97620, -- Rain Poppy Petal
		97621, -- Silkweed Stem
		97622, -- Snow Lily Petal
		97623, -- Fool's Cap Spores
		97624, -- Desecrated Herb Pod

		-- 5.4.0
		98617, -- Hardened Magnificent Hide
		98619, -- Celestial Cloth
		98717, -- Balanced Trillium Ingot
		102218, -- Spirit of War
		102536, -- Fresh Lushroom
		102537, -- Fresh Silkfeather Hawk Eggs
		102538, -- Fresh Shao-Tien Rice
		102539, -- Fresh Strawberries
		102540, -- Fresh Mangos
		102541, -- Aged Balsamic Vinegar
		102542, -- Ancient Pandaren Spices
		102543, -- Aged Mogu'shan Cheese
	},

	[LE_EXPANSION_WARLORDS_OF_DRAENOR] = {
		-- 6.0.1
		108257, -- Truesteel Ingot
		108294, -- Silver Ore Nugget
		108295, -- Tin Ore Nugget
		108296, -- Gold Ore Nugget
		108297, -- Iron Ore Nugget
		108298, -- Thorium Ore Nugget
		108299, -- Truesilver Ore Nugget
		108300, -- Mithril Ore Nugget
		108301, -- Fel Iron Ore Nugget
		108302, -- Adamantite Ore Nugget
		108303, -- Eternium Ore Nugget
		108304, -- Khorium Ore Nugget
		108305, -- Cobalt Ore Nugget
		108306, -- Saronite Ore Nugget
		108307, -- Obsidium Ore Nugget
		108308, -- Elementium Ore Nugget
		108309, -- Pyrite Ore Nugget
		108318, -- Mageroyal Petal
		108319, -- Earthroot Stem
		108320, -- Briarthorn Bramble
		108321, -- Swiftthistle Leaf
		108322, -- Bruiseweed Stem
		108323, -- Wild Steelbloom Petal
		108324, -- Kingsblood Petal
		108325, -- Liferoot Stem
		108326, -- Khadgar's Whisker Stem
		108327, -- Grave Moss Leaf
		108328, -- Fadeleaf Petal
		108329, -- Dragon's Teeth Stem
		108330, -- Stranglekelp Blade
		108331, -- Goldthorn Bramble
		108332, -- Firebloom Petal
		108333, -- Purple Lotus Petal
		108334, -- Arthas' Tears Petal
		108335, -- Sungrass Stalk
		108336, -- Blindweed Stem
		108337, -- Ghost Mushroom Cap
		108338, -- Gromsblood Leaf
		108339, -- Dreamfoil Blade
		108340, -- Golden Sansam Leaf
		108341, -- Mountain Silversage Stalk
		108342, -- Sorrowmoss Leaf
		108343, -- Icecap Petal
		108344, -- Felweed Stalk
		108345, -- Dreaming Glory Petal
		108346, -- Ragveil Cap
		108347, -- Terocone Leaf
		108348, -- Ancient Lichen Petal
		108349, -- Netherbloom Leaf
		108350, -- Nightmare Vine Stem
		108351, -- Mana Thistle Leaf
		108352, -- Goldclover Leaf
		108353, -- Adder's Tongue Stem
		108354, -- Tiger Lily Petal
		108355, -- Lichbloom Stalk
		108356, -- Icethorn Bramble
		108357, -- Talandra's Rose Petal
		108358, -- Deadnettle Bramble
		108359, -- Fire Leaf Bramble
		108360, -- Cinderbloom Petal
		108361, -- Stormvine Stalk
		108362, -- Azshara's Veil Stem
		108363, -- Heartblossom Petal
		108364, -- Twilight Jasmine Petal
		108365, -- Whiptail Stem
		108391, -- Titanium Ore Nugget
		108996, -- Alchemical Catalyst
		109118, -- Blackrock Ore
		109119, -- True Iron Ore
		109123, -- Crescent Oil
		109124, -- Frostweed
		109125, -- Fireweed
		109126, -- Gorgrond Flytrap
		109127, -- Starflower
		109128, -- Nagrand Arrowbloom
		109129, -- Talador Orchid
		109131, -- Raw Clefthoof Meat
		109132, -- Raw Talbuk Meat
		109133, -- Rylak Egg
		109134, -- Raw Elekk Meat
		109135, -- Raw Riverbeast Meat
		109136, -- Raw Boar Meat
		109137, -- Crescent Saberfish Flesh
		109138, -- Jawless Skulker Flesh
		109139, -- Fat Sleeper Flesh
		109140, -- Blind Lake Sturgeon Flesh
		109141, -- Fire Ammonite Tentacle
		109142, -- Sea Scorpion Segment
		109143, -- Abyssal Gulper Eel Flesh
		109144, -- Blackwater Whiptail Flesh
		109624, -- Broken Frostweed Stem
		109625, -- Broken Fireweed Stem
		109626, -- Gorgrond Flytrap Ichor
		109627, -- Starflower Petal
		109628, -- Nagrand Arrowbloom Petal
		109629, -- Talador Orchid Petal
		109693, -- Draenic Dust
		109991, -- True Iron Nugget
		109992, -- Blackrock Fragment
		110609, -- Raw Beast Hide
		110610, -- Raw Beast Hide Scraps
		110611, -- Burnished Leather
		111245, -- Luminous Shard
		111366, -- Gearspring Parts
		111556, -- Hexweave Cloth
		111557, -- Sumptuous Fur
		111589, -- Small Crescent Saberfish
		111595, -- Crescent Saberfish
		111601, -- Enormous Crescent Saberfish
		111650, -- Small Jawless Skulker
		111651, -- Small Fat Sleeper
		111652, -- Small Blind Lake Sturgeon
		111656, -- Small Fire Ammonite
		111658, -- Small Sea Scorpion
		111659, -- Small Abyssal Gulper Eel
		111662, -- Small Blackwater Whiptail
		111663, -- Blackwater Whiptail
		111664, -- Abyssal Gulper Eel
		111665, -- Sea Scorpion
		111666, -- Fire Ammonite
		111667, -- Blind Lake Sturgeon
		111668, -- Fat Sleeper
		111669, -- Jawless Skulker
		111670, -- Enormous Blackwater Whiptail
		111671, -- Enormous Abyssal Gulper Eel
		111672, -- Enormous Sea Scorpion
		111673, -- Enormous Fire Ammonite
		111674, -- Enormous Blind Lake Sturgeon
		111675, -- Enormous Fat Sleeper
		111676, -- Enormous Jawless Skulker
		112155, -- Deepsea Scale Fragment
		112156, -- Blackened Dragonscale Fragment
		112157, -- Prismatic Scale Fragment
		112158, -- Icy Dragonscale Fragment
		112177, -- Nerubian Chitin Fragment
		112178, -- Jormungar Scale Fragment
		112179, -- Patch of Thick Clefthoof Leather
		112180, -- Patch of Crystal Infused Leather
		112181, -- Fel Scale Fragment
		112182, -- Patch of Fel Hide
		112183, -- Nether Dragonscale Fragment
		112184, -- Cobra Scale Fragment
		112185, -- Wind Scale Fragment
		112377, -- War Paints
		113111, -- Warbinder's Ink
		113261, -- Sorcerous Fire
		113262, -- Sorcerous Water
		113263, -- Sorcerous Earth
		113264, -- Sorcerous Air
		113588, -- Temporal Crystal
		114781, -- Timber
		114931, -- Cerulean Pigment
		115502, -- Small Luminous Shard
		115504, -- Fractured Temporal Crystal
		115508, -- Draenic Stone
		115524, -- Taladite Crystal
		116053, -- Draenic Seeds
		118472, -- Savage Blood

		-- 6.0.3
		120945, -- Primal Spirit

		-- 6.2.0
		124669, -- Darkmoon Daggermaw
		127759, -- Felblight
		128499, -- Fel Egg
		128500, -- Fel Ham
	},

	[LE_EXPANSION_LEGION] = {
		-- 7.0.3
		123918, -- Leystone Ore
		123919, -- Felslate
		124101, -- Aethril
		124102, -- Dreamleaf
		124103, -- Foxflower
		124104, -- Fjarnskaggl
		124105, -- Starlight Rose
		124106, -- Felwort
		124107, -- Cursed Queenfish
		124108, -- Mossgill Perch
		124109, -- Highmountain Salmon
		124110, -- Stormray
		124111, -- Runescale Koi
		124112, -- Black Barracuda
		124113, -- Stonehide Leather
		124115, -- Stormscale
		124116, -- Felhide
		124117, -- Lean Shank
		124118, -- Fatty Bearsteak
		124119, -- Big Gamy Ribs
		124120, -- Leyblood
		124121, -- Wildfowl Egg
		124122, -- Leyfire
		124123, -- Demonfire
		124124, -- Blood of Sargeras
		124436, -- Foxflower Flux
		124437, -- Shal'dorei Silk
		124438, -- Unbroken Claw
		124439, -- Unbroken Tooth
		124440, -- Arkhana
		124441, -- Leylight Shard
		124442, -- Chaos Crystal
		124444, -- Infernal Brimstone
		124461, -- Demonsteel Bar
		127004, -- Imbued Silkweave
		127037, -- Runic Catgut
		127681, -- Sharp Spritethorn
		128304, -- Yseralline Seed
		129032, -- Roseate Pigment
		129034, -- Sallow Pigment
		129100, -- Gem Chip
		129284, -- Aethril Seed
		129285, -- Dreamleaf Seed
		129286, -- Foxflower Seed
		129287, -- Fjarnskaggl Seed
		129288, -- Starlight Rose Seed
		129289, -- Felwort Seed
		130172, -- Sangrite
		130173, -- Deep Amber
		130174, -- Azsunite
		130175, -- Chaotic Spinel
		130176, -- Skystone
		130177, -- Queen's Opal
		130178, -- Furystone
		130179, -- Eye of Prophecy
		130180, -- Dawnlight
		130181, -- Pandemonite
		130182, -- Maelstrom Sapphire
		130183, -- Shadowruby
		130245, -- Saber's Eye
		133588, -- Flaked Sea Salt
		133589, -- Dalapeño Pepper
		133590, -- Muskenbutter
		133591, -- River Onion
		133592, -- Stonedark Snail
		133593, -- Royal Olive
		133607, -- Silver Mackerel
		133680, -- Slice of Bacon
		136533, -- Dreadhide Leather
		136534, -- Gravenscale
		136633, -- Loose Trigger
		136636, -- Sniping Scope
		136637, -- Oversized Blasting Cap
		136638, -- True Iron Barrel
		137595, -- Viscous Transmutagen
		137596, -- Black Transmutagen
		137597, -- Oily Transmutagen
		140781, -- X-87 Battle Circuit
		140782, -- Neural Net Detangler
		140783, -- Predictive Combat Operations Databank
		140784, -- Fel Piston Stabilizer
		140785, -- Hardened Circuitboard Plating

		-- 7.1.0
		142335, -- Pristine Falcosaur Feather
		142336, -- Falcosaur Egg

		-- 7.1.5
		144329, -- Hardened Felglass

		-- 7.3.0
		151564, -- Empyrium
		151565, -- Astral Glory
		151566, -- Fiendish Leather
		151567, -- Lightweave Cloth
		151568, -- Primal Sargerite
		151579, -- Labradorite
		151718, -- Argulite
		151719, -- Lightsphene
		151720, -- Chemirine
		151721, -- Hesselian
		151722, -- Florid Malachite
	},

	[LE_EXPANSION_BATTLE_FOR_AZEROTH] = {
		-- 8.0.1
		152505, -- Riverbud
		152506, -- Star Moss
		152507, -- Akunda's Bite
		152508, -- Winter's Kiss
		152509, -- Siren's Pollen
		152510, -- Anchor Weed
		152511, -- Sea Stalk
		152512, -- Monelite Ore
		152513, -- Platinum Ore
		152541, -- Coarse Leather
		152542, -- Hardened Tempest Hide
		152543, -- Sand Shifter
		152544, -- Slimy Mackerel
		152545, -- Frenzied Fangtooth
		152546, -- Lane Snapper
		152547, -- Great Sea Catfish
		152548, -- Tiragarde Perch
		152549, -- Redtail Loach
		152576, -- Tidespray Linen
		152577, -- Deep Sea Satin
		152579, -- Storm Silver Ore
		152631, -- Briny Flesh
		152668, -- Expulsom
		152875, -- Gloom Dust
		152876, -- Umbra Shard
		152877, -- Veiled Crystal
		153050, -- Shimmerscale
		153051, -- Mistscale
		153635, -- Ultramarine Pigment
		153636, -- Crimson Pigment
		153669, -- Viridescent Pigment
		153700, -- Golden Beryl
		153701, -- Rubellite
		153702, -- Kubiline
		153703, -- Solstone
		153704, -- Viridium
		153705, -- Kyanite
		153706, -- Kraken's Eye
		154120, -- Owlseye
		154121, -- Scarlet Diamond
		154122, -- Tidal Amethyst
		154123, -- Amberblaze
		154124, -- Laribole
		154125, -- Royal Quartz
		154164, -- Blood-Stained Bone
		154165, -- Calcified Bone
		154722, -- Tempest Hide
		154897, -- Stringy Loins
		154898, -- Meaty Haunch
		154899, -- Thick Paleo Steak
		158186, -- Distilled Water
		158187, -- Ultramarine Ink
		158188, -- Crimson Ink
		158189, -- Viridescent Ink
		158205, -- Acacia Powder
		158378, -- Embroidered Deep Sea Satin
		159959, -- Nylon Thread
		160059, -- Amber Tanning Oil
		160298, -- Durable Flux
		160398, -- Choral Honey
		160399, -- Wild Flour
		160400, -- Foosaka
		160502, -- Chemical Blasting Cap
		160709, -- Fresh Potato
		160710, -- Wild Berries
		160711, -- Aromatic Fish Oil
		160712, -- Powdered Sugar
		161131, -- Barely Stable Azerite Reactor
		161132, -- Crush Resistant Stabilizer
		161136, -- Azerite Forged Protection Plating
		161137, -- Blast-Fired Electric Servomotor
		162460, -- Hydrocore
		162461, -- Sanguicell
		162515, -- Midnight Salmon
		162516, -- Rasboralus
		162517, -- U'taka
		163203, -- Hypersensitive Azeritometer Sensor
		163569, -- Insulated Wiring
		163782, -- Cursed Haunch

		-- 8.1.0
		165703, -- Breath of Bwonsamdi
		165948, -- Tidalcore

		-- 8.1.5
		167738, -- Gilded Seaweave

		-- 8.2.0
		168188, -- Sage Agate
		168189, -- Dark Opal
		168190, -- Lava Lazuli
		168191, -- Sea Currant
		168192, -- Sand Spinel
		168193, -- Azsharine
		168635, -- Leviathan's Eye
		168185, -- Osmenite Ore
		168262, -- Sentry Fish
		168302, -- Viper Fish
		168303, -- Rubbery Flank
		168487, -- Zin'anthid
		168645, -- Moist Fillet
		168646, -- Mauve Stinger
		168649, -- Dredged Leather
		168650, -- Cragscale
		168662, -- Maroon Pigment
		168663, -- Maroon Ink

		-- 8.3.0
		174353, -- Questionable Meat
		174327, -- Malformed Gnasher
		174328, -- Aberrant Voidfin
	}
}

local filter = AdiBags:RegisterFilter("TradeGoods", 92, "ABEvent-1.0")

filter.uiName = BAG_FILTER_TRADE_GOODS

function filter:Filter(slotData)
	local isCraftingReagent = select(17, GetItemInfo(slotData.itemId))
	if not isCraftingReagent then
		return
	end

	for expansionLevel, expansionItems in pairs(items) do
		if tContains(expansionItems, slotData.itemId) then
			return BAG_FILTER_TRADE_GOODS .. ": " .. _G["EXPANSION_NAME" .. expansionLevel]
		end
	end
end
