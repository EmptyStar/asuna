minetest.register_biome(asuna.biomes.nightshade.generate_definition())

minetest.register_decoration({
    name = "nightshade:nightshade_tree_1",
    deco_type = "schematic",
    place_on = {"nightshade:nightshade_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.019265,
    biomes = {"nightshade"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("nightshade").."/schematics/nightshade_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "nightshade:nightshade_tree_2",
    deco_type = "schematic",
    place_on = {"nightshade:nightshade_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.019265,
    biomes = {"nightshade"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("nightshade").."/schematics/nightshade_tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "nightshade:nightshade_tree_3",
    deco_type = "schematic",
    place_on = {"nightshade:nightshade_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.019265,
    biomes = {"nightshade"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("nightshade").."/schematics/nightshade_tree_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "nightshade:nightshade_bush",
    deco_type = "schematic",
    place_on = {"nightshade:nightshade_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.039265,
    biomes = {"nightshade"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("nightshade").."/schematics/nightshade_bush.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "nightshade:nightshade_tree_log_1",
    deco_type = "schematic",
    place_on = {"nightshade:nightshade_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.010265,
    biomes = {"nightshade"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("nightshade").."/schematics/nightshade_tree_log_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "nightshade:nightshade_tree_log_2",
    deco_type = "schematic",
    place_on = {"nightshade:nightshade_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.012265,
    biomes = {"nightshade"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("nightshade").."/schematics/nightshade_tree_log_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"nightshade:nightshade_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.15,
	biomes = {"nightshade"},
	decoration = {
        "flowers:mushroom_brown", "flowers:mushroom_red", "default:junglegrass",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"nightshade:nightshade_tree"},
	sidelen = 16,
	fill_ratio = 0.15,
	biomes = {"nightshade"},
	decoration = {
        "flowers:mushroom_brown", "flowers:mushroom_red", "default:junglegrass",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"nightshade:nightshade_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.15,
	biomes = {"nightshade"},
	decoration = {
        "nightshade:nightshade_grass",
	}
})
