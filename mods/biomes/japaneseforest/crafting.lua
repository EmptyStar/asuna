------------Crafting
minetest.register_craft({
	output = "japaneseforest:japanese_wood 4",
	recipe = {
		{"japaneseforest:japanese_tree"},
	}
})

minetest.register_craft({
	output = "japaneseforest:japanese_wood 4",
	recipe = {
		{"japaneseforest:japanese_tree"},
	}
})

minetest.register_craft({
	output = "japaneseforest:japanese_tatami 2",
	recipe = {
		{"japaneseforest:mud", "bambooforest:fiber_bamboo"},
		{"japaneseforest:japanese_wood", "bambooforest:fiber_bamboo"},
	}
})

minetest.register_craft({
	output = "japaneseforest:sashimi_brick 2",
	recipe = {
		{"default:brick", "japaneseforest:sashimi_cooked"},
		{"japaneseforest:sashimi_cooked", "japaneseforest:sashimi_cooked"},
	}
})

minetest.register_craft({
	output = "japaneseforest:tatami_simple 2",
	recipe = {
		{"japaneseforest:mud", "bambooforest:fiber_bamboo"},
		{"japaneseforest:japanese_wood", "japaneseforest:japanese_wood"},
	}
})

minetest.register_craft({
	output = "japaneseforest:japanese_thin_wall 2",
	recipe = {
		{"japaneseforest:japanese_wood", "bambooforest:fiber_bamboo"},
		{"bambooforest:fiber_bamboo", "bambooforest:fiber_bamboo"},
	}
})

minetest.register_craft({
	output = "japaneseforest:japanese_trapdoor 2",
	recipe = {
		{"bambooforest:fiber_bamboo", "japaneseforest:japanese_wood", "bambooforest:fiber_bamboo"},
		{"japaneseforest:japanese_wood", "bambooforest:fiber_bamboo", "japaneseforest:japanese_wood"},
		{"", "", ""},
	}
})

minetest.register_craft({
	type = "cooking",
	cooktime = 3,
	output = "japaneseforest:sashimi_cooked",
	recipe = "japaneseforest:sashimi"
})
minetest.register_craft({
	type = "cooking",
	cooktime = 3,
	output = "japaneseforest:racine_cooked",
	recipe = "japaneseforest:racine"
})

minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	output = "japaneseforest:dark_brick_cooked 2",
	recipe = "japaneseforest:dark_brick"
})

minetest.register_craft({
	output = "japaneseforest:dark_brick 2",
	recipe = {
		{"default:brick", "default:coal_lump"},
		{"dye:black", "default:brick"},
	}
})

minetest.register_craft({
	output = "japaneseforest:mud 2",
	recipe = {
		{"japaneseforest:sashimi", "default:sandstone"},
		{"japaneseforest:sashimi", "japaneseforest:sashimi"},
	}
})

minetest.register_craft({
	output = "japaneseforest:mud_block 4",
	recipe = {
		{"japaneseforest:mud", "japaneseforest:mud"},
		{"japaneseforest:mud", "japaneseforest:mud"},
	}
})

minetest.register_craft({
	output = "japaneseforest:mud_brick 4",
	recipe = {
		{"japaneseforest:mud", "default:brick"},
		{"japaneseforest:mud", "japaneseforest:mud"},
	}
})

minetest.register_craft({
	output = "japaneseforest:japanese_lamp 2",
	recipe = {
		{"bambooforest:fiber_bamboo", "japaneseforest:japanese_wood"},
		{"default:paper", "default:torch"},
	}
})

minetest.register_craft({
	output = "japaneseforest:truel",
	recipe = {
		{"japaneseforest:dark_brick_cooked", "default:brick"},
		{"japaneseforest:dark_brick_cooked", "japaneseforest:dark_brick_cooked"},
	}
})
