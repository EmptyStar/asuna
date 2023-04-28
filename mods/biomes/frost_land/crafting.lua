------------Crafting
minetest.register_craft({
	output = "frost_land:frost_land_wood 4",
	recipe = {
		{"frost_land:frost_land_tree"},
	}
})

minetest.register_craft({
	output = "frost_land:frost_land_trapdoor 2",
	recipe = {
		{"nightshade:nightshade_wood", "nightshade:nightshade_wood", "nightshade:nightshade_wood"},
		{"nightshade:nightshade_wood", "nightshade:nightshade_wood", "nightshade:nightshade_wood"},
	}
})