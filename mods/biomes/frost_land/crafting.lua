------------Crafting
minetest.register_craft({
	output = "frost_land:frost_land_wood 4",
	recipe = {
		{"frost_land:frost_land_tree"},
	}
})


minetest.register_craft({
	output = "frost_land:frost_land_sapling",
	recipe = {
		{"default:stick", "frost_land:frost_land_leaves_1"},
		{"frost_land:frost_land_leaves_1", "frost_land:frost_land_leaves_2"},
	}
})

