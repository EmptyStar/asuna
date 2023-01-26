-- add to registered_plants
farming.register_plant("better_farming:chilie",{
	description = "Chilie Seed",
	harvest_description = "Chilie",
	inventory_image = "better_farming_chilie_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 5,
	groups = { flammable = 2, desert = 1 },
	fertility = {"desert"},
})

-- needed
minetest.override_item("better_farming:chilie", {
	on_use = minetest.item_eat(2),
	groups = {food_tomato = 1, flammable = 3}
})

minetest.register_decoration(asuna.features.crops.chilie.inject_decoration({
	name = "better_farming:chilie_5",
	deco_type = "simple",
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 3398,
		octaves = 3,
		persist = 0.7
	},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:chilie_5",
	param2 = 3,
}))

minetest.register_craftitem("better_farming:chilie_powder", {
	description = "Chilie Powder",
	on_use = minetest.item_eat(-1),
	inventory_image = "chilie_powder.png",
})

minetest.register_craft({
	output = "better_farming:chilie_powder",
	recipe = {
		{"better_farming:chilie"},
	}
})
