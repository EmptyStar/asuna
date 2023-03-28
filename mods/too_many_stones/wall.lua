-- support for MT game translation.
local S = minetest.get_translator("too_many_stones")

if minetest.get_modpath("walls") ~= nil then
-- Blue Agate
walls.register("too_many_stones:agate_blue_wall", "Blue Agate Wall", "tms_agate_blue.png",
		"too_many_stones:agate_blue", default.node_sound_glass_defaults())
-- Gray Agate
walls.register("too_many_stones:agate_gray_wall", "Gray Agate Wall", "tms_agate_gray.png",
		"too_many_stones:agate_gray", default.node_sound_glass_defaults())
-- Green Agate
walls.register("too_many_stones:agate_green_wall", "Green Agate Wall", "tms_agate_green.png",
		"too_many_stones:agate_green", default.node_sound_glass_defaults())
-- Moss Agate
walls.register("too_many_stones:agate_moss_wall", "Moss Agate Wall", "tms_agate_moss.png",
		"too_many_stones:agate_moss", default.node_sound_glass_defaults())
-- Orange Agate
walls.register("too_many_stones:agate_orange_wall", "Orange Agate Wall", "tms_agate_orange.png",
		"too_many_stones:agate_orange", default.node_sound_glass_defaults())
-- Purple Agate
walls.register("too_many_stones:agate_purple_wall", "Purple Agate Wall", "tms_agate_purple.png",
		"too_many_stones:agate_purple", default.node_sound_glass_defaults())
-- Red Agate
walls.register("too_many_stones:agate_red_wall", "Red Agate Wall", "tms_agate_red.png",
		"too_many_stones:agate_red", default.node_sound_glass_defaults())
-- Amazonite
walls.register("too_many_stones:amazonite_wall", "Amazonite Wall", "tms_amazonite.png",
		"too_many_stones:amazonite", default.node_sound_glass_defaults())
		
walls.register("too_many_stones:amazonite_brick_wall", "Amazonite Brick Wall", "tms_amazonite_brick.png",
		"too_many_stones:amazonite_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:amazonite_cracked_brick_wall", "Cracked Amazonite Brick Wall", "tms_amazonite_cracked_brick.png",
		"too_many_stones:amazonite_cracked_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:amazonite_block_wall", "Amazonite Block Wall", "tms_amazonite_block.png",
		"too_many_stones:amazonite_block", default.node_sound_glass_defaults())

walls.register("too_many_stones:amazonite_cobble_wall", "Cobbled Amazonite Wall", "tms_amazonite_cobble.png",
		"too_many_stones:amazonite_cobble", default.node_sound_glass_defaults())
-- Amber
walls.register("too_many_stones:amber_wall", "Amber Wall", "tms_amber.png",
		"too_many_stones:amber", default.node_sound_glass_defaults())
		
walls.register("too_many_stones:amber_brick_wall", "Amber Brick Wall", "tms_amber_brick.png",
		"too_many_stones:amber_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:amber_cracked_brick_wall", "Cracked Amber Brick Wall", "tms_amber_cracked_brick.png",
		"too_many_stones:amber_cracked_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:amber_block_wall", "Amber Block Wall", "tms_amber_block.png",
		"too_many_stones:amber_block", default.node_sound_glass_defaults())
-- Amethyst
walls.register("too_many_stones:amethyst_wall", "Amethyst Wall", "tms_amethyst.png",
		"too_many_stones:amethyst", default.node_sound_glass_defaults())
		
walls.register("too_many_stones:amethyst_brick_wall", "Amethyst Brick Wall", "tms_amethyst_brick.png",
		"too_many_stones:amethyst_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:amethyst_cracked_brick_wall", "Cracked Amethyst Brick Wall", "tms_amethyst_cracked_brick.png",
		"too_many_stones:amethyst_cracked_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:amethyst_block_wall", "Amethyst Block Wall", "tms_amethyst_block.png",
		"too_many_stones:amethyst_block", default.node_sound_glass_defaults())
-- Andesite
walls.register("too_many_stones:andesite_wall", "Andesite Wall", "tms_andesite.png",
		"too_many_stones:andesite", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:andesite_brick_wall", "Andesite Brick Wall", "tms_andesite_brick.png",
		"too_many_stones:andesite_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:andesite_cracked_brick_wall", "Cracked Andesite Brick Wall", "tms_andesite_cracked_brick.png",
		"too_many_stones:andesite_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:andesite_block_wall", "Andesite Block Wall", "tms_andesite_block.png",
		"too_many_stones:andesite_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:andesite_cobble_wall", "Cobbled Andesite Wall", "tms_andesite_cobble.png",
		"too_many_stones:andesite_cobble", default.node_sound_stone_defaults())
-- Basalt
walls.register("too_many_stones:basalt_wall", "Basalt Wall", "tms_basalt.png",
		"too_many_stones:basalt", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:basalt_brick_wall", "Basalt Brick Wall", "tms_basalt_brick.png",
		"too_many_stones:basalt_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:basalt_cracked_brick_wall", "Cracked Basalt Brick Wall", "tms_basalt_cracked_brick.png",
		"too_many_stones:basalt_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:basalt_block_wall", "Basalt Block Wall", "tms_basalt_block.png",
		"too_many_stones:basalt_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:basalt_cobble_wall", "Cobbled Basalt Wall", "tms_basalt_cobble.png",
		"too_many_stones:basalt_cobble", default.node_sound_stone_defaults())
