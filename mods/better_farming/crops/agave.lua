-- add to registered_plants
farming.register_plant("better_farming:agave",{
	description = "Agave Seed",
	harvest_description = "Agave",
	inventory_image = "better_farming_agave_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 3,
	groups = { flammable = 2, desert = 1 },
	fertility = {"desert"},
})

-- needed
minetest.override_item("better_farming:agave", {
	on_use = minetest.item_eat(1),
})

minetest.register_decoration(asuna.features.crops.agave.inject_decoration({
	name = "better_farming:agave_3",
	deco_type = "simple",
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 4897,
		octaves = 3,
		persist = 0.7
	},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:agave_3",
	param2 = 3,
}))

