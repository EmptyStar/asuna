-- support for MT game translation.
local S = minetest.get_translator("too_many_stones")

if minetest.get_modpath("stairs") ~= nil then

-- Blue Agate
stairs.register_stair_and_slab(
	"agate_blue",
	"too_many_stones:agate_blue",
	{cracky = 3},
	{"tms_agate_blue.png"},
	"Blue Agate Stair",
	"Blue Agate Slab",
	default.node_sound_glass_defaults(),
	true
)

-- Gray Agate
stairs.register_stair_and_slab(
	"agate_gray",
	"too_many_stones:agate_gray",
	{cracky = 3},
	{"tms_agate_gray.png"},
	"Gray Agate Stair",
	"Gray Agate Slab",
	default.node_sound_glass_defaults(),
	true
)
-- Green Agate
stairs.register_stair_and_slab(
	"agate_green",
	"too_many_stones:agate_green",
	{cracky = 3},
	{"tms_agate_green.png"},
	"Green Agate Stair",
	"Green Agate Slab",
	default.node_sound_glass_defaults(),
	true
)
-- Moss Agate
stairs.register_stair_and_slab(
	"agate_moss",
	"too_many_stones:agate_moss",
	{cracky = 3},
	{"tms_agate_moss.png"},
	"Moss Agate Stair",
	"Moss Agate Slab",
	default.node_sound_glass_defaults(),
	true
)
-- Orange Agate
stairs.register_stair_and_slab(
	"agate_orange",
	"too_many_stones:agate_orange",
	{cracky = 3},
	{"tms_agate_orange.png"},
	"Orange Agate Stair",
	"Orange Agate Slab",
	default.node_sound_glass_defaults(),
	true
)
-- Purple Agate
stairs.register_stair_and_slab(
	"agate_purple",
	"too_many_stones:agate_purple",
	{cracky = 3},
	{"tms_agate_purple.png"},
	"Purple Agate Stair",
	"Purple Agate Slab",
	default.node_sound_glass_defaults(),
	true
)
-- Red Agate
stairs.register_stair_and_slab(
	"agate_red",
	"too_many_stones:agate_red",
	{cracky = 3},
	{"tms_agate_red.png"},
	"Red Agate Stair",
	"Red Agate Slab",
	default.node_sound_glass_defaults(),
	true
)

