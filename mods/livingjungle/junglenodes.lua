
local modname = "livingjungle"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")

	
minetest.register_biome(asuna.biomes.livingjungle:generate_definition())

-- ground nodes

minetest.register_node("livingjungle:jungleground", {
	description = ("Green Jungle Ground"),
	tiles = {"livingjungle_jungleground.png", "default_dirt.png",
		{name = "default_dirt.png^livingjungle_jungleground_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("livingjungle:leafyjungleground", {
	description = ("Leafy Jungle Ground"),
	tiles = {"livingjungle_rainforest_litter.png", "default_dirt.png",
		{name = "default_dirt.png^livingjungle_rainforest_litter_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"livingjungle:jungleground"},
		sidelen = 16,
		place_offset_y = -1,
                flags = "force_placement",
    fill_ratio = 0.9,
    biomes = {"default:cold_desert", "default:cold_desert_ocean"},
		y_max = 31000,
		y_min = 0,
		decoration = "livingjungle:leafyjungleground"
	})

--- rocks

minetest.register_node("livingjungle:mossstone", {
	description = ("Mossy Stone"),
	tiles = {"livingjungle_mossstone.png"},
	groups = {cracky = 3, stone = 1},
	drop = "livingjungle:mossstone",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("livingjungle:mossstone2", {
	description = ("Mossy Stone"),
	tiles = {"livingjungle_mossstone2.png"},
	groups = {cracky = 3, stone = 1},
	drop = "livingjungle:mossstone2",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("livingjungle:mossstone3", {
	description = ("Mossy Stone"),
	tiles = {"livingjungle_mossstone3.png"},
	groups = {cracky = 3, stone = 1},
	drop = "livingjungle:mossstone3",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

	minetest.register_decoration({
		name = "livingjungle:mossstone",
		deco_type = "schematic",
		place_on = {"livingjungle:leafyjungleground", "livingjungle:jungleground"},
    place_offset_y = -1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.02,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7,
		},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("livingjungle") .. "/schematics/livingjungle_mossyrock.mts",
		flags = "place_center_x, place_center_z",
                spawn_by = "default:water_source", "default:river_water_source", "default:water_flowing", "default:river_water_flowing",
    rotation = "random",
	})

minetest.register_decoration({
		name = "livingjungle:mossstone2",
		deco_type = "schematic",
		place_on = {"livingjungle:leafyjungleground", "livingjungle:jungleground"},
    place_offset_y = -1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.02,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7,
		},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("livingjungle") .. "/schematics/livingjungle_mossyrock2.mts",
		flags = "place_center_x, place_center_z",
                spawn_by = "default:water_source", "default:river_water_source", "default:water_flowing", "default:river_water_flowing",
    rotation = "random",
	})

minetest.register_decoration({
		name = "livingjungle:mossstone3",
		deco_type = "schematic",
		place_on = {"livingjungle:leafyjungleground", "livingjungle:jungleground"},
    place_offset_y = -1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.02,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7,
		},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("livingjungle") .. "/schematics/livingjungle_mossyrock3.mts",
		flags = "place_center_x, place_center_z",
                spawn_by = "default:water_source", "default:river_water_source", "default:water_flowing", "default:river_water_flowing",
    rotation = "random",
	})

--- crafting

walls.register(":livingjungle:mossstonebrick_wall", "Jungle Brick Wall", "livingjungle_stonebricks.png",
		"livingjungle:mossstonebrick_wall", default.node_sound_stone_defaults())

    stairs.register_stair_and_slab(
      "livingjungle_stonebricks",
      "livingjungle:mossstonebrick_stair",
      {cracky = 1, oddly_breakable_by_hand = 0, flammable = 0},
      {"livingjungle_stonebricks.png"},
      ("Jungle Brick Stair"),
      ("Jungle Brick Slab"),
      default.node_sound_wood_defaults()
    )

minetest.register_node("livingjungle:mossstonebrick", {
	description = ("Jungle Brick"),
	tiles = {"livingjungle_stonebricks.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "livingjungle:mossstonebrick",
	type = "shapeless",
	recipe = 
		{"livingjungle:mossstone", "livingjungle:mossstone", "livingjungle:mossstone", "livingjungle:mossstone"}

	
})

minetest.register_craft({
	output = "livingjungle:mossstonebrick_wall",
	type = "shapeless",
	recipe = 
		{"livingjungle:mossstonebrick", "livingjungle:mossstonebrick", "livingjungle:mossstonebrick", "livingjungle:mossstonebrick", "livingjungle:mossstonebrick", "livingjungle:mossstonebrick"}

	
})

walls.register(":livingjungle:mossstonebrick_wall2", "Jungle Brick Wall", "livingjungle_stonebricks2.png",
		"livingjungle:mossstonebrick_wall2", default.node_sound_stone_defaults())

    stairs.register_stair_and_slab(
      "livingjungle_stonebricks2",
      "livingjungle:mossstonebrick_stair2",
      {cracky = 1, oddly_breakable_by_hand = 0, flammable = 0},
      {"livingjungle_stonebricks2.png"},
      ("Jungle Brick Stair"),
      ("Jungle Brick Slab"),
      default.node_sound_wood_defaults()
    )

minetest.register_node("livingjungle:mossstonebrick2", {
	description = ("Jungle Brick"),
	tiles = {"livingjungle_stonebricks2.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "livingjungle:mossstonebrick2",
	type = "shapeless",
	recipe = 
		{"livingjungle:mossstone2", "livingjungle:mossstone2", "livingjungle:mossstone2", "livingjungle:mossstone2"}

	
})

minetest.register_craft({
	output = "livingjungle:mossstonebrick_wall2",
	type = "shapeless",
	recipe = 
		{"livingjungle:mossstonebrick2", "livingjungle:mossstonebrick2", "livingjungle:mossstonebrick2", "livingjungle:mossstonebrick2", "livingjungle:mossstonebrick2", "livingjungle:mossstonebrick2"}

	
})

walls.register(":livingjungle:mossstonebrick_wall3", "Jungle Brick Wall", "livingjungle_stonebricks3.png",
		"livingjungle:mossstonebrick_wall3", default.node_sound_stone_defaults())

    stairs.register_stair_and_slab(
      "livingjungle_stonebricks3",
      "livingjungle:mossstonebrick_stair3",
      {cracky = 1, oddly_breakable_by_hand = 0, flammable = 0},
      {"livingjungle_stonebricks3.png"},
      ("Jungle Brick Stair"),
      ("Jungle Brick Slab"),
      default.node_sound_wood_defaults()
    )

minetest.register_node("livingjungle:mossstonebrick3", {
	description = ("Jungle Brick"),
	tiles = {"livingjungle_stonebricks3.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "livingjungle:mossstonebrick3",
	type = "shapeless",
	recipe = 
		{"livingjungle:mossstone3", "livingjungle:mossstone3", "livingjungle:mossstone3", "livingjungle:mossstone3"}

	
})

minetest.register_craft({
	output = "livingjungle:mossstonebrick_wall3",
	type = "shapeless",
	recipe = 
		{"livingjungle:mossstonebrick3", "livingjungle:mossstonebrick3", "livingjungle:mossstonebrick3", "livingjungle:mossstonebrick3", "livingjungle:mossstonebrick3", "livingjungle:mossstonebrick3"}

	
})

