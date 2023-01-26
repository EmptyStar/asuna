	-- Frost Land

	minetest.register_biome(asuna.biomes.frost_land.generate_definition())

minetest.register_decoration({
    name = "frost_land:frost_tree_1",
    deco_type = "schematic",
    place_on = {"frost_land:frost_land_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.001265,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("frost_land").."/schematics/frost_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "frost_land:frost_tree_2",
    deco_type = "schematic",
    place_on = {"frost_land:frost_land_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.001265,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("frost_land").."/schematics/frost_tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "frost_land:frost_tree_3",
    deco_type = "schematic",
    place_on = {"frost_land:frost_land_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.001265,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("frost_land").."/schematics/frost_tree_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})



minetest.register_decoration({
    name = "frost_land:ice_1",
    deco_type = "schematic",
    place_on = {"frost_land:frost_land_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002265,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("frost_land").."/schematics/ice_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "frost_land:ice_2",
    deco_type = "schematic",
    place_on = {"frost_land:frost_land_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002265,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("frost_land").."/schematics/ice_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "frost_land:ice_3",
    deco_type = "schematic",
    place_on = {"frost_land:frost_land_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002265,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("frost_land").."/schematics/ice_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "frost_land:tree_4",
    deco_type = "schematic",
    place_on = {"frost_land:frost_land_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002265,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("frost_land").."/schematics/tree_4.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "frost_land:tree_5",
    deco_type = "schematic",
    place_on = {"frost_land:frost_land_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002265,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("frost_land").."/schematics/tree_5.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "frost_land:igloo",
    deco_type = "schematic",
    place_on = {"frost_land:frost_land_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.000165,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("frost_land").."/schematics/igloo.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "frost_land:bush",
    deco_type = "schematic",
    place_on = {"frost_land:frost_land_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002165,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("frost_land").."/schematics/bush.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})



