------------Crafting
minetest.register_craft({
	output = "nightshade:nightshade_wood 4",
	recipe = {
		{"nightshade:nightshade_tree"},
	}
})

local leaves = "nightshade:nightshade_leaves_1"
minetest.register_craft({
	output = "nightshade:nightshade_sapling",
	recipe = {
		{"", leaves, ""},
		{leaves, "default:stick", leaves}
	},
})

minetest.register_craft({
	output = "nightshade:nightshade_lamp",
	recipe = {
		{"nightshade:nightshade_wood", "default:meselamp"},
	}
})

minetest.register_craft({
	output = "nightshade:nightshade_trapdoor 2",
	recipe = {
		{"nightshade:nightshade_wood", "nightshade:nightshade_wood", "nightshade:nightshade_wood"},
		{"nightshade:nightshade_wood", "nightshade:nightshade_wood", "nightshade:nightshade_wood"},
	}
})

