-- add to registered_plants
farming.register_plant("better_farming:pepper",{
	description = "Pepper Seed",
	harvest_description = "Pepper",
	inventory_image = "better_farming_pepper_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 5,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

-- needed
minetest.override_item("better_farming:pepper", {
	on_use = minetest.item_eat(2),
})

minetest.register_decoration(asuna.features.crops.pepper.inject_decoration({
	name = "better_farming:pepper_5",
	deco_type = "simple",
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 1985,
		octaves = 3,
		persist = 0.7
	},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:pepper_5",
	param2 = 3,
}))
