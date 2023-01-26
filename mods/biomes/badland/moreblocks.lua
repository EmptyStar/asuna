-----------------Moreblock
if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("badland_wood", "wood", "badland:badland_wood", {
		description = "Frost Land Wood",
		tiles = {"badland_wood.png"},
      	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("badland_tree", "tree", "badland:badland_tree", {
		description = "Japanese Tree",
	tiles = {"badland_tree_top.png", "badland_tree_top.png",
		"badland_tree.png"},
      	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	    sounds = default.node_sound_wood_defaults(),
	})



end