-- Calcite
walls.register("too_many_stones:calcite_wall", "Calcite Wall", "tms_calcite.png",
		"too_many_stones:calcite", default.node_sound_glass_defaults())
		
walls.register("too_many_stones:calcite_brick_wall", "Calcite Brick Wall", "tms_calcite_brick.png",
		"too_many_stones:calcite_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:calcite_cracked_brick_wall", "Cracked Calcite Brick Wall", "tms_calcite_cracked_brick.png",
		"too_many_stones:calcite_cracked_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:calcite_block_wall", "Calcite Block Wall", "tms_calcite_block.png",
		"too_many_stones:calcite_block", default.node_sound_glass_defaults())
-- Carnotite
walls.register("too_many_stones:carnotite_wall", "Carnotite Wall", "tms_carnotite.png",
		"too_many_stones:carnotite", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:carnotite_brick_wall", "Carnotite Brick Wall", "tms_carnotite_brick.png",
		"too_many_stones:carnotite_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:carnotite_cracked_brick_wall", "Cracked Carnotite Brick Wall", "tms_carnotite_cracked_brick.png",
		"too_many_stones:carnotite_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:carnotite_block_wall", "Carnotite Block Wall", "tms_carnotite_block.png",
		"too_many_stones:carnotite_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:carnotite_cobble_wall", "Cobbled Carnotite Wall", "tms_carnotite_cobble.png",
		"too_many_stones:carnotite_cobble", default.node_sound_stone_defaults())
-- Celestine
walls.register("too_many_stones:celestine_wall", "Celestine Wall", "tms_celestine.png",
		"too_many_stones:celestine", default.node_sound_glass_defaults())
		
walls.register("too_many_stones:celestine_brick_wall", "Celestine Brick Wall", "tms_celestine_brick.png",
		"too_many_stones:celestine_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:celestine_cracked_brick_wall", "Cracked Celestine Brick Wall", "tms_celestine_cracked_brick.png",
		"too_many_stones:celestine_cracked_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:celestine_block_wall", "Celestine Block Wall", "tms_celestine_block.png",
		"too_many_stones:celestine_block", default.node_sound_glass_defaults())
-- Chrysoprase
walls.register("too_many_stones:chrysoprase_wall", "Chrysoprase Wall", "tms_chrysoprase.png",
		"too_many_stones:chrysoprase", default.node_sound_glass_defaults())
		
walls.register("too_many_stones:chrysoprase_brick_wall", "Chrysoprase Brick Wall", "tms_chrysoprase_brick.png",
		"too_many_stones:chrysoprase_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:chrysoprase_cracked_brick_wall", "Cracked Chrysoprase Brick Wall", "tms_chrysoprase_cracked_brick.png",
		"too_many_stones:chrysoprase_cracked_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:chrysoprase_block_wall", "Chrysoprase Block Wall", "tms_chrysoprase_block.png",
		"too_many_stones:chrysoprase_block", default.node_sound_glass_defaults())
-- Citrine
walls.register("too_many_stones:citrine_wall", "Citrine Wall", "tms_citrine.png",
		"too_many_stones:citrine", default.node_sound_glass_defaults())
		
walls.register("too_many_stones:citrine_brick_wall", "Citrine Brick Wall", "tms_citrine_brick.png",
		"too_many_stones:citrine_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:citrine_cracked_brick_wall", "Cracked Citrine Brick Wall", "tms_citrine_cracked_brick.png",
		"too_many_stones:citrine_cracked_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:citrine_block_wall", "Citrine Block Wall", "tms_citrine_block.png",
		"too_many_stones:citrine_block", default.node_sound_glass_defaults())
-- Covellite
walls.register("too_many_stones:covellite_wall", "Covellite Wall", "tms_covellite.png",
		"too_many_stones:covellite", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:covellite_brick_wall", "Covellite Brick Wall", "tms_covellite_brick.png",
		"too_many_stones:covellite_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:covellite_cracked_brick_wall", "Cracked Covellite Brick Wall", "tms_covellite_cracked_brick.png",
		"too_many_stones:covellite_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:covellite_block_wall", "Covellite Block Wall", "tms_covellite_block.png",
		"too_many_stones:covellite_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:covellite_cobble_wall", "Cobbled Covellite Wall", "tms_covellite_cobble.png",
		"too_many_stones:covellite_cobble", default.node_sound_stone_defaults())
-- Crocoite
walls.register("too_many_stones:crocoite_wall", "Crocoite Wall", "tms_crocoite.png",
		"too_many_stones:crocoite", default.node_sound_glass_defaults())
		
walls.register("too_many_stones:crocoite_brick_wall", "Crocoite Brick Wall", "tms_crocoite_brick.png",
		"too_many_stones:crocoite_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:crocoite_cracked_brick_wall", "Cracked Crocoite Brick Wall", "tms_crocoite_cracked_brick.png",
		"too_many_stones:crocoite_cracked_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:crocoite_block_wall", "Crocoite Block Wall", "tms_crocoite_block.png",
		"too_many_stones:crocoite_block", default.node_sound_glass_defaults())
