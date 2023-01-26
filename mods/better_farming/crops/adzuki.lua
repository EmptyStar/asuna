-- add to registered_plants
farming.register_plant("better_farming:adzuki",{
	description = "Adzuki Seed",
	harvest_description = "Adzuki",
	inventory_image = "better_farming_adzuki_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 7,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

-- needed
minetest.override_item("better_farming:adzuki", {
	stack_max = 150,
	on_use = minetest.item_eat(1),
})

minetest.register_decoration(asuna.features.crops.adzuki.inject_decoration({
	name = "better_farming:adzuki_7",
	deco_type = "simple",
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 4254,
		octaves = 3,
		persist = 0.7
	},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:adzuki_7",
	param2 = 3,
}))

minetest.register_craftitem("better_farming:adzuki_bun", {
	description = "Adzuki Bun",
	on_use = minetest.item_eat(1),
	inventory_image = "better_farming_adzuki_bun.png",
})

minetest.register_craft({
	output = "better_farming:adzuki_bun",
	recipe = {
		{"better_farming:gingerbread", "better_farming:adzuki", ""},
	}
})
