-----------------Moreblock
if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("dorwinion_brick", "stone", "dorwinion:dorwinion_brick", {
		description = "Dorwinion Brick",
	tiles = {"dorwinion_brick.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("dorwinion", "stone", "dorwinion:dorwinion", {
		description = "Dorwinion",
	tiles = {"dorwinion.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("dorwinion_carved", "stone", "dorwinion:dorwinion_carved", {
		description = "Dorwinion Carved",
	tiles = {"dorwinion_carved.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("dorwinion_brick_cracked", "stone", "dorwinion:dorwinion_brick_cracked", {
		description = "Dorwinion Brick Cracked",
	tiles = {"dorwinion_brick_cracked.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("dorwinion_brick_with_flowers", "stone", "dorwinion:dorwinion_brick_with_flowers", {
		description = "Dorwinion Brick With Flowers",
	tiles = {"dorwinion_brick_with_flowers.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("dorwinion_brick_with_moss", "stone", "dorwinion:dorwinion_brick_with_moss", {
		description = "Dorwinion Brick With Moss",
	tiles = {"dorwinion_brick_with_moss.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})





end
