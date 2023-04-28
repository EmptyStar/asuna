	-- Prairie

	minetest.register_biome(asuna.biomes.prairie.generate_definition())

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"prairie:prairie_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.16,
	biomes = {"prairie"},
	decoration = {
		"default:grass_1", "default:grass_2",
		"default:grass_3", "default:grass_4",
		"default:grass_5",
	}
})

--[[minetest.register_decoration({
	deco_type = "simple",
	place_on = {"prairie:prairie_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.01,
	biomes = {"prairie"},
	decoration = {
		"default:junglegrass"
	}
})]]

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"prairie:prairie_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.05,
	biomes = {"prairie"},
	decoration = {
		"default:mushroom_brown"
	}
})

--[[minetest.register_decoration({
	deco_type = "simple",
	place_on = {"prairie:prairie_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.65,
	biomes = {"prairie"},
	decoration = {
		"flowers:rose", "flowers:violat",
		"flowers:tulip", "flowers:geranium",
		"flowers:dandelion_yellow", "flowers:dandelion_white",
        "flowers:tulip_black", "flowers:chrysanthemum_green",
	}
})]]

--[[minetest.register_decoration({
	deco_type = "simple",
	place_on = {"prairie:prairie_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.65,
	biomes = {"prairie"},
	decoration = {
        "flowers:rose", "default:grass_5",
	}
})]]

minetest.register_decoration({
    name = "prairie:bush",
    deco_type = "schematic",
    place_on = {"prairie:prairie_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.0005,
    biomes = {"prairie"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("default").."/schematics/bush.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "prairie:blueberry",
    deco_type = "schematic",
    place_on = {"prairie:prairie_dirt_with_grass"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.00175,
    biomes = {"prairie"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("default").."/schematics/blueberry_bush.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "prairie:prairie_tree_1",
    deco_type = "schematic",
    place_on = {"prairie:prairie_dirt_with_grass"},
    place_offset_y = -1,
    sidelen = 16,
    fill_ratio = 0.003,
    biomes = {"prairie"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("prairie").."/schematics/prairie_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "prairie:tree_2",
    deco_type = "schematic",
    place_on = {"prairie:prairie_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.003,
    biomes = {"prairie"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("prairie").."/schematics/prairie_tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})
