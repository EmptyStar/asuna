------------Crafting
minetest.register_craft({
	output = "nightshade:nightshade_wood 4",
	recipe = {
		{"nightshade:nightshade_tree"},
	}
})

minetest.register_craft({
	output = "nightshade:nightshade_lamp",
	recipe = {
		{"nightshade:nightshade_wood", "default:meselamp"},
	}
})

minetest.register_craft({
	output = "nightshade:nightshade_trapdoor",
	recipe = {
		{"nightshade:nightshade_wood", "nightshade:nightshade_wood", "nightshade:nightshade_wood"},
		{"nightshade:nightshade_wood", "nightshade:nightshade_wood", "nightshade:nightshade_wood"},
	}
})

