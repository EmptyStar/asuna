minetest.register_node("prairie:prairie_dirt_with_grass", {
	description = "Prairie Dirt With Grass",
	tiles = {"prairie_grass.png", "default_dirt.png",
		{name = "default_dirt.png^prairie_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("prairie:prairie_leaves_1", {
	description = "Prairie Blue Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"prairie_blue_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"japaneseforest:prairie_sapling"}, rarity = 20},
			{items = {"japaneseforest:prairie_leaves_1"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("prairie:prairie_leaves_2", {
	description = "Prairie Yellow Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"prairie_yellow_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"japaneseforest:prairie_sapling"}, rarity = 20},
			{items = {"japaneseforest:prairie_leaves_2"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})