-- Erythrite
walls.register("too_many_stones:erythrite_wall", "Erythrite Wall", "tms_erythrite.png",
		"too_many_stones:erythrite", default.node_sound_glass_defaults())
		
walls.register("too_many_stones:erythrite_brick_wall", "Erythrite Brick Wall", "tms_erythrite_brick.png",
		"too_many_stones:erythrite_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:erythrite_cracked_brick_wall", "Cracked Erythrite Brick Wall", "tms_erythrite_cracked_brick.png",
		"too_many_stones:erythrite_cracked_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:erythrite_block_wall", "Erythrite Block Wall", "tms_erythrite_block.png",
		"too_many_stones:erythrite_block", default.node_sound_glass_defaults())
-- Eudialite
walls.register("too_many_stones:eudialite_wall", "Eudialite Wall", "tms_eudialite.png",
		"too_many_stones:eudialite", default.node_sound_glass_defaults())
		
walls.register("too_many_stones:eudialite_brick_wall", "Eudialite Brick Wall", "tms_eudialite_brick.png",
		"too_many_stones:eudialite_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:eudialite_cracked_brick_wall", "Cracked Eudialite Brick Wall", "tms_eudialite_cracked_brick.png",
		"too_many_stones:eudialite_cracked_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:eudialite_block_wall", "Eudialite Block Wall", "tms_eudialite_block.png",
		"too_many_stones:eudialite_block", default.node_sound_glass_defaults())
-- Gabbro
walls.register("too_many_stones:gabbro_wall", "Gabbro Wall", "tms_gabbro.png",
		"too_many_stones:gabbro", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:gabbro_brick_wall", "Gabbro Brick Wall", "tms_gabbro_brick.png",
		"too_many_stones:gabbro_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:gabbro_cracked_brick_wall", "Cracked Gabbro Brick Wall", "tms_gabbro_cracked_brick.png",
		"too_many_stones:gabbro_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:gabbro_block_wall", "Gabbro Block Wall", "tms_gabbro_block.png",
		"too_many_stones:gabbro_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:gabbro_cobble_wall", "Cobbled Gabbro Wall", "tms_gabbro_cobble.png",
		"too_many_stones:gabbro_cobble", default.node_sound_stone_defaults())
-- Galena
walls.register("too_many_stones:galena_wall", "Galena Wall", "tms_galena.png",
		"too_many_stones:galena", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:galena_brick_wall", "Galena Brick Wall", "tms_galena_brick.png",
		"too_many_stones:galena_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:galena_cracked_brick_wall", "Cracked Galena Brick Wall", "tms_galena_cracked_brick.png",
		"too_many_stones:galena_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:galena_block_wall", "Galena Block Wall", "tms_galena_block.png",
		"too_many_stones:galena_block", default.node_sound_stone_defaults())
-- Black Granite
walls.register("too_many_stones:granite_black_wall", "Black Granite Wall", "tms_granite_black.png",
		"too_many_stones:granite_black", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:granite_black_brick_wall", "Black Granite Brick Wall", "tms_granite_black_brick.png",
		"too_many_stones:granite_black_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_black_cracked_brick_wall", "Cracked Black Granite Brick Wall", "tms_granite_black_cracked_brick.png",
		"too_many_stones:granite_black_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_black_block_wall", "Black Granite Block Wall", "tms_granite_black_block.png",
		"too_many_stones:granite_black_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_black_cobble_wall", "Cobbled Black Granite Wall", "tms_granite_black_cobble.png",
		"too_many_stones:granite_black_cobble", default.node_sound_stone_defaults())
-- Blue Granite
walls.register("too_many_stones:granite_blue_wall", "Blue Granite Wall", "tms_granite_blue.png",
		"too_many_stones:granite_blue", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:granite_blue_brick_wall", "Blue Granite Brick Wall", "tms_granite_blue_brick.png",
		"too_many_stones:granite_blue_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_blue_cracked_brick_wall", "Cracked Blue Granite Brick Wall", "tms_granite_blue_cracked_brick.png",
		"too_many_stones:granite_blue_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_blue_block_wall", "Blue Granite Block Wall", "tms_granite_blue_block.png",
		"too_many_stones:granite_blue_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_blue_cobble_wall", "Cobbled Black Granite Wall", "tms_granite_blue_cobble.png",
		"too_many_stones:granite_blue_cobble", default.node_sound_stone_defaults())
-- Gray Granite
walls.register("too_many_stones:granite_gray_wall", "Gray Granite Wall", "tms_granite_gray.png",
		"too_many_stones:granite_gray", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:granite_gray_brick_wall", "Gray Granite Brick Wall", "tms_granite_gray_brick.png",
		"too_many_stones:granite_gray_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_gray_cracked_brick_wall", "Cracked Gray Granite Brick Wall", "tms_granite_gray_cracked_brick.png",
		"too_many_stones:granite_gray_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_gray_block_wall", "Gray Granite Block Wall", "tms_granite_gray_block.png",
		"too_many_stones:granite_gray_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_gray_cobble_wall", "Cobbled Black Granite Wall", "tms_granite_gray_cobble.png",
		"too_many_stones:granite_gray_cobble", default.node_sound_stone_defaults())
