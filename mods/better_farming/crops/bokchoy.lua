-- add to registered_plants
farming.register_plant("better_farming:bokchoy",{
	description = "Bokchoy Seed",
	harvest_description = "Bokchoy",
	inventory_image = "better_farming_bokchoy_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 3,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

-- needed
minetest.override_item("better_farming:bokchoy", {
	on_use = minetest.item_eat(1),
	groups = {food_tomato = 1, flammable = 3}
})

minetest.register_decoration(asuna.features.crops.bokchoy.inject_decoration({
	name = "better_farming:bokchoy_3",
	deco_type = "simple",
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 3145,
		octaves = 3,
		persist = 0.7
	},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:bokchoy_3",
	param2 = 3,
}))
