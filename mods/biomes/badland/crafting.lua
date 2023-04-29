------------Crafting
minetest.register_craft({
	output = "badland:badland_wood 4",
	recipe = {
		{"badland:badland_tree"},
	}
})

minetest.register_craft({
	output = "badland:scarecrow",
	recipe = {
		{"", "badland:pumpkin_block", ""},
		{"farming:straw", "wool:blue", "farming:straw"},
		{"", "default:stick", ""},
	}
})

minetest.register_craft({
	output = "badland:badland_trapdoor 2",
	recipe = {
		{"badland:badland_wood", "badland:badland_wood", "badland:badland_wood"},
		{"badland:badland_wood", "badland:badland_wood", "badland:badland_wood"},
	}
})

minetest.register_craft({
	output = "badland:pumpkin_lantern",
	recipe = {
		{"", "default:torch", ""},
		{"", "badland:pumpkin_block", ""},
	}
})