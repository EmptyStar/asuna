minetest.register_decoration({
    name = "japaneseforest:japanese_tree_1_1",
    deco_type = "schematic",
    place_on = {"japaneseforest:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.009365,
    biomes = {"japaneseforest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("japaneseforest").."/schematics/japanese_tree_1_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "japaneseforest:japanese_tree_1_2",
    deco_type = "schematic",
    place_on = {"japaneseforest:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.009365,
    biomes = {"japaneseforest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("japaneseforest").."/schematics/japanese_tree_1_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "japaneseforest:japanese_tree_1_3",
    deco_type = "schematic",
    place_on = {"japaneseforest:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.007365,
    biomes = {"japaneseforest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("japaneseforest").."/schematics/japanese_tree_1_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


minetest.register_decoration({
    name = "japaneseforest:japanese_tree_3_2",
    deco_type = "schematic",
    place_on = {"japaneseforest:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.008365,
    biomes = {"japaneseforest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("japaneseforest").."/schematics/japanese_tree_3_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "japaneseforest:japanese_tree_2_1",
    deco_type = "schematic",
    place_on = {"japaneseforest:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.008365,
    biomes = {"japaneseforest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("japaneseforest").."/schematics/japanese_tree_2_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})



minetest.register_decoration({
    name = "japaneseforest:bamboo",
    deco_type = "schematic",
    place_on = {"japaneseforest:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.009265,
    biomes = {"japaneseforest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bambooforest").."/schematics/bamboo_tree_5.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"japaneseforest:japanese_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.1,
	biomes = {"japaneseforest"},
	decoration = {
		"japaneseforest:racine"
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"japaneseforest:japanese_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.1,
	biomes = {"japaneseforest"},
	decoration = {
		"default:junglegrass"
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"japaneseforest:japanese_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.3,
	biomes = {"japaneseforest"},
	decoration = {
		"default:grass_1", "default:grass_2",
		"default:grass_3", "default:grass_4",
		"default:grass_5",
	}
})



minetest.register_decoration({
	deco_type = "simple",
	place_on = {"japaneseforest:japanese_dirt_with_grass", "bambooforest:dirt_with_bamboo"},
	sidelen = 16,
	fill_ratio = 0.05,
	biomes = {"japaneseforest", "bambooforest"},
	decoration = {
		"japaneseforest:sashimi_8",
	}
})
