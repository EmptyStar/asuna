------------Crafting
minetest.register_craft({
	output = "terracotta:clay_1 4",
	recipe = {
		{"","terracotta:clay_2", ""},
		{"terracotta:clay_2", "terracotta:clay_2", "terracotta:clay_2"},
		{"","terracotta:clay_2", ""},
	}
})

minetest.register_craft({
	output = "terracotta:clay_2 4",
	recipe = {
		{"default:clay", "default:clay"},
		{"default:clay", "default:clay"},
	}
})

minetest.register_craft({
	output = "terracotta:clay_3 4",
	recipe = {
		{"terracotta:clay_1","terracotta:clay_1"},
		{"terracotta:clay_1", "terracotta:clay_1"},
	}
})

minetest.register_craft({
	output = "terracotta:clay_4 4",
	recipe = {
		{"terracotta:clay_1","", "terracotta:clay_1"},
		{"", "terracotta:clay_1", ""},
		{"terracotta:clay_1","", "terracotta:clay_1"},
	}
})

minetest.register_craft({
	output = "terracotta:clay_5 6",
	recipe = {
		{"terracotta:clay_3","terracotta:clay_3"},
		{"terracotta:clay_3", "terracotta:clay_3"},
	}
})

minetest.register_craft({
	output = "terracotta:clay_6 8",
	recipe = {
		{"terracotta:clay_5","terracotta:clay_5"},
		{"terracotta:clay_5", "terracotta:clay_5"},
	}
})


minetest.register_craft({
	output = "terracotta:terracotta_2 4",
	recipe = {
		{"","terracotta:terracotta_1", ""},
		{"terracotta:terracotta_1", "terracotta:terracotta_1", "terracotta:terracotta_1"},
		{"","terracotta:terracotta_1", ""},
	}
})

minetest.register_craft({
	output = "terracotta:terracotta_3 4",
	recipe = {
		{"terracotta:terracotta_1","terracotta:terracotta_1"},
		{"terracotta:terracotta_1", "terracotta:terracotta_1"},
	}
})

minetest.register_craft({
	output = "terracotta:terracotta_4 4",
	recipe = {
		{"terracotta:terracotta_1","", "terracotta:terracotta_1"},
		{"", "terracotta:terracotta_1", ""},
		{"terracotta:terracotta_1","", "terracotta:terracotta_1"},
	}
})

minetest.register_craft({
	output = "terracotta:terracotta_5 6",
	recipe = {
		{"terracotta:terracotta_3","terracotta:terracotta_3"},
		{"terracotta:terracotta_3", "terracotta:terracotta_3"},
	}
})

minetest.register_craft({
	output = "terracotta:terracotta_6 8",
	recipe = {
		{"terracotta:terracotta_5","terracotta:terracotta_5"},
		{"terracotta:terracotta_5", "terracotta:terracotta_5"},
	}
})