-- Green Granite
walls.register("too_many_stones:granite_green_wall", "Green Granite Wall", "tms_granite_green.png",
		"too_many_stones:granite_green", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:granite_green_brick_wall", "Green Granite Brick Wall", "tms_granite_green_brick.png",
		"too_many_stones:granite_green_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_green_cracked_brick_wall", "Cracked Green Granite Brick Wall", "tms_granite_green_cracked_brick.png",
		"too_many_stones:granite_green_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_green_block_wall", "Green Granite Block Wall", "tms_granite_green_block.png",
		"too_many_stones:granite_green_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_green_cobble_wall", "Cobbled Black Granite Wall", "tms_granite_green_cobble.png",
		"too_many_stones:granite_green_cobble", default.node_sound_stone_defaults())
-- Pink Granite
walls.register("too_many_stones:granite_pink_wall", "Pink Granite Wall", "tms_granite_pink.png",
		"too_many_stones:granite_pink", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:granite_pink_brick_wall", "Pink Granite Brick Wall", "tms_granite_pink_brick.png",
		"too_many_stones:granite_pink_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_pink_cracked_brick_wall", "Cracked Pink Granite Brick Wall", "tms_granite_pink_cracked_brick.png",
		"too_many_stones:granite_pink_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_pink_block_wall", "Pink Granite Block Wall", "tms_granite_pink_block.png",
		"too_many_stones:granite_pink_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_pink_cobble_wall", "Cobbled Black Granite Wall", "tms_granite_pink_cobble.png",
		"too_many_stones:granite_pink_cobble", default.node_sound_stone_defaults())
-- Red Granite
walls.register("too_many_stones:granite_red_wall", "Red Granite Wall", "tms_granite_red.png",
		"too_many_stones:granite_red", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:granite_red_brick_wall", "Red Granite Brick Wall", "tms_granite_red_brick.png",
		"too_many_stones:granite_red_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_red_cracked_brick_wall", "Cracked Red Granite Brick Wall", "tms_granite_red_cracked_brick.png",
		"too_many_stones:granite_red_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_red_block_wall", "Red Granite Block Wall", "tms_granite_red_block.png",
		"too_many_stones:granite_red_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_red_cobble_wall", "Cobbled Black Granite Wall", "tms_granite_red_cobble.png",
		"too_many_stones:granite_red_cobble", default.node_sound_stone_defaults())
-- White Granite
walls.register("too_many_stones:granite_white_wall", "White Granite Wall", "tms_granite_white.png",
		"too_many_stones:granite_white", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:granite_white_brick_wall", "White Granite Brick Wall", "tms_granite_white_brick.png",
		"too_many_stones:granite_white_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_white_cracked_brick_wall", "Cracked White Granite Brick Wall", "tms_granite_white_cracked_brick.png",
		"too_many_stones:granite_white_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_white_block_wall", "White Granite Block Wall", "tms_granite_white_block.png",
		"too_many_stones:granite_white_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:granite_white_cobble_wall", "Cobbled Black Granite Wall", "tms_granite_white_cobble.png",
		"too_many_stones:granite_white_cobble", default.node_sound_stone_defaults())
-- Heliodor
walls.register("too_many_stones:heliodor_wall", "Heliodor Wall", "tms_heliodor.png",
		"too_many_stones:heliodor", default.node_sound_glass_defaults())
		
walls.register("too_many_stones:heliodor_brick_wall", "Heliodor Brick Wall", "tms_heliodor_brick.png",
		"too_many_stones:heliodor_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:heliodor_cracked_brick_wall", "Cracked Heliodor Brick Wall", "tms_heliodor_cracked_brick.png",
		"too_many_stones:heliodor_cracked_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:heliodor_block_wall", "Heliodor Block Wall", "tms_heliodor_block.png",
		"too_many_stones:heliodor_block", default.node_sound_glass_defaults())
-- Howlite
walls.register("too_many_stones:howlite_wall", "Howlite Wall", "tms_howlite.png",
		"too_many_stones:howlite", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:howlite_brick_wall", "Howlite Brick Wall", "tms_howlite_brick.png",
		"too_many_stones:howlite_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:howlite_cracked_brick_wall", "Cracked Howlite Brick Wall", "tms_howlite_cracked_brick.png",
		"too_many_stones:howlite_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:howlite_block_wall", "Howlite Block Wall", "tms_howlite_block.png",
		"too_many_stones:howlite_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:howlite_cobble_wall", "Cobbled Howlite Wall", "tms_howlite_cobble.png",
		"too_many_stones:howlite_cobble", default.node_sound_stone_defaults())
-- Ilvaite
walls.register("too_many_stones:ilvaite_wall", "Ilvaite Wall", "tms_ilvaite.png",
		"too_many_stones:ilvaite", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:ilvaite_brick_wall", "Ilvaite Brick Wall", "tms_ilvaite_brick.png",
		"too_many_stones:ilvaite_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:ilvaite_cracked_brick_wall", "Cracked Ilvaite Brick Wall", "tms_ilvaite_cracked_brick.png",
		"too_many_stones:ilvaite_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:ilvaite_block_wall", "Ilvaite Block Wall", "tms_ilvaite_block.png",
		"too_many_stones:ilvaite_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:ilvaite_cobble_wall", "Cobbled Ilvaite Wall", "tms_ilvaite_cobble.png",
		"too_many_stones:ilvaite_cobble", default.node_sound_stone_defaults())
