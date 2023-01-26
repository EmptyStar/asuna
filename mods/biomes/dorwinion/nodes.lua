minetest.register_node("dorwinion:dorwinion_brick", {
	description = "Dorwninion Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"dorwinion_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "dorwinion:dorwinion_brick 4",
	recipe = {
		{"dorwinion:dorwinion", "dorwinion:dorwinion"},
		{"dorwinion:dorwinion", "dorwinion:dorwinion"},
	}
})
minetest.register_node("dorwinion:dorwinion_brick_with_flowers", {
	description = "Dorwninion Brick With Flowers",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"dorwinion_brick_with_flowers.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = "dorwinion:dorwinion_brick_with_flowers 2",
	recipe = {
		{"dorwinion:dorwinion_brick", "flowers:rose"},
		{"dorwinion:dorwinion_brick", "flowers:rose"},
	}
})

minetest.register_node("dorwinion:dorwinion_brick_with_moss", {
	description = "Dorwninion Brick With Moss",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"dorwinion_brick_with_moss.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = "dorwinion:dorwinion_brick_with_moss 3",
	recipe = {
		{"dorwinion:dorwinion_brick", "bucket:bucket_water"},
		{"dorwinion:dorwinion_brick", "dorwinion:dorwinion_brick"},
	}
})

minetest.register_node("dorwinion:dorwinion_carved", {
	description = "Dorwninion Carved",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"dorwinion_carved.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = "dorwinion:dorwinion_carved 4",
	recipe = {
		{"dorwinion:dorwinion_brick", "dorwinion:dorwinion_brick_cracked"},
		{"dorwinion:dorwinion_brick_cracked", "dorwinion:dorwinion_brick"},
	}
})

minetest.register_node("dorwinion:dorwinion_brick_cracked", {
	description = "Dorwninion Brick Cracked",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"dorwinion_brick_cracked.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = "dorwinion:dorwinion_brick_cracked 4",
	recipe = {
		{"dorwinion:dorwinion_brick", "dorwinion:dorwinion_brick"},
		{"dorwinion:dorwinion_brick", "dorwinion:dorwinion_brick"},
	}
})

minetest.register_node("dorwinion:dorwinion", {
	description = "Dorwninion",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"dorwinion.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("dorwinion:dorwinion_leaves", {
	description = "Dorwinion Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"dorwinion_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {""}, rarity = 20},
			{items = {"dorwinion:dorwinion_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("dorwinion:dorwinion_glow_leaves", {
	description = "Dorwinion Glowing Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"dorwinion_glow_leaves.png"},
	paramtype = "light",
	light_source = 10,    
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {""}, rarity = 20},
			{items = {"dorwinion:dorwinion_glow_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("dorwinion:dorwinion_grass", {
	description = "Dorwinion Grass",
	tiles = {"dorwinion_grass.png", "dorwinion.png",
		{name = "dorwinion.png^dorwinion_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_dirt_footstep", gain = 0.25},
	}),
})


