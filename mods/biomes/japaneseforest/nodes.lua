minetest.register_node("japaneseforest:japanese_tree", {
	description = "Japanese Tree",
	tiles = {"japanese_tree_top.png", "japanese_tree_top.png",
		"japanese_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("japaneseforest:japanese_wood", {
	description = "Japanese Wood",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"japanese_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("japaneseforest:sashimi_brick", {
	description = "Sashimi Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"sashimi_brick.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("japaneseforest:tatami_simple", {
	description = "Japanese Simple Tatami",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tatami_simple.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("japaneseforest:japanese_tatami", {
	description = "Japanese Tatami",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tatami.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

doors.register_trapdoor("japaneseforest:japanese_trapdoor", {
	description = "Japanese Trapdoor",
	inventory_image = "japanese_trapdoor.png",
	wield_image = "japanese_trapdoor.png",
	tile_front = "japanese_trapdoor.png",
	tile_side = "japanese_trapdoor_side.png",
	gain_open = 0.06,
	gain_close = 0.13,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
})


doors.register("japanese_door", {
		tiles = {{ name = "doors_japanese_door.png", backface_culling = true }},
		description = "Japanese Door",
		inventory_image = "doors_item_japanese.png",
		groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		gain_open = 0.06,
		gain_close = 0.13,
		recipe = {
			{"bambooforest:fiber_bamboo", "japaneseforest:japanese_wood"},
			{"japaneseforest:japanese_wood", "bambooforest:fiber_bamboo"},
			{"bambooforest:fiber_bamboo", "japaneseforest:japanese_wood"},
		}
})

xpanes.register_pane("japanese_small_wall", {
	description = "Japanese Small Wall",
	textures = {"small_wall.png", "", "side_small_wall.png"},
	inventory_image = "small_wall.png",
	wield_image = "small_wall.png",
	sounds = default.node_sound_wood_defaults(),
	groups = {choppy=1, oddly_breakable_by_hand=2, flammable = 3},
	recipe = {
		{"bambooforest:fiber_bamboo", "bambooforest:fiber_bamboo", "bambooforest:fiber_bamboo"},
		{"dye:magenta", "japaneseforest:japanese_wood", "dye:magenta"},
	}
})

stairs.register_stair_and_slab(
	"japanese_wood",
	"japaneseforest:japanese_wood",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"japanese_wood.png"},
	"Japanese Wood Stair",
	"Japanese Wood Slab",
	default.node_sound_wood_defaults(),
	true
)

doors.register_fencegate("japaneseforest:gate_japanese", {
	description = "Japanese Wood Fence Gate",
	texture = "japanese_wood_fence.png",
	material = "japaneseforest:japanese_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

default.register_fence("japaneseforest:fence_japanese_wood", {
	description = "Japanese Wood Fence",
	texture = "japanese_wood_fence.png",
	inventory_image = "japaneseforest_fence_overlay.png^japanese_wood_fence.png^" ..
				"japaneseforest_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "japaneseforest_fence_overlay.png^japanese_wood_fence.png^" ..
				"japaneseforest_fence_overlay.png^[makealpha:255,126,126",
	material = "japaneseforest:japanese_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = default.node_sound_wood_defaults()
})

default.register_fence_rail("japaneseforest:fence_rail_japanese_wood", {
	description = "Japanese Wood Fence Rail",
	texture = "japanese_wood_fence.png",
	inventory_image = "japaneseforest_fence_rail_overlay.png^japanese_wood_fence.png^" ..
				"japaneseforest_fence_rail_overlay.png^[makealpha:255,126,126",
	wield_image = "japaneseforest_fence_rail_overlay.png^japanese_wood_fence.png^" ..
				"japaneseforest_fence_rail_overlay.png^[makealpha:255,126,126",
	material = "japaneseforest:japanese_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = default.node_sound_wood_defaults()
})

minetest.register_node("japaneseforest:racine", {
	description = "Racine",
	drawtype = "signlike",
	waving = 1,
	tiles = {"racine.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "racine_inv.png",
	wield_image = "racine.png",
	on_use = minetest.item_eat(1),
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, attached_node = 1, oddly_breakable_by_hand=3, 
flammable = 1, food_bread = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type="wallmounted",
		wall_top = {-0.5, 0.49, -0.5, 0.5, 0.5, 0.5},
		wall_bottom = {-0.5, -0.5, -0.5, 0.5, -0.49, 0.5},
		wall_side = {-0.5, -0.5, -0.5, -0.49, 0.5, 0.5},
	},
})

minetest.register_node("japaneseforest:mud", {
	description = "Japanese Mud",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"mud.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("japaneseforest:mud_block", {
	description = "Japanese Mud Block",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"mud_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("japaneseforest:mud_brick", {
	description = "Japanese Mud Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"mud_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("japaneseforest:japanese_dirt_with_grass", {
	description = "Japanese Dirt With Grass",
	tiles = {"japaneseforest_japanese_grass.png", "default_dirt.png",
		{name = "default_dirt.png^japaneseforest_japanese_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("japaneseforest:japanese_lamp", {
	description = "Japanese Lamp",
	drawtype = "glasslike",
	tiles = {"japanese_lamp.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_wood_defaults(),
	light_source = default.LIGHT_MAX,
})

minetest.register_node("japaneseforest:dark_brick", {
	description = "Japanese Dark Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"japaneseforest_path_top.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

