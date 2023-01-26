if minetest.get_modpath("walls") then


walls.register(":walls:clay_5", "Small Clay Brick Wall", "clay_5.png",
		"terracotta:clay_5", default.node_sound_stone_defaults())

walls.register(":walls:clay_3", "Clay Wall", "clay_3.png",
		"terracotta:clay_3", default.node_sound_stone_defaults())

walls.register(":walls:terracotta_5", "Terracotta Brick Wall", "terracotta_5.png",
		"terracotta:terracotta_5", default.node_sound_stone_defaults())

walls.register(":walls:terracotta_4", "Terracotta Wall", "terracotta_4.png",
		"terracotta:terracotta_4", default.node_sound_stone_defaults())
end

minetest.register_craft({
	output = "walls:clay_5 6",
	recipe = {
		{"terracotta:clay_5", "terracotta:clay_5", "terracotta:clay_5"},
		{"terracotta:clay_5", "terracotta:clay_5", "terracotta:clay_5"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "walls:clay_3 6",
	recipe = {
		{"terracotta:clay_3", "terracotta:clay_3", "terracotta:clay_3"},
		{"terracotta:clay_3", "terracotta:clay_3", "terracotta:clay_3"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "walls:terracotta_5 6",
	recipe = {
		{"terracotta:terracotta_5", "terracotta:terracotta_5", "terracotta:terracotta_5"},
		{"terracotta:terracotta_5", "terracotta:terracotta_5", "terracotta:terracotta_5"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "walls:terracotta_4 6",
	recipe = {
		{"terracotta:terracotta_4", "terracotta:terracotta_4", "terracotta:terracotta_4"},
		{"terracotta:terracotta_4", "terracotta:terracotta_4", "terracotta:terracotta_4"},
		{"", "", ""},
	}
})
