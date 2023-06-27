-----------------Moreblock
if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("japanese_wood", "wood", "japaneseforest:japanese_wood", {
		description = "Japanese Wood",
		tiles = {"japanese_wood.png"},
      	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("japanese_tree", "tree", "japaneseforest:japanese_tree", {
		description = "Japanese Tree",
	tiles = {"japanese_tree_top.png", "japanese_tree_top.png",
		"japanese_tree.png"},
      	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("mud", "stone", "japaneseforest:mud", {
		description = "Mud",
	tiles = {"mud.png"},
      	groups = {cracky = 3, stone = 1},
	    sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("mud_block", "stone", "japaneseforest:mud_block", {
		description = "Mud Block",
	tiles = {"mud_block.png"},
      	groups = {cracky = 3, stone = 1},
	    sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("mud_brick", "stone", "japaneseforest:mud_brick", {
		description = "Mud Brick",
	tiles = {"mud_brick.png"},
      	groups = {cracky = 3, stone = 1},
	    sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("dark_brick", "stone", "japaneseforest:dark_brick", {
		description = "Dark Brick",
	tiles = {"japaneseforest_path_top.png"},
      	groups = {cracky = 3, stone = 1},
	    sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("sashimi_brick", "stone", "japaneseforest:sashimi_brick", {
		description = "Sashimi Brick",
	tiles = {"sashimi_brick.png"},
      	groups = {cracky = 3, stone = 1},
	    sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("japanese_lamp", "wood", "japaneseforest:japanese_lamp", {
		description = "Japanese Lamp",
	tiles = {"japanese_lamp.png"},
      	groups = {choppy = 3, oddly_breakable_by_hand = 2, stone = 1},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("japanese_tatami", "wood", "japaneseforest:japanese_tatami", {
		description = "Japanese Tatami",
	tiles = {"tatami.png"},
      	groups = {choppy = 3, oddly_breakable_by_hand = 2, stone = 1},
	    sounds = default.node_sound_wood_defaults(),
	})

end