-- Amazonite
stairs.register_stair_and_slab(
	"amazonite",
	"too_many_stones:amazonite",
	{cracky = 3},
	{"tms_amazonite.png"},
	"Amazonite Stair",
	"Amazonite Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"amazonite_cobble",
	"too_many_stones:amazonite_cobble",
	{cracky = 3},
	{"tms_amazonite_cobble.png"},
	"Cobbled Amazonite Stair",
	"Cobbled Amazonite Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"amazonite_brick",
	"too_many_stones:amazonite_brick",
	{cracky = 2},
	{"tms_amazonite_brick.png"},
	"Amazonite Brick Stair",
	"Amazonite Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"amazonite_cracked_brick",
	"too_many_stones:amazonite_cracked_brick",
	{cracky = 2},
	{"tms_amazonite_cracked_brick.png"},
	"Cracked Amazonite Brick Stair",
	"Cracked Amazonite Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"amazonite_block",
	"too_many_stones:amazonite_block",
	{cracky = 2},
	{"tms_amazonite_block.png"},
	"Amazonite Block Stair",
	"Amazonite Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Amber
stairs.register_stair_and_slab(
	"amber",
	"too_many_stones:amber",
	{cracky = 3},
	{"tms_amber.png"},
	"Amber Stair",
	"Amber Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"amber_brick",
	"too_many_stones:amber_brick",
	{cracky = 2},
	{"tms_amber_brick.png"},
	"Amber Brick Stair",
	"Amber Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"amber_cracked_brick",
	"too_many_stones:amber_cracked_brick",
	{cracky = 2},
	{"tms_amber_cracked_brick.png"},
	"Cracked Amber Brick Stair",
	"Cracked Amber Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"amber_block",
	"too_many_stones:amber_block",
	{cracky = 2},
	{"tms_amber_block.png"},
	"Amber Block Stair",
	"Amber Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Amethyst
stairs.register_stair_and_slab(
	"amethyst",
	"too_many_stones:amethyst",
	{cracky = 3},
	{"tms_amethyst.png"},
	"Amethyst Stair",
	"Amethyst Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"amethyst_brick",
	"too_many_stones:amethyst_brick",
	{cracky = 2},
	{"tms_amethyst_brick.png"},
	"Amethyst Brick Stair",
	"Amethyst Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"amethyst_cracked_brick",
	"too_many_stones:amethyst_cracked_brick",
	{cracky = 2},
	{"tms_amethyst_cracked_brick.png"},
	"Cracked Amethyst Brick Stair",
	"Cracked Amethyst Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"amethyst_block",
	"too_many_stones:amethyst_block",
	{cracky = 2},
	{"tms_amethyst_block.png"},
	"Amethyst Block Stair",
	"Amethyst Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Andesite
stairs.register_stair_and_slab(
	"andesite",
	"too_many_stones:andesite",
	{cracky = 3},
	{"tms_andesite.png"},
	"Andesite Stair",
	"Andesite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"andesite_cobble",
	"too_many_stones:andesite_cobble",
	{cracky = 3},
	{"tms_andesite_cobble.png"},
	"Cobbled Andesite Stair",
	"Cobbled Andesite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"andesite_brick",
	"too_many_stones:andesite_brick",
	{cracky = 2},
	{"tms_andesite_brick.png"},
	"Andesite Brick Stair",
	"Andesite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"andesite_cracked_brick",
	"too_many_stones:andesite_cracked_brick",
	{cracky = 2},
	{"tms_andesite_cracked_brick.png"},
	"Cracked Andesite Brick Stair",
	"Cracked Andesite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"andesite_block",
	"too_many_stones:andesite_block",
	{cracky = 2},
	{"tms_andesite_block.png"},
	"Andesite Block Stair",
	"Andesite Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Basalt
stairs.register_stair_and_slab(
	"basalt",
	"too_many_stones:basalt",
	{cracky = 3},
	{"tms_basalt.png"},
	"Basalt Stair",
	"Basalt Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"basalt_cobble",
	"too_many_stones:basalt_cobble",
	{cracky = 3},
	{"tms_basalt_cobble.png"},
	"Cobbled Basalt Stair",
	"Cobbled Basalt Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"basalt_brick",
	"too_many_stones:basalt_brick",
	{cracky = 2},
	{"tms_basalt_brick.png"},
	"Basalt Brick Stair",
	"Basalt Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"basalt_cracked_brick",
	"too_many_stones:basalt_cracked_brick",
	{cracky = 2},
	{"tms_basalt_cracked_brick.png"},
	"Cracked Basalt Brick Stair",
	"Cracked Basalt Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"basalt_block",
	"too_many_stones:basalt_block",
	{cracky = 2},
	{"tms_basalt_block.png"},
	"Basalt Block Stair",
	"Basalt Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Black Moonstone
stairs.register_stair_and_slab(
	"black_moonstone",
	"too_many_stones:black_moonstone",
	{cracky = 3},
	{"tms_black_moonstone.png"},
	"Black Moonstone Stair",
	"Black Moonstone Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"black_moonstone_brick",
	"too_many_stones:black_moonstone_brick",
	{cracky = 2},
	{"tms_black_moonstone_brick.png"},
	"Black Moonstone Brick Stair",
	"Black Moonstone Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"black_moonstone_cracked_brick",
	"too_many_stones:black_moonstone_cracked_brick",
	{cracky = 2},
	{"tms_black_moonstone_cracked_brick.png"},
	"Cracked Black Moonstone Brick Stair",
	"Cracked Black Moonstone Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"black_moonstone_block",
	"too_many_stones:black_moonstone_block",
	{cracky = 2},
	{"tms_black_moonstone_block.png"},
	"Black Moonstone Block Stair",
	"Black Moonstone Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Calcite
stairs.register_stair_and_slab(
	"calcite",
	"too_many_stones:calcite",
	{cracky = 3},
	{"tms_calcite.png"},
	"Calcite Stair",
	"Calcite Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"calcite_brick",
	"too_many_stones:calcite_brick",
	{cracky = 2},
	{"tms_calcite_brick.png"},
	"Calcite Brick Stair",
	"Calcite Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"calcite_cracked_brick",
	"too_many_stones:calcite_cracked_brick",
	{cracky = 2},
	{"tms_calcite_cracked_brick.png"},
	"Cracked Calcite Brick Stair",
	"Cracked Calcite Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"calcite_block",
	"too_many_stones:calcite_block",
	{cracky = 2},
	{"tms_calcite_block.png"},
	"Calcite Block Stair",
	"Calcite Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Carnotite
stairs.register_stair_and_slab(
	"carnotite",
	"too_many_stones:carnotite",
	{cracky = 3},
	{"tms_carnotite.png"},
	"Carnotite Stair",
	"Carnotite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"carnotite_cobble",
	"too_many_stones:carnotite_cobble",
	{cracky = 3},
	{"tms_carnotite_cobble.png"},
	"Cobbled Carnotite Stair",
	"Cobbled Carnotite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"carnotite_brick",
	"too_many_stones:carnotite_brick",
	{cracky = 2},
	{"tms_carnotite_brick.png"},
	"Carnotite Brick Stair",
	"Carnotite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"carnotite_cracked_brick",
	"too_many_stones:carnotite_cracked_brick",
	{cracky = 2},
	{"tms_carnotite_cracked_brick.png"},
	"Cracked Carnotite Brick Stair",
	"Cracked Carnotite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"carnotite_block",
	"too_many_stones:carnotite_block",
	{cracky = 2},
	{"tms_carnotite_block.png"},
	"Carnotite Block Stair",
	"Carnotite Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Celestine
stairs.register_stair_and_slab(
	"celestine",
	"too_many_stones:celestine",
	{cracky = 3},
	{"tms_celestine.png"},
	"Celestine Stair",
	"Celestine Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"celestine_brick",
	"too_many_stones:celestine_brick",
	{cracky = 2},
	{"tms_celestine_brick.png"},
	"Celestine Brick Stair",
	"Celestine Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"celestine_cracked_brick",
	"too_many_stones:celestine_cracked_brick",
	{cracky = 2},
	{"tms_celestine_cracked_brick.png"},
	"Cracked Celestine Brick Stair",
	"Cracked Celestine Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"celestine_block",
	"too_many_stones:celestine_block",
	{cracky = 2},
	{"tms_celestine_block.png"},
	"Celestine Block Stair",
	"Celestine Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Chrysoprase
stairs.register_stair_and_slab(
	"chrysoprase",
	"too_many_stones:chrysoprase",
	{cracky = 3},
	{"tms_chrysoprase.png"},
	"Chrysoprase Stair",
	"Chrysoprase Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"chrysoprase_brick",
	"too_many_stones:chrysoprase_brick",
	{cracky = 2},
	{"tms_chrysoprase_brick.png"},
	"Chrysoprase Brick Stair",
	"Chrysoprase Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"chrysoprase_cracked_brick",
	"too_many_stones:chrysoprase_cracked_brick",
	{cracky = 2},
	{"tms_chrysoprase_cracked_brick.png"},
	"Cracked Chrysoprase Brick Stair",
	"Cracked Chrysoprase Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"chrysoprase_block",
	"too_many_stones:chrysoprase_block",
	{cracky = 2},
	{"tms_chrysoprase_block.png"},
	"Chrysoprase Block Stair",
	"Chrysoprase Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Citrine
stairs.register_stair_and_slab(
	"citrine",
	"too_many_stones:citrine",
	{cracky = 3},
	{"tms_citrine.png"},
	"Citrine Stair",
	"Citrine Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"citrine_brick",
	"too_many_stones:citrine_brick",
	{cracky = 2},
	{"tms_citrine_brick.png"},
	"Citrine Brick Stair",
	"Citrine Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"citrine_cracked_brick",
	"too_many_stones:citrine_cracked_brick",
	{cracky = 2},
	{"tms_citrine_cracked_brick.png"},
	"Cracked Citrine Brick Stair",
	"Cracked Citrine Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"citrine_block",
	"too_many_stones:citrine_block",
	{cracky = 2},
	{"tms_citrine_block.png"},
	"Citrine Block Stair",
	"Citrine Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Covellite
stairs.register_stair_and_slab(
	"covellite",
	"too_many_stones:covellite",
	{cracky = 3},
	{"tms_covellite.png"},
	"Covellite Stair",
	"Covellite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"covellite_brick",
	"too_many_stones:covellite_brick",
	{cracky = 2},
	{"tms_covellite_brick.png"},
	"Covellite Brick Stair",
	"Covellite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"covellite_cracked_brick",
	"too_many_stones:covellite_cracked_brick",
	{cracky = 2},
	{"tms_covellite_cracked_brick.png"},
	"Cracked Covellite Brick Stair",
	"Cracked Covellite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"covellite_block",
	"too_many_stones:covellite_block",
	{cracky = 2},
	{"tms_covellite_block.png"},
	"Covellite Block Stair",
	"Covellite Block Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"covellite_cobble",
	"too_many_stones:covellite_cobble",
	{cracky = 2},
	{"tms_covellite_cobble.png"},
	"Cobbled Covellite Stair",
	"Cobbled Covellite Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Crocoite
stairs.register_stair_and_slab(
	"crocoite",
	"too_many_stones:crocoite",
	{cracky = 3},
	{"tms_crocoite.png"},
	"Crocoite Stair",
	"Crocoite Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"crocoite_brick",
	"too_many_stones:crocoite_brick",
	{cracky = 2},
	{"tms_crocoite_brick.png"},
	"Crocoite Brick Stair",
	"Crocoite Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"crocoite_cracked_brick",
	"too_many_stones:crocoite_cracked_brick",
	{cracky = 2},
	{"tms_crocoite_cracked_brick.png"},
	"Cracked Crocoite Brick Stair",
	"Cracked Crocoite Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"crocoite_block",
	"too_many_stones:crocoite_block",
	{cracky = 2},
	{"tms_crocoite_block.png"},
	"Crocoite Block Stair",
	"Crocoite Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Erythrite
stairs.register_stair_and_slab(
	"erythrite",
	"too_many_stones:erythrite",
	{cracky = 3},
	{"tms_erythrite.png"},
	"Erythrite Stair",
	"Erythrite Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"erythrite_brick",
	"too_many_stones:erythrite_brick",
	{cracky = 2},
	{"tms_erythrite_brick.png"},
	"Erythrite Brick Stair",
	"Erythrite Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"erythrite_cracked_brick",
	"too_many_stones:erythrite_cracked_brick",
	{cracky = 2},
	{"tms_erythrite_cracked_brick.png"},
	"Cracked Erythrite Brick Stair",
	"Cracked Erythrite Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"erythrite_block",
	"too_many_stones:erythrite_block",
	{cracky = 2},
	{"tms_erythrite_block.png"},
	"Erythrite Block Stair",
	"Erythrite Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Eudialite
stairs.register_stair_and_slab(
	"eudialite",
	"too_many_stones:eudialite",
	{cracky = 3},
	{"tms_eudialite.png"},
	"Eudialite Stair",
	"Eudialite Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"eudialite_brick",
	"too_many_stones:eudialite_brick",
	{cracky = 2},
	{"tms_eudialite_brick.png"},
	"Eudialite Brick Stair",
	"Eudialite Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"eudialite_cracked_brick",
	"too_many_stones:eudialite_cracked_brick",
	{cracky = 2},
	{"tms_eudialite_cracked_brick.png"},
	"Cracked Eudialite Brick Stair",
	"Cracked Eudialite Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"eudialite_block",
	"too_many_stones:eudialite_block",
	{cracky = 2},
	{"tms_eudialite_block.png"},
	"Eudialite Block Stair",
	"Eudialite Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Fluorite
stairs.register_stair_and_slab(
	"fluorite",
	"too_many_stones:fluorite",
	{cracky = 3},
	{"tms_fluorite.png"},
	"Fluorite Stair",
	"Fluorite Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"fluorite_brick",
	"too_many_stones:fluorite_brick",
	{cracky = 2},
	{"tms_fluorite_brick.png"},
	"Fluorite Brick Stair",
	"Fluorite Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"fluorite_cracked_brick",
	"too_many_stones:fluorite_cracked_brick",
	{cracky = 2},
	{"tms_fluorite_cracked_brick.png"},
	"Cracked Fluorite Brick Stair",
	"Cracked Fluorite Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"fluorite_block",
	"too_many_stones:fluorite_block",
	{cracky = 2},
	{"tms_fluorite_block.png"},
	"Fluorite Block Stair",
	"Fluorite Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Gabbro
stairs.register_stair_and_slab(
	"gabbro",
	"too_many_stones:gabbro",
	{cracky = 3},
	{"tms_gabbro.png"},
	"Gabbro Stair",
	"Gabbro Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"gabbro_cobble",
	"too_many_stones:gabbro_cobble",
	{cracky = 3},
	{"tms_gabbro_cobble.png"},
	"Cobbled Gabbro Stair",
	"Cobbled Gabbro Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"gabbro_brick",
	"too_many_stones:gabbro_brick",
	{cracky = 2},
	{"tms_gabbro_brick.png"},
	"Gabbro Brick Stair",
	"Gabbro Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"gabbro_cracked_brick",
	"too_many_stones:gabbro_cracked_brick",
	{cracky = 2},
	{"tms_gabbro_cracked_brick.png"},
	"Cracked Gabbro Brick Stair",
	"Cracked Gabbro Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"gabbro_block",
	"too_many_stones:gabbro_block",
	{cracky = 2},
	{"tms_gabbro_block.png"},
	"Gabbro Block Stair",
	"Gabbro Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Galena
stairs.register_stair_and_slab(
	"galena",
	"too_many_stones:galena",
	{cracky = 3},
	{"tms_galena.png"},
	"Galena Stair",
	"Galena Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"galena_brick",
	"too_many_stones:galena_brick",
	{cracky = 2},
	{"tms_galena_brick.png"},
	"Galena Brick Stair",
	"Galena Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"galena_cracked_brick",
	"too_many_stones:galena_cracked_brick",
	{cracky = 2},
	{"tms_galena_cracked_brick.png"},
	"Cracked Galena Brick Stair",
	"Cracked Galena Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"galena_block",
	"too_many_stones:galena_block",
	{cracky = 2},
	{"tms_galena_block.png"},
	"Galena Block Stair",
	"Galena Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Black Granite
stairs.register_stair_and_slab(
	"granite_black",
	"too_many_stones:granite_black",
	{cracky = 3},
	{"tms_granite_black.png"},
	"Black Granite Stair",
	"Black Granite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"granite_black_brick",
	"too_many_stones:granite_black_brick",
	{cracky = 2},
	{"tms_granite_black_brick.png"},
	"Black Granite Brick Stair",
	"Black Granite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_black_cracked_brick",
	"too_many_stones:granite_black_cracked_brick",
	{cracky = 2},
	{"tms_granite_black_cracked_brick.png"},
	"Cracked Black Granite Brick Stair",
	"Cracked Black Granite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_black_block",
	"too_many_stones:granite_black_block",
	{cracky = 2},
	{"tms_granite_black_block.png"},
	"Black Granite Block Stair",
	"Black Granite Block Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_black_cobble",
	"too_many_stones:granite_black_cobble",
	{cracky = 2},
	{"tms_granite_black_cobble.png"},
	"Cobbled Black Granite Stair",
	"Cobbled Black Granite Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Blue Granite
stairs.register_stair_and_slab(
	"granite_blue",
	"too_many_stones:granite_blue",
	{cracky = 3},
	{"tms_granite_blue.png"},
	"Blue Granite Stair",
	"Blue Granite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"granite_blue_brick",
	"too_many_stones:granite_blue_brick",
	{cracky = 2},
	{"tms_granite_blue_brick.png"},
	"Blue Granite Brick Stair",
	"Blue Granite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_blue_cracked_brick",
	"too_many_stones:granite_blue_cracked_brick",
	{cracky = 2},
	{"tms_granite_blue_cracked_brick.png"},
	"Cracked Blue Granite Brick Stair",
	"Cracked Blue Granite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_blue_block",
	"too_many_stones:granite_blue_block",
	{cracky = 2},
	{"tms_granite_blue_block.png"},
	"Blue Granite Block Stair",
	"Blue Granite Block Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_blue_cobble",
	"too_many_stones:granite_blue_cobble",
	{cracky = 2},
	{"tms_granite_blue_cobble.png"},
	"Cobbled Blue Granite Stair",
	"Cobbled Blue Granite Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Gray Granite
stairs.register_stair_and_slab(
	"granite_gray",
	"too_many_stones:granite_gray",
	{cracky = 3},
	{"tms_granite_gray.png"},
	"Gray Granite Stair",
	"Gray Granite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"granite_gray_brick",
	"too_many_stones:granite_gray_brick",
	{cracky = 2},
	{"tms_granite_gray_brick.png"},
	"Gray Granite Brick Stair",
	"Gray Granite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_gray_cracked_brick",
	"too_many_stones:granite_gray_cracked_brick",
	{cracky = 2},
	{"tms_granite_gray_cracked_brick.png"},
	"Cracked Gray Granite Brick Stair",
	"Cracked Gray Granite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_gray_block",
	"too_many_stones:granite_gray_block",
	{cracky = 2},
	{"tms_granite_gray_block.png"},
	"Gray Granite Block Stair",
	"Gray Granite Block Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_gray_cobble",
	"too_many_stones:granite_gray_cobble",
	{cracky = 2},
	{"tms_granite_gray_cobble.png"},
	"Cobbled Gray Granite Stair",
	"Cobbled Gray Granite Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Green Granite
stairs.register_stair_and_slab(
	"granite_green",
	"too_many_stones:granite_green",
	{cracky = 3},
	{"tms_granite_green.png"},
	"Green Granite Stair",
	"Green Granite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"granite_green_brick",
	"too_many_stones:granite_green_brick",
	{cracky = 2},
	{"tms_granite_green_brick.png"},
	"Green Granite Brick Stair",
	"Green Granite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_green_cracked_brick",
	"too_many_stones:granite_green_cracked_brick",
	{cracky = 2},
	{"tms_granite_green_cracked_brick.png"},
	"Cracked Green Granite Brick Stair",
	"Cracked Green Granite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_green_block",
	"too_many_stones:granite_green_block",
	{cracky = 2},
	{"tms_granite_green_block.png"},
	"Green Granite Block Stair",
	"Green Granite Block Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_green_cobble",
	"too_many_stones:granite_green_cobble",
	{cracky = 2},
	{"tms_granite_green_cobble.png"},
	"Cobbled Green Granite Stair",
	"Cobbled Green Granite Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Pink Granite
stairs.register_stair_and_slab(
	"granite_pink",
	"too_many_stones:granite_pink",
	{cracky = 3},
	{"tms_granite_pink.png"},
	"Pink Granite Stair",
	"Pink Granite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"granite_pink_brick",
	"too_many_stones:granite_pink_brick",
	{cracky = 2},
	{"tms_granite_pink_brick.png"},
	"Pink Granite Brick Stair",
	"Pink Granite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_pink_cracked_brick",
	"too_many_stones:granite_pink_cracked_brick",
	{cracky = 2},
	{"tms_granite_pink_cracked_brick.png"},
	"Cracked Pink Granite Brick Stair",
	"Cracked Pink Granite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_pink_block",
	"too_many_stones:granite_pink_block",
	{cracky = 2},
	{"tms_granite_pink_block.png"},
	"Pink Granite Block Stair",
	"Pink Granite Block Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_pink_cobble",
	"too_many_stones:granite_pink_cobble",
	{cracky = 2},
	{"tms_granite_pink_cobble.png"},
	"Cobbled Pink Granite Stair",
	"Cobbled Pink Granite Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Red Granite
stairs.register_stair_and_slab(
	"granite_red",
	"too_many_stones:granite_red",
	{cracky = 3},
	{"tms_granite_red.png"},
	"Red Granite Stair",
	"Red Granite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"granite_red_brick",
	"too_many_stones:granite_red_brick",
	{cracky = 2},
	{"tms_granite_red_brick.png"},
	"Red Granite Brick Stair",
	"Red Granite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_red_cracked_brick",
	"too_many_stones:granite_red_cracked_brick",
	{cracky = 2},
	{"tms_granite_red_cracked_brick.png"},
	"Cracked Red Granite Brick Stair",
	"Cracked Red Granite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_red_block",
	"too_many_stones:granite_red_block",
	{cracky = 2},
	{"tms_granite_red_block.png"},
	"Red Granite Block Stair",
	"Red Granite Block Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_red_cobble",
	"too_many_stones:granite_red_cobble",
	{cracky = 2},
	{"tms_granite_red_cobble.png"},
	"Cobbled Red Granite Stair",
	"Cobbled Red Granite Slab",
	default.node_sound_stone_defaults(),
	false
)
-- White Granite
stairs.register_stair_and_slab(
	"granite_white",
	"too_many_stones:granite_white",
	{cracky = 3},
	{"tms_granite_white.png"},
	"White Granite Stair",
	"White Granite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"granite_white_brick",
	"too_many_stones:granite_white_brick",
	{cracky = 2},
	{"tms_granite_white_brick.png"},
	"White Granite Brick Stair",
	"White Granite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_white_cracked_brick",
	"too_many_stones:granite_white_cracked_brick",
	{cracky = 2},
	{"tms_granite_white_cracked_brick.png"},
	"Cracked White Granite Brick Stair",
	"Cracked White Granite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_white_block",
	"too_many_stones:granite_white_block",
	{cracky = 2},
	{"tms_granite_white_block.png"},
	"White Granite Block Stair",
	"White Granite Block Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_white_cobble",
	"too_many_stones:granite_white_cobble",
	{cracky = 2},
	{"tms_granite_white_cobble.png"},
	"Cobbled White Granite Stair",
	"Cobbled White Granite Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Yellow Granite
stairs.register_stair_and_slab(
	"granite_yellow",
	"too_many_stones:granite_yellow",
	{cracky = 3},
	{"tms_granite_yellow.png"},
	"Yellow Granite Stair",
	"Yellow Granite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"granite_yellow_brick",
	"too_many_stones:granite_yellow_brick",
	{cracky = 2},
	{"tms_granite_yellow_brick.png"},
	"Yellow Granite Brick Stair",
	"Yellow Granite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_yellow_cracked_brick",
	"too_many_stones:granite_yellow_cracked_brick",
	{cracky = 2},
	{"tms_granite_yellow_cracked_brick.png"},
	"Cracked Yellow Granite Brick Stair",
	"Cracked Yellow Granite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_yellow_block",
	"too_many_stones:granite_yellow_block",
	{cracky = 2},
	{"tms_granite_yellow_block.png"},
	"Yellow Granite Block Stair",
	"Yellow Granite Block Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"granite_yellow_cobble",
	"too_many_stones:granite_yellow_cobble",
	{cracky = 2},
	{"tms_granite_yellow_cobble.png"},
	"Cobbled Yellow Granite Stair",
	"Cobbled Yellow Granite Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Heliodor
stairs.register_stair_and_slab(
	"heliodor",
	"too_many_stones:heliodor",
	{cracky = 3},
	{"tms_heliodor.png"},
	"Heliodor Stair",
	"Heliodor Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"heliodor_brick",
	"too_many_stones:heliodor_brick",
	{cracky = 2},
	{"tms_heliodor_brick.png"},
	"Heliodor Brick Stair",
	"Heliodor Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"heliodor_cracked_brick",
	"too_many_stones:heliodor_cracked_brick",
	{cracky = 2},
	{"tms_heliodor_cracked_brick.png"},
	"Cracked Heliodor Brick Stair",
	"Cracked Heliodor Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"heliodor_block",
	"too_many_stones:heliodor_block",
	{cracky = 2},
	{"tms_heliodor_block.png"},
	"Heliodor Block Stair",
	"Heliodor Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Howlite
stairs.register_stair_and_slab(
	"howlite",
	"too_many_stones:howlite",
	{cracky = 3},
	{"tms_howlite.png"},
	"Howlite Stair",
	"Howlite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"howlite_brick",
	"too_many_stones:howlite_brick",
	{cracky = 2},
	{"tms_howlite_brick.png"},
	"Howlite Brick Stair",
	"Howlite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"howlite_cracked_brick",
	"too_many_stones:howlite_cracked_brick",
	{cracky = 2},
	{"tms_howlite_cracked_brick.png"},
	"Cracked Howlite Brick Stair",
	"Cracked Howlite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"howlite_block",
	"too_many_stones:howlite_block",
	{cracky = 2},
	{"tms_howlite_block.png"},
	"Howlite Block Stair",
	"Howlite Block Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"howlite_cobble",
	"too_many_stones:howlite_cobble",
	{cracky = 2},
	{"tms_howlite_cobble.png"},
	"Cobbled Howlite Stair",
	"Cobbled Howlite Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Ilvaite
stairs.register_stair_and_slab(
	"ilvaite",
	"too_many_stones:ilvaite",
	{cracky = 3},
	{"tms_ilvaite.png"},
	"Ilvaite Stair",
	"Ilvaite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"ilvaite_cobble",
	"too_many_stones:ilvaite_cobble",
	{cracky = 3},
	{"tms_ilvaite_cobble.png"},
	"Cobbled Ilvaite Stair",
	"Cobbled Ilvaite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"ilvaite_brick",
	"too_many_stones:ilvaite_brick",
	{cracky = 2},
	{"tms_ilvaite_brick.png"},
	"Ilvaite Brick Stair",
	"Ilvaite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"ilvaite_cracked_brick",
	"too_many_stones:ilvaite_cracked_brick",
	{cracky = 2},
	{"tms_ilvaite_cracked_brick.png"},
	"Cracked Ilvaite Brick Stair",
	"Cracked Ilvaite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"ilvaite_block",
	"too_many_stones:ilvaite_block",
	{cracky = 2},
	{"tms_ilvaite_block.png"},
	"Ilvaite Block Stair",
	"Ilvaite Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Jade
minetest.register_alias("stairs:stair_greenstone", "stairs:stair_jade")
minetest.register_alias("stairs:stair_greenstone_block", "stairs:stair_jade_block")
minetest.register_alias("stairs:stair_greenstone_cobble", "stairs:stair_jade_cobble")
minetest.register_alias("stairs:stair_greenstone_brick", "stairs:stair_jade_brick")
minetest.register_alias("stairs:stair_greenstone_cracked_brick", "stairs:stair_jade_cracked_brick")

minetest.register_alias("stairs:stair_inner_greenstone", "stairs:stair_inner_jade")
minetest.register_alias("stairs:stair_inner_greenstone_block", "stairs:stair_inner_jade_block")
minetest.register_alias("stairs:stair_inner_greenstone_cobble", "stairs:stair_inner_jade_cobble")
minetest.register_alias("stairs:stair_inner_greenstone_brick", "stairs:stair_inner_jade_brick")
minetest.register_alias("stairs:stair_inner_greenstone_cracked_brick", "stairs:stair_inner_jade_cracked_brick")

minetest.register_alias("stairs:stair_outer_greenstone", "stairs:stair_outer_jade")
minetest.register_alias("stairs:stair_outer_greenstone_block", "stairs:stair_outer_jade_block")
minetest.register_alias("stairs:stair_outer_greenstone_cobble", "stairs:stair_outer_jade_cobble")
minetest.register_alias("stairs:stair_outer_greenstone_brick", "stairs:stair_outer_jade_brick")
minetest.register_alias("stairs:stair_outer_greenstone_cracked_brick", "stairs:stair_outer_jade_cracked_brick")

minetest.register_alias("stairs:slab_greenstone", "stairs:slab_jade")
minetest.register_alias("stairs:slab_greenstone_block", "stairs:slab_jade_block")
minetest.register_alias("stairs:slab_greenstone_cobble", "stairs:slab_jade_cobble")
minetest.register_alias("stairs:slab_greenstone_brick", "stairs:slab_jade_brick")
minetest.register_alias("stairs:slab_greenstone_cracked_brick", "stairs:slab_jade_cracked_brick")

stairs.register_stair_and_slab(
	"jade",
	"too_many_stones:jade",
	{cracky = 3},
	{"tms_jade.png"},
	"Jade Stair",
	"Jade Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"jade_cobble",
	"too_many_stones:jade_cobble",
	{cracky = 3},
	{"tms_jade_cobble.png"},
	"Cobbled Jade Stair",
	"Cobbled Jade Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"jade_brick",
	"too_many_stones:jade_brick",
	{cracky = 2},
	{"tms_jade_brick.png"},
	"Jade Brick Stair",
	"Jade Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"jade_cracked_brick",
	"too_many_stones:jade_cracked_brick",
	{cracky = 2},
	{"tms_jade_cracked_brick.png"},
	"Cracked Jade Brick Stair",
	"Cracked Jade Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"jade_block",
	"too_many_stones:jade_block",
	{cracky = 2},
	{"tms_jade_block.png"},
	"Jade Block Stair",
	"Jade Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Kyanite
stairs.register_stair_and_slab(
	"kyanite",
	"too_many_stones:kyanite",
	{cracky = 3},
	{"tms_kyanite.png"},
	"Kyanite Stair",
	"Kyanite Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"kyanite_cobble",
	"too_many_stones:kyanite_cobble",
	{cracky = 3},
	{"tms_kyanite_cobble.png"},
	"Cobbled Kyanite Stair",
	"Cobbled Kyanite Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"kyanite_brick",
	"too_many_stones:kyanite_brick",
	{cracky = 2},
	{"tms_kyanite_brick.png"},
	"Kyanite Brick Stair",
	"Kyanite Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"kyanite_cracked_brick",
	"too_many_stones:kyanite_cracked_brick",
	{cracky = 2},
	{"tms_kyanite_cracked_brick.png"},
	"Cracked Kyanite Brick Stair",
	"Cracked Kyanite Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"kyanite_block",
	"too_many_stones:kyanite_block",
	{cracky = 2},
	{"tms_kyanite_block.png"},
	"Kyanite Block Stair",
	"Kyanite Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Lapis Lazuli
stairs.register_stair_and_slab(
	"lapis_lazuli",
	"too_many_stones:lapis_lazuli",
	{cracky = 3},
	{"tms_lapis_lazuli.png"},
	"Lapis Lazuli Stair",
	"Lapis Lazuli Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"lapis_lazuli_brick",
	"too_many_stones:lapis_lazuli_brick",
	{cracky = 2},
	{"tms_lapis_lazuli_brick.png"},
	"Lapis Lazuli Brick Stair",
	"Lapis Lazuli Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"lapis_lazuli_cracked_brick",
	"too_many_stones:lapis_lazuli_cracked_brick",
	{cracky = 2},
	{"tms_lapis_lazuli_cracked_brick.png"},
	"Cracked Lapis Lazuli Brick Stair",
	"Cracked Lapis Lazuli Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"lapis_lazuli_block",
	"too_many_stones:lapis_lazuli_block",
	{cracky = 2},
	{"tms_lapis_lazuli_block.png"},
	"Lapis Lazuli Block Stair",
	"Lapis Lazuli Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Blue Limestone
stairs.register_stair_and_slab(
	"limestone_blue",
	"too_many_stones:limestone_blue",
	{cracky = 3},
	{"tms_limestone_blue.png"},
	"Blue Limestone Stair",
	"Blue Limestone Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"limestone_blue_cobble",
	"too_many_stones:limestone_blue_cobble",
	{cracky = 3},
	{"tms_limestone_blue_cobble.png"},
	"Cobbled Blue Limestone Stair",
	"Cobbled Blue Limestone Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"limestone_blue_brick",
	"too_many_stones:limestone_blue_brick",
	{cracky = 2},
	{"tms_limestone_blue_brick.png"},
	"Blue Limestone Brick Stair",
	"Blue Limestone Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"limestone_blue_cracked_brick",
	"too_many_stones:limestone_blue_cracked_brick",
	{cracky = 2},
	{"tms_limestone_blue_cracked_brick.png"},
	"Cracked Blue Limestone Brick Stair",
	"Cracked Blue Limestone Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"limestone_blue_block",
	"too_many_stones:limestone_blue_block",
	{cracky = 2},
	{"tms_limestone_blue_block.png"},
	"Blue Limestone Block Stair",
	"Blue Limestone Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- White Limestone
stairs.register_stair_and_slab(
	"limestone_white",
	"too_many_stones:limestone_white",
	{cracky = 3},
	{"tms_limestone_white.png"},
	"White Limestone Stair",
	"White Limestone Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"limestone_white_cobble",
	"too_many_stones:limestone_white_cobble",
	{cracky = 3},
	{"tms_limestone_white_cobble.png"},
	"Cobbled White Limestone Stair",
	"Cobbled White Limestone Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"limestone_white_brick",
	"too_many_stones:limestone_white_brick",
	{cracky = 2},
	{"tms_limestone_white_brick.png"},
	"White Limestone Brick Stair",
	"White Limestone Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"limestone_white_cracked_brick",
	"too_many_stones:limestone_white_cracked_brick",
	{cracky = 2},
	{"tms_limestone_white_cracked_brick.png"},
	"Cracked White Limestone Brick Stair",
	"Cracked White Limestone Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"limestone_white_block",
	"too_many_stones:limestone_white_block",
	{cracky = 2},
	{"tms_limestone_white_block.png"},
	"White Limestone Block Stair",
	"White Limestone Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Marble
stairs.register_stair_and_slab(
	"marble",
	"too_many_stones:marble",
	{cracky = 3},
	{"tms_marble.png"},
	"Marble Stair",
	"Marble Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"marble_cobble",
	"too_many_stones:marble_cobble",
	{cracky = 3},
	{"tms_marble_cobble.png"},
	"Cobbled Marble Stair",
	"Cobbled Marble Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"marble_brick",
	"too_many_stones:marble_brick",
	{cracky = 2},
	{"tms_marble_brick.png"},
	"Marble Brick Stair",
	"Marble Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"marble_cracked_brick",
	"too_many_stones:marble_cracked_brick",
	{cracky = 2},
	{"tms_marble_cracked_brick.png"},
	"Cracked Marble Brick Stair",
	"Cracked Marble Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"marble_block",
	"too_many_stones:marble_block",
	{cracky = 2},
	{"tms_marble_block.png"},
	"Marble Block Stair",
	"Marble Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Morion Quartz
stairs.register_stair_and_slab(
	"morion_quartz",
	"too_many_stones:morion_quartz",
	{cracky = 3},
	{"tms_morion_quartz.png"},
	"Morion Quartz Stair",
	"Morion Quartz Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"morion_quartz_brick",
	"too_many_stones:morion_quartz_brick",
	{cracky = 2},
	{"tms_morion_quartz_brick.png"},
	"Morion Quartz Brick Stair",
	"Morion Quartz Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"morion_quartz_cracked_brick",
	"too_many_stones:morion_quartz_cracked_brick",
	{cracky = 2},
	{"tms_morion_quartz_cracked_brick.png"},
	"Cracked Morion Quartz Brick Stair",
	"Cracked Morion Quartz Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"morion_quartz_block",
	"too_many_stones:morion_quartz_block",
	{cracky = 2},
	{"tms_morion_quartz_block.png"},
	"Morion Quartz Block Stair",
	"Morion Quartz Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Mudstone
stairs.register_stair_and_slab(
	"mudstone",
	"too_many_stones:mudstone",
	{cracky = 3},
	{"tms_mudstone.png"},
	"Mudstone Stair",
	"Mudstone Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"mudstone_cobble",
	"too_many_stones:mudstone_cobble",
	{cracky = 3},
	{"tms_mudstone_cobble.png"},
	"Cobbled Mudstone Stair",
	"Cobbled Mudstone Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"mudstone_brick",
	"too_many_stones:mudstone_brick",
	{cracky = 2},
	{"tms_mudstone_brick.png"},
	"Mudstone Brick Stair",
	"Mudstone Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"mudstone_cracked_brick",
	"too_many_stones:mudstone_cracked_brick",
	{cracky = 2},
	{"tms_mudstone_cracked_brick.png"},
	"Cracked Mudstone Brick Stair",
	"Cracked Mudstone Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"mudstone_block",
	"too_many_stones:mudstone_block",
	{cracky = 2},
	{"tms_mudstone_block.png"},
	"Mudstone Block Stair",
	"Mudstone Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Prasiolite
stairs.register_stair_and_slab(
	"prasiolite",
	"too_many_stones:prasiolite",
	{cracky = 3},
	{"tms_prasiolite.png"},
	"Prasiolite Stair",
	"Prasiolite Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"prasiolite_brick",
	"too_many_stones:prasiolite_brick",
	{cracky = 2},
	{"tms_prasiolite_brick.png"},
	"Prasiolite Brick Stair",
	"Prasiolite Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"prasiolite_cracked_brick",
	"too_many_stones:prasiolite_cracked_brick",
	{cracky = 2},
	{"tms_prasiolite_cracked_brick.png"},
	"Cracked Prasiolite Brick Stair",
	"Cracked Prasiolite Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"prasiolite_block",
	"too_many_stones:prasiolite_block",
	{cracky = 2},
	{"tms_prasiolite_block.png"},
	"Prasiolite Block Stair",
	"Prasiolite Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Pumice
stairs.register_stair_and_slab(
	"pumice",
	"too_many_stones:pumice",
	{cracky = 3},
	{"tms_pumice.png"},
	"Pumice Stair",
	"Pumice Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"pumice_brick",
	"too_many_stones:pumice_brick",
	{cracky = 2},
	{"tms_pumice_brick.png"},
	"Pumice Brick Stair",
	"Pumice Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"pumice_cracked_brick",
	"too_many_stones:pumice_cracked_brick",
	{cracky = 2},
	{"tms_pumice_cracked_brick.png"},
	"Cracked Pumice Brick Stair",
	"Cracked Pumice Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"pumice_block",
	"too_many_stones:pumice_block",
	{cracky = 2},
	{"tms_pumice_block.png"},
	"Pumice Block Stair",
	"Pumice Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Pyrite
stairs.register_stair_and_slab(
	"pyrite",
	"too_many_stones:pyrite",
	{cracky = 3},
	{"tms_pyrite.png"},
	"Pyrite Stair",
	"Pyrite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"pyrite_brick",
	"too_many_stones:pyrite_brick",
	{cracky = 2},
	{"tms_pyrite_brick.png"},
	"Pyrite Brick Stair",
	"Pyrite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"pyrite_cracked_brick",
	"too_many_stones:pyrite_cracked_brick",
	{cracky = 2},
	{"tms_pyrite_cracked_brick.png"},
	"Cracked Pyrite Brick Stair",
	"Cracked Pyrite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"pyrite_block",
	"too_many_stones:pyrite_block",
	{cracky = 2},
	{"tms_pyrite_block.png"},
	"Pyrite Block Stair",
	"Pyrite Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Quartz
stairs.register_stair_and_slab(
	"quartz",
	"too_many_stones:quartz",
	{cracky = 3},
	{"tms_quartz.png"},
	"Quartz Stair",
	"Quartz Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"quartz_brick",
	"too_many_stones:quartz_brick",
	{cracky = 2},
	{"tms_quartz_brick.png"},
	"Quartz Brick Stair",
	"Quartz Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"quartz_cracked_brick",
	"too_many_stones:quartz_cracked_brick",
	{cracky = 2},
	{"tms_quartz_cracked_brick.png"},
	"Cracked Quartz Brick Stair",
	"Cracked Quartz Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"quartz_block",
	"too_many_stones:quartz_block",
	{cracky = 2},
	{"tms_quartz_block.png"},
	"Quartz Block Stair",
	"Quartz Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Rose Quartz
stairs.register_stair_and_slab(
	"rose_quartz",
	"too_many_stones:rose_quartz",
	{cracky = 3},
	{"tms_rose_quartz.png"},
	"Rose Quartz Stair",
	"Rose Quartz Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"rose_quartz_brick",
	"too_many_stones:rose_quartz_brick",
	{cracky = 2},
	{"tms_rose_quartz_brick.png"},
	"Rose Quartz Brick Stair",
	"Rose Quartz Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"rose_quartz_cracked_brick",
	"too_many_stones:rose_quartz_cracked_brick",
	{cracky = 2},
	{"tms_rose_quartz_cracked_brick.png"},
	"Cracked Rose Quartz Brick Stair",
	"Cracked Rose Quartz Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"rose_quartz_block",
	"too_many_stones:rose_quartz_block",
	{cracky = 2},
	{"tms_rose_quartz_block.png"},
	"Rose Quartz Block Stair",
	"Rose Quartz Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Scoria
stairs.register_stair_and_slab(
	"scoria",
	"too_many_stones:scoria",
	{cracky = 3},
	{"tms_scoria.png"},
	"Scoria Stair",
	"Scoria Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"scoria_cobble",
	"too_many_stones:scoria_cobble",
	{cracky = 3},
	{"tms_scoria_cobble.png"},
	"Cobbled Scoria Stair",
	"Cobbled Scoria Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"scoria_brick",
	"too_many_stones:scoria_brick",
	{cracky = 2},
	{"tms_scoria_brick.png"},
	"Scoria Brick Stair",
	"Scoria Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"scoria_cracked_brick",
	"too_many_stones:scoria_cracked_brick",
	{cracky = 2},
	{"tms_scoria_cracked_brick.png"},
	"Cracked Scoria Brick Stair",
	"Cracked Scoria Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"scoria_block",
	"too_many_stones:scoria_block",
	{cracky = 2},
	{"tms_scoria_block.png"},
	"Scoria Block Stair",
	"Scoria Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Serpentine
stairs.register_stair_and_slab(
	"serpentine",
	"too_many_stones:serpentine",
	{cracky = 3},
	{"tms_serpentine.png"},
	"Serpentine Stair",
	"Serpentine Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"serpentine_cobble",
	"too_many_stones:serpentine_cobble",
	{cracky = 3},
	{"tms_serpentine_cobble.png"},
	"Cobbled Serpentine Stair",
	"Cobbled Serpentine Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"serpentine_brick",
	"too_many_stones:serpentine_brick",
	{cracky = 2},
	{"tms_serpentine_brick.png"},
	"Serpentine Brick Stair",
	"Serpentine Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"serpentine_cracked_brick",
	"too_many_stones:serpentine_cracked_brick",
	{cracky = 2},
	{"tms_serpentine_cracked_brick.png"},
	"Cracked Serpentine Brick Stair",
	"Cracked Serpentine Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"serpentine_block",
	"too_many_stones:serpentine_block",
	{cracky = 2},
	{"tms_serpentine_block.png"},
	"Serpentine Block Stair",
	"Serpentine Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Slate
stairs.register_stair_and_slab(
	"slate",
	"too_many_stones:slate",
	{cracky = 3},
	{"tms_slate.png"},
	"Slate Stair",
	"Slate Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"slate_cobble",
	"too_many_stones:slate_cobble",
	{cracky = 3},
	{"tms_slate_cobble.png"},
	"Cobbled Slate Stair",
	"Cobbled Slate Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"slate_brick",
	"too_many_stones:slate_brick",
	{cracky = 2},
	{"tms_slate_brick.png"},
	"Slate Brick Stair",
	"Slate Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"slate_cracked_brick",
	"too_many_stones:slate_cracked_brick",
	{cracky = 2},
	{"tms_slate_cracked_brick.png"},
	"Cracked Slate Brick Stair",
	"Cracked Slate Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"slate_block",
	"too_many_stones:slate_block",
	{cracky = 2},
	{"tms_slate_block.png"},
	"Slate Block Stair",
	"Slate Block Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"slate_tile",
	"too_many_stones:slate_tile",
	{cracky = 2},
	{"tms_slate_tile.png"},
	"Slate Tile Stair",
	"Slate Tile Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Smokey Quartz
stairs.register_stair_and_slab(
	"smokey_quartz",
	"too_many_stones:smokey_quartz",
	{cracky = 3},
	{"tms_smokey_quartz.png"},
	"Smokey Quartz Stair",
	"Smokey Quartz Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"smokey_quartz_brick",
	"too_many_stones:smokey_quartz_brick",
	{cracky = 2},
	{"tms_smokey_quartz_brick.png"},
	"Smokey Quartz Brick Stair",
	"Smokey Quartz Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"smokey_quartz_cracked_brick",
	"too_many_stones:smokey_quartz_cracked_brick",
	{cracky = 2},
	{"tms_smokey_quartz_cracked_brick.png"},
	"Cracked Smokey Quartz Brick Stair",
	"Cracked Smokey Quartz Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"smokey_quartz_block",
	"too_many_stones:smokey_quartz_block",
	{cracky = 2},
	{"tms_smokey_quartz_block.png"},
	"Smokey Quartz Block Stair",
	"Smokey Quartz Block Slab",
	default.node_sound_glass_defaults(),
	false
)
-- Soapstone
stairs.register_stair_and_slab(
	"soapstone",
	"too_many_stones:soapstone",
	{cracky = 3},
	{"tms_soapstone.png"},
	"Soapstone Stair",
	"Soapstone Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"soapstone_brick",
	"too_many_stones:soapstone_brick",
	{cracky = 2},
	{"tms_soapstone_brick.png"},
	"Soapstone Brick Stair",
	"Soapstone Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"soapstone_cracked_brick",
	"too_many_stones:soapstone_cracked_brick",
	{cracky = 2},
	{"tms_soapstone_cracked_brick.png"},
	"Cracked Soapstone Brick Stair",
	"Cracked Soapstone Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"soapstone_block",
	"too_many_stones:soapstone_block",
	{cracky = 2},
	{"tms_soapstone_block.png"},
	"Soapstone Block Stair",
	"Soapstone Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Sodalite
minetest.register_alias("stairs:stair_bluestone", "stairs:stair_sodalite")
minetest.register_alias("stairs:stair_bluestone_block", "stairs:stair_sodalite_block")
minetest.register_alias("stairs:stair_bluestone_cobble", "stairs:stair_sodalite_cobble")
minetest.register_alias("stairs:stair_bluestone_brick", "stairs:stair_sodalite_brick")
minetest.register_alias("stairs:stair_bluestone_cracked_brick", "stairs:stair_sodalite_cracked_brick")

minetest.register_alias("stairs:stair_inner_bluestone", "stairs:stair_inner_sodalite")
minetest.register_alias("stairs:stair_inner_bluestone_block", "stairs:stair_inner_sodalite_block")
minetest.register_alias("stairs:stair_inner_bluestone_cobble", "stairs:stair_inner_sodalite_cobble")
minetest.register_alias("stairs:stair_inner_bluestone_brick", "stairs:stair_inner_sodalite_brick")
minetest.register_alias("stairs:stair_inner_bluestone_cracked_brick", "stairs:stair_inner_sodalite_cracked_brick")

minetest.register_alias("stairs:stair_outer_bluestone", "stairs:stair_outer_sodalite")
minetest.register_alias("stairs:stair_outer_bluestone_block", "stairs:stair_outer_sodalite_block")
minetest.register_alias("stairs:stair_outer_bluestone_cobble", "stairs:stair_outer_sodalite_cobble")
minetest.register_alias("stairs:stair_outer_bluestone_brick", "stairs:stair_outer_sodalite_brick")
minetest.register_alias("stairs:stair_outer_bluestone_cracked_brick", "stairs:stair_outer_sodalite_cracked_brick")

minetest.register_alias("stairs:slab_bluestone", "stairs:slab_sodalite")
minetest.register_alias("stairs:slab_bluestone_block", "stairs:slab_sodalite_block")
minetest.register_alias("stairs:slab_bluestone_cobble", "stairs:slab_sodalite_cobble")
minetest.register_alias("stairs:slab_bluestone_brick", "stairs:slab_sodalite_brick")
minetest.register_alias("stairs:slab_bluestone_cracked_brick", "stairs:slab_sodalite_cracked_brick")

stairs.register_stair_and_slab(
	"sodalite",
	"too_many_stones:sodalite",
	{cracky = 3},
	{"tms_sodalite.png"},
	"Sodalite Stair",
	"Sodalite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"sodalite_cobble",
	"too_many_stones:sodalite_cobble",
	{cracky = 3},
	{"tms_sodalite_cobble.png"},
	"Cobbled Sodalite Stair",
	"Cobbled Sodalite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"sodalite_brick",
	"too_many_stones:sodalite_brick",
	{cracky = 2},
	{"tms_sodalite_brick.png"},
	"Sodalite Brick Stair",
	"Sodalite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"sodalite_cracked_brick",
	"too_many_stones:sodalite_cracked_brick",
	{cracky = 2},
	{"tms_sodalite_cracked_brick.png"},
	"Cracked Sodalite Brick Stair",
	"Cracked Sodalite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"sodalite_block",
	"too_many_stones:sodalite_block",
	{cracky = 2},
	{"tms_sodalite_block.png"},
	"Sodalite Block Stair",
	"Sodalite Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Sugilite
stairs.register_stair_and_slab(
	"sugilite",
	"too_many_stones:sugilite",
	{cracky = 3},
	{"tms_sugilite.png"},
	"Sugilite Stair",
	"Sugilite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"sugilite_cobble",
	"too_many_stones:sugilite_cobble",
	{cracky = 3},
	{"tms_sugilite_cobble.png"},
	"Cobbled Sugilite Stair",
	"Cobbled Sugilite Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"sugilite_brick",
	"too_many_stones:sugilite_brick",
	{cracky = 2},
	{"tms_sugilite_brick.png"},
	"Sugilite Brick Stair",
	"Sugilite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"sugilite_cracked_brick",
	"too_many_stones:sugilite_cracked_brick",
	{cracky = 2},
	{"tms_sugilite_cracked_brick.png"},
	"Cracked Sugilite Brick Stair",
	"Cracked Sugilite Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"sugilite_block",
	"too_many_stones:sugilite_block",
	{cracky = 2},
	{"tms_sugilite_block.png"},
	"Sugilite Block Stair",
	"Sugilite Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Travertine
stairs.register_stair_and_slab(
	"travertine",
	"too_many_stones:travertine",
	{cracky = 3},
	{"tms_travertine.png"},
	"Travertine Stair",
	"Travertine Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"travertine_cobble",
	"too_many_stones:travertine_cobble",
	{cracky = 3},
	{"tms_travertine_cobble.png"},
	"Cobbled Travertine Stair",
	"Cobbled Travertine Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"travertine_brick",
	"too_many_stones:travertine_brick",
	{cracky = 2},
	{"tms_travertine_brick.png"},
	"Travertine Brick Stair",
	"Travertine Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"travertine_cracked_brick",
	"too_many_stones:travertine_cracked_brick",
	{cracky = 2},
	{"tms_travertine_cracked_brick.png"},
	"Cracked Travertine Brick Stair",
	"Cracked Travertine Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"travertine_block",
	"too_many_stones:travertine_block",
	{cracky = 2},
	{"tms_travertine_block.png"},
	"Travertine Block Stair",
	"Travertine Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Yellow Travertine
stairs.register_stair_and_slab(
	"travertine_yellow",
	"too_many_stones:travertine_yellow",
	{cracky = 3},
	{"tms_travertine_yellow.png"},
	"Yellow Travertine Stair",
	"Yellow Travertine Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"travertine_yellow_cobble",
	"too_many_stones:travertine_yellow_cobble",
	{cracky = 3},
	{"tms_travertine_yellow_cobble.png"},
	"Cobbled Yellow Travertine Stair",
	"Cobbled Yellow Travertine Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"travertine_yellow_brick",
	"too_many_stones:travertine_yellow_brick",
	{cracky = 2},
	{"tms_travertine_yellow_brick.png"},
	"Yellow Travertine Brick Stair",
	"Yellow Travertine Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"travertine_yellow_cracked_brick",
	"too_many_stones:travertine_yellow_cracked_brick",
	{cracky = 2},
	{"tms_travertine_yellow_cracked_brick.png"},
	"Cracked Yellow Travertine Brick Stair",
	"Cracked Yellow Travertine Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"travertine_yellow_block",
	"too_many_stones:travertine_yellow_block",
	{cracky = 2},
	{"tms_travertine_yellow_block.png"},
	"Yellow Travertine Block Stair",
	"Yellow Travertine Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Beige Tuff
stairs.register_stair_and_slab(
	"tuff_beige",
	"too_many_stones:tuff_beige",
	{cracky = 3},
	{"tms_tuff_beige.png"},
	"Beige Tuff Stair",
	"Beige Tuff Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"tuff_beige_brick",
	"too_many_stones:tuff_beige_brick",
	{cracky = 2},
	{"tms_tuff_beige_brick.png"},
	"Beige Tuff Brick Stair",
	"Beige Tuff Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"tuff_beige_cracked_brick",
	"too_many_stones:tuff_beige_cracked_brick",
	{cracky = 2},
	{"tms_tuff_beige_cracked_brick.png"},
	"Cracked Beige Tuff Brick Stair",
	"Cracked Beige Tuff Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"tuff_beige_block",
	"too_many_stones:tuff_beige_block",
	{cracky = 2},
	{"tms_tuff_beige_block.png"},
	"Beige Tuff Block Stair",
	"Beige Tuff Block Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"tuff_beige_cobble",
	"too_many_stones:tuff_beige_cobble",
	{cracky = 2},
	{"tms_tuff_beige_cobble.png"},
	"Cobbled Beige Tuff Stair",
	"Cobbled Beige Tuff Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Grey Tuff
stairs.register_stair_and_slab(
	"tuff_grey",
	"too_many_stones:tuff_grey",
	{cracky = 3},
	{"tms_tuff_grey.png"},
	"Grey Tuff Stair",
	"Grey Tuff Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"tuff_grey_brick",
	"too_many_stones:tuff_grey_brick",
	{cracky = 2},
	{"tms_tuff_grey_brick.png"},
	"Grey Tuff Brick Stair",
	"Grey Tuff Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"tuff_grey_cracked_brick",
	"too_many_stones:tuff_grey_cracked_brick",
	{cracky = 2},
	{"tms_tuff_grey_cracked_brick.png"},
	"Cracked Grey Tuff Brick Stair",
	"Cracked Grey Tuff Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"tuff_grey_block",
	"too_many_stones:tuff_grey_block",
	{cracky = 2},
	{"tms_tuff_grey_block.png"},
	"Grey Tuff Block Stair",
	"Grey Tuff Block Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"tuff_grey_cobble",
	"too_many_stones:tuff_grey_cobble",
	{cracky = 2},
	{"tms_tuff_grey_cobble.png"},
	"Cobbled Grey Tuff Stair",
	"Cobbled Grey Tuff Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Red Tuff
stairs.register_stair_and_slab(
	"tuff_red",
	"too_many_stones:tuff_red",
	{cracky = 3},
	{"tms_tuff_red.png"},
	"Red Tuff Stair",
	"Red Tuff Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"tuff_red_brick",
	"too_many_stones:tuff_red_brick",
	{cracky = 2},
	{"tms_tuff_red_brick.png"},
	"Red Tuff Brick Stair",
	"Red Tuff Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"tuff_red_cracked_brick",
	"too_many_stones:tuff_red_cracked_brick",
	{cracky = 2},
	{"tms_tuff_red_cracked_brick.png"},
	"Cracked Red Tuff Brick Stair",
	"Cracked Red Tuff Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"tuff_red_block",
	"too_many_stones:tuff_red_block",
	{cracky = 2},
	{"tms_tuff_red_block.png"},
	"Red Tuff Block Stair",
	"Red Tuff Block Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"tuff_red_cobble",
	"too_many_stones:tuff_red_cobble",
	{cracky = 2},
	{"tms_tuff_red_cobble.png"},
	"Cobbled Red Tuff Stair",
	"Cobbled Red Tuff Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Turquoise
stairs.register_stair_and_slab(
	"turquoise",
	"too_many_stones:turquoise",
	{cracky = 3},
	{"tms_turquoise.png"},
	"Turquoise Stair",
	"Turquoise Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"turquoise_cobble",
	"too_many_stones:turquoise_cobble",
	{cracky = 3},
	{"tms_turquoise_cobble.png"},
	"Cobbled Turquoise Stair",
	"Cobbled Turquoise Slab",
	default.node_sound_stone_defaults(),
	true
)

stairs.register_stair_and_slab(
	"turquoise_brick",
	"too_many_stones:turquoise_brick",
	{cracky = 2},
	{"tms_turquoise_brick.png"},
	"Turquoise Brick Stair",
	"Turquoise Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"turquoise_cracked_brick",
	"too_many_stones:turquoise_cracked_brick",
	{cracky = 2},
	{"tms_turquoise_cracked_brick.png"},
	"Cracked Turquoise Brick Stair",
	"Cracked Turquoise Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

stairs.register_stair_and_slab(
	"turquoise_block",
	"too_many_stones:turquoise_block",
	{cracky = 2},
	{"tms_turquoise_block.png"},
	"Turquoise Block Stair",
	"Turquoise Block Slab",
	default.node_sound_stone_defaults(),
	false
)
-- Vivianite
stairs.register_stair_and_slab(
	"vivianite",
	"too_many_stones:vivianite",
	{cracky = 3},
	{"tms_vivianite.png"},
	"Vivianite Stair",
	"Vivianite Slab",
	default.node_sound_glass_defaults(),
	true
)

stairs.register_stair_and_slab(
	"vivianite_brick",
	"too_many_stones:vivianite_brick",
	{cracky = 2},
	{"tms_vivianite_brick.png"},
	"Vivianite Brick Stair",
	"Vivianite Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"vivianite_cracked_brick",
	"too_many_stones:vivianite_cracked_brick",
	{cracky = 2},
	{"tms_vivianite_cracked_brick.png"},
	"Cracked Vivianite Brick Stair",
	"Cracked Vivianite Brick Slab",
	default.node_sound_glass_defaults(),
	false
)

stairs.register_stair_and_slab(
	"vivianite_block",
	"too_many_stones:vivianite_block",
	{cracky = 2},
	{"tms_vivianite_block.png"},
	"Vivianite Block Stair",
	"Vivianite Block Slab",
	default.node_sound_glass_defaults(),
	false
)
end
