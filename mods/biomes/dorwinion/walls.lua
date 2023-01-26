if minetest.get_modpath("walls") then


walls.register(":walls:dorwinion_brick", "Dorwinion Brick Wall", "dorwinion_brick.png",
		"dorwinion:dorwinion_brick", default.node_sound_stone_defaults())

walls.register(":walls:dorwinion_carved", "Dorwinion Carved Wall", "dorwinion_carved.png",
		"dorwinion:dorwinion_carved", default.node_sound_stone_defaults())

walls.register(":walls:dorwinion_brick_with_moss", "Dorwinion Brick With Moss Wall", "dorwinion_brick_with_moss.png",
		"dorwinion:dorwinion_brick_with_moss", default.node_sound_stone_defaults())


end

minetest.register_craft({
	output = "walls:dorwinion_brick 6",
	recipe = {
		{"dorwinion:dorwinion_brick", "dorwinion:dorwinion_brick", "dorwinion:dorwinion_brick"},
		{"dorwinion:dorwinion_brick", "dorwinion:dorwinion_brick", "dorwinion:dorwinion_brick"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "walls:dorwinion_carved 6",
	recipe = {
		{"dorwinion:dorwinion_carved", "dorwinion:dorwinion_carved", "dorwinion:dorwinion_carved"},
		{"dorwinion:dorwinion_carved", "dorwinion:dorwinion_carved", "dorwinion:dorwinion_carved"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "walls:dorwinion_brick_with_moss 6",
	recipe = {
		{"dorwinion:dorwinion_brick_with_moss", "dorwinion:dorwinion_brick_with_moss", "dorwinion:dorwinion_brick_with_moss"},
		{"dorwinion:dorwinion_brick_with_moss", "dorwinion:dorwinion_brick_with_moss", "dorwinion:dorwinion_brick_with_moss"},
		{"", "", ""},
	}
})


