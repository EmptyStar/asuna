-----------------Moreblock
if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("nightshade_tree", "wood", "nightshade:nightshade_tree", {
		description = "NightShade Tree",
	tiles = {"nightshade_tree_top.png", "nightshade_tree_top.png",
		"nightshade_tree.png"},
      	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("nightshade_wood", "wood", "nightshade:nightshade_wood", {
		description = "NightShade Tree",
	tiles = {"nightshade_wood_fence.png"},
      	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("nightshade_lamp", "glass", "nightshade:nightshade_lamp", {
		description = "NightShade Lamp",
	tiles = {"nightshade_lamp.png"},
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
	})



end
