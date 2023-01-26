-- add to registered_plants
farming.register_plant("better_farming:beetroot",{
	description = "Beetroot Seed",
	harvest_description = "Beetroot",
	inventory_image = "better_farming_beetroot_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 4,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

-- needed
minetest.override_item("better_farming:beetroot", {
	on_use = minetest.item_eat(1),
})

minetest.register_decoration(asuna.features.crops.beetroot.inject_decoration({
	name = "better_farming:beetroot_4",
	deco_type = "simple",
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 5620,
		octaves = 3,
		persist = 0.7
	},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:beetroot_4",
	param2 = 3,
}))

minetest.register_node("better_farming:beetroot_juice", {
	description = "Beetroot Juice",
	on_use = minetest.item_eat(1),
	drawtype = "plantlike",
	tiles = {"beetroot_juice.png"},
	inventory_image = "beetroot_juice.png",
	wield_image = "beetroot_juice.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = "better_farming:beetroot_juice",
	recipe = {
		{"vessels:glass_bottle", "better_farming:beetroot"},
	}
})
