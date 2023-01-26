-----------------Moreblock
if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("frost_land_wood", "wood", "frost_land:frost_land_wood", {
		description = "Frost Land Wood",
		tiles = {"frost_land_wood.png"},
      	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("frost_land_tree", "tree", "frost_land:frost_land_tree", {
		description = "Japanese Tree",
	tiles = {"frost_land_tree_top.png", "frost_land_tree_top.png",
		"frost_land_tree.png"},
      	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	    sounds = default.node_sound_wood_defaults(),
	})



end
