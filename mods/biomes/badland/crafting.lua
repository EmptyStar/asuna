------------Crafting
minetest.register_craft({
	output = "badland:badland_wood 4",
	recipe = {
		{"badland:badland_tree"},
	}
})

minetest.register_craft({
	output = "badland:badland_sapling",
	recipe = {
		{"default:stick", "badland:badland_leaves"},
		{"badland:badland_leaves", "badland:badland_leaves"},
	}
})

minetest.register_craft({
	output = "badland:scarecrow",
	recipe = {
		{"badland:pumpkin_block", "wool:blue"},
		{"default:stick", "default:stick"},
	}
})

minetest.register_craft({
	output = "badland:badland_trapdoor 2",
	recipe = {
		{"badland:badland_wood", "badland:badland_wood", "badland:badland_wood"},
		{"badland:badland_wood", "badland:badland_wood", "badland:badland_wood"},
	}
})

