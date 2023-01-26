-- add to registered_plants
farming.register_plant("better_farming:cabbage",{
	description = "Cabbage Seed",
	harvest_description = "Cabbage",
	inventory_image = "better_farming_cabbage_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 6,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

-- needed
minetest.override_item("better_farming:cabbage", {
	on_use = minetest.item_eat(2),
})

minetest.register_decoration(asuna.features.crops.cabbage.inject_decoration({
	name = "better_farming:cabbage_6",
	deco_type = "simple",
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 5503,
		octaves = 3,
		persist = 0.7
	},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:cabbage_6",
	param2 = 3,
}))