-- Jade
minetest.register_alias("too_many_stones:greenstone_wall", "too_many_stones:jade_wall")
minetest.register_alias("too_many_stones:greenstone_brick_wall", "too_many_stones:jade_brick_wall")
minetest.register_alias("too_many_stones:greenstone_cracked_brick_wall", "too_many_stones:jade_cracked_brick_wall")
minetest.register_alias("too_many_stones:greenstone_block_wall", "too_many_stones:jade_block_wall")
minetest.register_alias("too_many_stones:greenstone_cobble_wall", "too_many_stones:jade_cobble_wall")

walls.register("too_many_stones:jade_wall", "Jade Wall", "tms_jade.png",
		"too_many_stones:jade", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:jade_brick_wall", "Jade Brick Wall", "tms_jade_brick.png",
		"too_many_stones:jade_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:jade_cracked_brick_wall", "Cracked Jade Brick Wall", "tms_jade_cracked_brick.png",
		"too_many_stones:jade_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:jade_block_wall", "Jade Block Wall", "tms_jade_block.png",
		"too_many_stones:jade_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:jade_cobble_wall", "Cobbled Jade Wall", "tms_jade_cobble.png",
		"too_many_stones:jade_cobble", default.node_sound_stone_defaults())
-- Kyanite
walls.register("too_many_stones:kyanite_wall", "Kyanite Wall", "tms_kyanite.png",
		"too_many_stones:kyanite", default.node_sound_glass_defaults())

walls.register("too_many_stones:kyanite_brick_wall", "Kyanite Brick Wall", "tms_kyanite_brick.png",
		"too_many_stones:kyanite_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:kyanite_cracked_brick_wall", "Cracked Kyanite Brick Wall", "tms_kyanite_cracked_brick.png",
		"too_many_stones:kyanite_cracked_brick", default.node_sound_glass_defaults())
		
walls.register("too_many_stones:kyanite_block_wall", "Kyanite Block Wall", "tms_kyanite_block.png",
		"too_many_stones:kyanite_block", default.node_sound_glass_defaults())

walls.register("too_many_stones:kyanite_cobble_wall", "Cobbled Kyanite Wall", "tms_kyanite_cobble.png",
		"too_many_stones:kyanite_cobble", default.node_sound_glass_defaults())
-- Lapis Lazuli
walls.register("too_many_stones:lapis_lazuli_wall", "Lapis Lazuli Wall", "tms_lapis_lazuli.png",
		"too_many_stones:lapis_lazuli", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:lapis_lazuli_brick_wall", "Lapis Lazuli Brick Wall", "tms_lapis_lazuli_brick.png",
		"too_many_stones:lapis_lazuli_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:lapis_lazuli_cracked_brick_wall", "Cracked Lapis Lazuli Brick Wall", "tms_lapis_lazuli_cracked_brick.png",
		"too_many_stones:lapis_lazuli_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:lapis_lazuli_block_wall", "Lapis Lazuli Block Wall", "tms_lapis_lazuli_block.png",
		"too_many_stones:lapis_lazuli_block", default.node_sound_stone_defaults())
-- Blue Limestone
walls.register("too_many_stones:limestone_blue_wall", "Blue Limestone Wall", "tms_limestone_blue.png",
		"too_many_stones:limestone_blue", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:limestone_blue_brick_wall", "Blue Limestone Brick Wall", "tms_limestone_blue_brick.png",
		"too_many_stones:limestone_blue_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:limestone_blue_cracked_brick_wall", "Cracked Blue Limestone Brick Wall", "tms_limestone_blue_cracked_brick.png",
		"too_many_stones:limestone_blue_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:limestone_blue_block_wall", "Blue Limestone Block Wall", "tms_limestone_blue_block.png",
		"too_many_stones:limestone_blue_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:limestone_blue_cobble_wall", "Cobbled Blue Limestone Wall", "tms_limestone_blue_cobble.png",
		"too_many_stones:limestone_blue_cobble", default.node_sound_stone_defaults())
-- White Limestone
walls.register("too_many_stones:limestone_white_wall", "White Limestone Wall", "tms_limestone_white.png",
		"too_many_stones:limestone_white", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:limestone_white_brick_wall", "White Limestone Brick Wall", "tms_limestone_white_brick.png",
		"too_many_stones:limestone_white_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:limestone_white_cracked_brick_wall", "Cracked White Limestone Brick Wall", "tms_limestone_white_cracked_brick.png",
		"too_many_stones:limestone_white_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:limestone_white_block_wall", "White Limestone Block Wall", "tms_limestone_white_block.png",
		"too_many_stones:limestone_white_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:limestone_white_cobble_wall", "Cobbled White Limestone Wall", "tms_limestone_white_cobble.png",
		"too_many_stones:limestone_white_cobble", default.node_sound_stone_defaults())
