-- add to registered_plants
farming.register_plant("better_farming:tomatoes",{
	description = "Tomato Seed",
	harvest_description = "Tomato",
	inventory_image = "better_farming_tomatoes_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 5,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

-- needed
minetest.override_item("better_farming:tomatoes", {
	on_use = minetest.item_eat(3),
	groups = {food_tomato = 1, flammable = 3}
})

minetest.register_decoration(asuna.features.crops.tomatoes.inject_decoration({
	name = "better_farming:tomatoes_5",
	deco_type = "simple",
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 4721,
		octaves = 3,
		persist = 0.7
	},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:tomatoes_5",
	param2 = 3,
}))

minetest.register_node("better_farming:tomato_juice", {
	description = "Tomato Juice",
	on_use = minetest.item_eat(1),
	drawtype = "plantlike",
	tiles = {"tomato_juice.png"},
	inventory_image = "tomato_juice.png",
	wield_image = "tomato_juice.png",
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
	output = "better_farming:tomato_juice",
	recipe = {
		{"vessels:glass_bottle", "better_farming:tomatoes"},
	}
})