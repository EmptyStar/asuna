-- add to registered_plants
farming.register_plant("better_farming:aloe",{
	description = "Aloe Seed",
	harvest_description = "Aloe",
	inventory_image = "better_farming_aloe_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 3,
	groups = { flammable = 2, grassland = 1, desert = 1 },
	fertility = {"grassland","desert"},
})

-- needed
minetest.override_item("better_farming:aloe", {
	on_use = minetest.item_eat(1),
})

minetest.register_decoration(asuna.features.crops.aloe.inject_decoration({
	name = "better_farming:aloe_3",
	deco_type = "simple",
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 2548,
		octaves = 3,
		persist = 0.7
	},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:aloe_3",
	param2 = 3,
}))