-- Marble
walls.register("too_many_stones:marble_wall", "Marble Wall", "tms_marble.png",
		"too_many_stones:marble", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:marble_brick_wall", "Marble Brick Wall", "tms_marble_brick.png",
		"too_many_stones:marble_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:marble_cracked_brick_wall", "Cracked Marble Brick Wall", "tms_marble_cracked_brick.png",
		"too_many_stones:marble_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:marble_block_wall", "Marble Block Wall", "tms_marble_block.png",
		"too_many_stones:marble_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:marble_cobble_wall", "Cobbled Marble Wall", "tms_marble_cobble.png",
		"too_many_stones:marble_cobble", default.node_sound_stone_defaults())
-- Mudstone
walls.register("too_many_stones:mudstone_wall", "Mudstone Wall", "tms_mudstone.png",
		"too_many_stones:mudstone", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:mudstone_brick_wall", "Mudstone Brick Wall", "tms_mudstone_brick.png",
		"too_many_stones:mudstone_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:mudstone_cracked_brick_wall", "Cracked Mudstone Brick Wall", "tms_mudstone_cracked_brick.png",
		"too_many_stones:mudstone_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:mudstone_block_wall", "Mudstone Block Wall", "tms_mudstone_block.png",
		"too_many_stones:mudstone_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:mudstone_cobble_wall", "Cobbled Mudstone Wall", "tms_mudstone_cobble.png",
		"too_many_stones:mudstone_cobble", default.node_sound_stone_defaults())
-- Prasiolite
walls.register("too_many_stones:prasiolite_wall", "Vivinite Wall", "tms_prasiolite.png",
		"too_many_stones:prasiolite", default.node_sound_glass_defaults())
		
walls.register("too_many_stones:prasiolite_brick_wall", "Vivinite Brick Wall", "tms_prasiolite_brick.png",
		"too_many_stones:prasiolite_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:prasiolite_cracked_brick_wall", "Cracked Vivinite Brick Wall", "tms_prasiolite_cracked_brick.png",
		"too_many_stones:prasiolite_cracked_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:prasiolite_block_wall", "Vivinite Block Wall", "tms_prasiolite_block.png",
		"too_many_stones:prasiolite_block", default.node_sound_glass_defaults())
-- Pumice
walls.register("too_many_stones:pumice_wall", "Pumice Wall", "tms_pumice.png",
		"too_many_stones:pumice", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:pumice_brick_wall", "Pumice Brick Wall", "tms_pumice_brick.png",
		"too_many_stones:pumice_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:pumice_cracked_brick_wall", "Cracked Pumice Brick Wall", "tms_pumice_cracked_brick.png",
		"too_many_stones:pumice_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:pumice_block_wall", "Pumice Block Wall", "tms_pumice_block.png",
		"too_many_stones:pumice_block", default.node_sound_stone_defaults())
-- Pyrite
walls.register("too_many_stones:pyrite_wall", "Pyrite Wall", "tms_pyrite.png",
		"too_many_stones:pyrite", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:pyrite_brick_wall", "Pyrite Brick Wall", "tms_pyrite_brick.png",
		"too_many_stones:pyrite_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:pyrite_cracked_brick_wall", "Cracked Pyrite Brick Wall", "tms_pyrite_cracked_brick.png",
		"too_many_stones:pyrite_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:pyrite_block_wall", "Pyrite Block Wall", "tms_pyrite_block.png",
		"too_many_stones:pyrite_block", default.node_sound_stone_defaults())
-- Quartz
walls.register("too_many_stones:quartz_wall", "Vivinite Wall", "tms_quartz.png",
		"too_many_stones:quartz", default.node_sound_glass_defaults())
		
walls.register("too_many_stones:quartz_brick_wall", "Vivinite Brick Wall", "tms_quartz_brick.png",
		"too_many_stones:quartz_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:quartz_cracked_brick_wall", "Cracked Vivinite Brick Wall", "tms_quartz_cracked_brick.png",
		"too_many_stones:quartz_cracked_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:quartz_block_wall", "Vivinite Block Wall", "tms_quartz_block.png",
		"too_many_stones:quartz_block", default.node_sound_glass_defaults())
-- Rose Quartz
walls.register("too_many_stones:rose_quartz_wall", "Rose Quartz Wall", "tms_rose_quartz.png",
		"too_many_stones:rose_quartz", default.node_sound_glass_defaults())
		
walls.register("too_many_stones:rose_quartz_brick_wall", "Rose Quartz Brick Wall", "tms_rose_quartz_brick.png",
		"too_many_stones:rose_quartz_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:rose_quartz_cracked_brick_wall", "Cracked Rose Quartz Brick Wall", "tms_rose_quartz_cracked_brick.png",
		"too_many_stones:rose_quartz_cracked_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:rose_quartz_block_wall", "Rose Quartz Block Wall", "tms_rose_quartz_block.png",
		"too_many_stones:rose_quartz_block", default.node_sound_glass_defaults())
-- Scoria
walls.register("too_many_stones:scoria_wall", "Scoria Wall", "tms_scoria.png",
		"too_many_stones:scoria", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:scoria_brick_wall", "Scoria Brick Wall", "tms_scoria_brick.png",
		"too_many_stones:scoria_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:scoria_cracked_brick_wall", "Cracked Scoria Brick Wall", "tms_scoria_cracked_brick.png",
		"too_many_stones:scoria_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:scoria_block_wall", "Scoria Block Wall", "tms_scoria_block.png",
		"too_many_stones:scoria_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:scoria_cobble_wall", "Cobbled Scoria Wall", "tms_scoria_cobble.png",
		"too_many_stones:scoria_cobble", default.node_sound_stone_defaults())
