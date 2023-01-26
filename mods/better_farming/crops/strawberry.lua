-- add to registered_plants
farming.register_plant("better_farming:strawberry",{
	description = "Strawberry Seed",
	harvest_description = "Strawberry",
	inventory_image = "better_farming_strawberry_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 8,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

-- needed
minetest.override_item("better_farming:strawberry", {
	on_use = minetest.item_eat(3),
})

minetest.register_decoration(asuna.features.crops.strawberry.inject_decoration({
	name = "better_farming:strawberry_8",
	deco_type = "simple",
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 5045,
		octaves = 3,
		persist = 0.7
	},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:strawberry_8",
	param2 = 3,
}))

if minetest.get_modpath("animalia") then
	minetest.register_craftitem("better_farming:strawberry_cake", {
		description = "Strawberry Cake",
		on_use = minetest.item_eat(5),
		inventory_image = "better_farming_strawberry_cake.png",
	})

	minetest.register_craft({
		output = "better_farming:strawberry_cake",
		recipe = {
			{"better_farming:strawberry", "better_farming:strawberry", "better_farming:strawberry" },
			{"animalia:chicken_egg_fried", "farming:flour", "animalia:chicken_egg_fried" },
			{"farming:flour", "farming:flour", "farming:flour" }
		}
	})
end