-- Serpentine
walls.register("too_many_stones:serpentine_wall", "Serpentine Wall", "tms_serpentine.png",
		"too_many_stones:serpentine", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:serpentine_brick_wall", "Serpentine Brick Wall", "tms_serpentine_brick.png",
		"too_many_stones:serpentine_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:serpentine_cracked_brick_wall", "Cracked Serpentine Brick Wall", "tms_serpentine_cracked_brick.png",
		"too_many_stones:serpentine_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:serpentine_block_wall", "Serpentine Block Wall", "tms_serpentine_block.png",
		"too_many_stones:serpentine_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:serpentine_cobble_wall", "Cobbled Serpentine Wall", "tms_serpentine_cobble.png",
		"too_many_stones:serpentine_cobble", default.node_sound_stone_defaults())
-- Slate
walls.register("too_many_stones:slate_wall", "Slate Wall", "tms_slate.png",
		"too_many_stones:slate", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:slate_brick_wall", "Slate Brick Wall", "tms_slate_brick.png",
		"too_many_stones:slate_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:slate_cracked_brick_wall", "Cracked Slate Brick Wall", "tms_slate_cracked_brick.png",
		"too_many_stones:slate_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:slate_block_wall", "Slate Block Wall", "tms_slate_block.png",
		"too_many_stones:slate_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:slate_cobble_wall", "Cobbled Slate Wall", "tms_slate_cobble.png",
		"too_many_stones:slate_cobble", default.node_sound_stone_defaults())

walls.register("too_many_stones:slate_tile_wall", "Slate Tile Wall", "tms_slate_tile.png",
		"too_many_stones:slate_tile", default.node_sound_stone_defaults())
-- Smokey Quartz
walls.register("too_many_stones:smokey_quartz_wall", "Smokey Quartz Wall", "tms_smokey_quartz.png",
		"too_many_stones:smokey_quartz", default.node_sound_glass_defaults())
		
walls.register("too_many_stones:smokey_quartz_brick_wall", "Smokey Quartz Brick Wall", "tms_smokey_quartz_brick.png",
		"too_many_stones:smokey_quartz_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:smokey_quartz_cracked_brick_wall", "Cracked Smokey Quartz Brick Wall", "tms_smokey_quartz_cracked_brick.png",
		"too_many_stones:smokey_quartz_cracked_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:smokey_quartz_block_wall", "Smokey Quartz Block Wall", "tms_smokey_quartz_block.png",
		"too_many_stones:smokey_quartz_block", default.node_sound_glass_defaults())
-- Soapstone
walls.register("too_many_stones:soapstone_wall", "Soapstone Wall", "tms_soapstone.png",
		"too_many_stones:soapstone", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:soapstone_brick_wall", "Soapstone Brick Wall", "tms_soapstone_brick.png",
		"too_many_stones:soapstone_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:soapstone_cracked_brick_wall", "Cracked Soapstone Brick Wall", "tms_soapstone_cracked_brick.png",
		"too_many_stones:soapstone_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:soapstone_block_wall", "Soapstone Block Wall", "tms_soapstone_block.png",
		"too_many_stones:soapstone_block", default.node_sound_stone_defaults())
-- Sodalite
minetest.register_alias("too_many_stones:bluestone_wall", "too_many_stones:sodalite_wall")
minetest.register_alias("too_many_stones:bluestone_brick_wall", "too_many_stones:sodalite_brick_wall")
minetest.register_alias("too_many_stones:bluestone_cracked_brick_wall", "too_many_stones:sodalite_cracked_brick_wall")
minetest.register_alias("too_many_stones:bluestone_block_wall", "too_many_stones:sodalite_block_wall")
minetest.register_alias("too_many_stones:bluestone_cobble_wall", "too_many_stones:sodalite_cobble_wall")

walls.register("too_many_stones:sodalite_wall", "Sodalite Wall", "tms_sodalite.png",
		"too_many_stones:sodalite", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:sodalite_brick_wall", "Sodalite Brick Wall", "tms_sodalite_brick.png",
		"too_many_stones:sodalite_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:sodalite_cracked_brick_wall", "Cracked Sodalite Brick Wall", "tms_sodalite_cracked_brick.png",
		"too_many_stones:sodalite_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:sodalite_block_wall", "Sodalite Block Wall", "tms_sodalite_block.png",
		"too_many_stones:sodalite_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:sodalite_cobble_wall", "Cobbled Sodalite Wall", "tms_sodalite_cobble.png",
		"too_many_stones:sodalite_cobble", default.node_sound_stone_defaults())
-- Sugilite
walls.register("too_many_stones:sugilite_wall", "Sugilite Wall", "tms_sugilite.png",
		"too_many_stones:sugilite", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:sugilite_brick_wall", "Sugilite Brick Wall", "tms_sugilite_brick.png",
		"too_many_stones:sugilite_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:sugilite_cracked_brick_wall", "Cracked Sugilite Brick Wall", "tms_sugilite_cracked_brick.png",
		"too_many_stones:sugilite_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:sugilite_block_wall", "Sugilite Block Wall", "tms_sugilite_block.png",
		"too_many_stones:sugilite_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:sugilite_cobble_wall", "Cobbled Sugilite Wall", "tms_sugilite_cobble.png",
		"too_many_stones:sugilite_cobble", default.node_sound_stone_defaults())
-- Travertine
walls.register("too_many_stones:travertine_wall", "Travertine Wall", "tms_travertine.png",
		"too_many_stones:travertine", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:travertine_brick_wall", "Travertine Brick Wall", "tms_travertine_brick.png",
		"too_many_stones:travertine_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:travertine_cracked_brick_wall", "Cracked Travertine Brick Wall", "tms_travertine_cracked_brick.png",
		"too_many_stones:travertine_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:travertine_block_wall", "Travertine Block Wall", "tms_travertine_block.png",
		"too_many_stones:travertine_block", default.node_sound_stone_defaults())
-- Beige Tuff
walls.register("too_many_stones:tuff_beige_wall", "Beige Tuff Wall", "tms_tuff_beige.png",
		"too_many_stones:tuff_beige", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:tuff_beige_brick_wall", "Beige Tuff Brick Wall", "tms_tuff_beige_brick.png",
		"too_many_stones:tuff_beige_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:tuff_beige_cracked_brick_wall", "Cracked Beige Tuff Brick Wall", "tms_tuff_beige_cracked_brick.png",
		"too_many_stones:tuff_beige_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:tuff_beige_block_wall", "Beige Tuff Block Wall", "tms_tuff_beige_block.png",
		"too_many_stones:tuff_beige_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:tuff_beige_cobble_wall", "Cobbled Beige Tuff Wall", "tms_tuff_beige_cobble.png",
		"too_many_stones:tuff_beige_cobble", default.node_sound_stone_defaults())
-- Grey Tuff
walls.register("too_many_stones:tuff_grey_wall", "Grey Tuff Wall", "tms_tuff_grey.png",
		"too_many_stones:tuff_grey", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:tuff_grey_brick_wall", "Grey Tuff Brick Wall", "tms_tuff_grey_brick.png",
		"too_many_stones:tuff_grey_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:tuff_grey_cracked_brick_wall", "Cracked Grey Tuff Brick Wall", "tms_tuff_grey_cracked_brick.png",
		"too_many_stones:tuff_grey_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:tuff_grey_block_wall", "Grey Tuff Block Wall", "tms_tuff_grey_block.png",
		"too_many_stones:tuff_grey_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:tuff_grey_cobble_wall", "Cobbled Grey Tuff Wall", "tms_tuff_grey_cobble.png",
		"too_many_stones:tuff_grey_cobble", default.node_sound_stone_defaults())
-- Red Tuff
walls.register("too_many_stones:tuff_red_wall", "Red Tuff Wall", "tms_tuff_red.png",
		"too_many_stones:tuff_red", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:tuff_red_brick_wall", "Red Tuff Brick Wall", "tms_tuff_red_brick.png",
		"too_many_stones:tuff_red_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:tuff_red_cracked_brick_wall", "Cracked Red Tuff Brick Wall", "tms_tuff_red_cracked_brick.png",
		"too_many_stones:tuff_red_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:tuff_red_block_wall", "Red Tuff Block Wall", "tms_tuff_red_block.png",
		"too_many_stones:tuff_red_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:tuff_red_cobble_wall", "Cobbled Red Tuff Wall", "tms_tuff_red_cobble.png",
		"too_many_stones:tuff_red_cobble", default.node_sound_stone_defaults())
-- Turquoise
walls.register("too_many_stones:turquoise_wall", "Turquoise Wall", "tms_turquoise.png",
		"too_many_stones:turquoise", default.node_sound_stone_defaults())
		
walls.register("too_many_stones:turquoise_brick_wall", "Turquoise Brick Wall", "tms_turquoise_brick.png",
		"too_many_stones:turquoise_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:turquoise_cracked_brick_wall", "Cracked Turquoise Brick Wall", "tms_turquoise_cracked_brick.png",
		"too_many_stones:turquoise_cracked_brick", default.node_sound_stone_defaults())

walls.register("too_many_stones:turquoise_block_wall", "Turquoise Block Wall", "tms_turquoise_block.png",
		"too_many_stones:turquoise_block", default.node_sound_stone_defaults())

walls.register("too_many_stones:turquoise_cobble_wall", "Cobbled Turquoise Wall", "tms_turquoise_cobble.png",
		"too_many_stones:turquoise_cobble", default.node_sound_stone_defaults())
-- Vivianite
walls.register("too_many_stones:vivianite_wall", "Vivinite Wall", "tms_vivianite.png",
		"too_many_stones:vivianite", default.node_sound_glass_defaults())
		
walls.register("too_many_stones:vivianite_brick_wall", "Vivinite Brick Wall", "tms_vivianite_brick.png",
		"too_many_stones:vivianite_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:vivianite_cracked_brick_wall", "Cracked Vivinite Brick Wall", "tms_vivianite_cracked_brick.png",
		"too_many_stones:vivianite_cracked_brick", default.node_sound_glass_defaults())

walls.register("too_many_stones:vivianite_block_wall", "Vivinite Block Wall", "tms_vivianite_block.png",
		"too_many_stones:vivianite_block", default.node_sound_glass_defaults())
end
