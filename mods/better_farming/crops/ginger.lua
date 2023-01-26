-- add to registered_plants
farming.register_plant("better_farming:ginger",{
	description = "Ginger Seed",
	harvest_description = "Ginger",
	inventory_image = "better_farming_ginger_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 4,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

-- needed
minetest.override_item("better_farming:ginger", {
	on_use = minetest.item_eat(1),
})

minetest.register_decoration(asuna.features.crops.ginger.inject_decoration({
	name = "better_farming:ginger_4",
	deco_type = "simple",
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 4625,
		octaves = 3,
		persist = 0.7
	},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:ginger_4",
	param2 = 3,
}))

----------------------Gingerdough

minetest.register_craftitem("better_farming:gingerdough", {
	description = "Gingerdough",
	inventory_image = "gingerdough.png",
	on_use = minetest.item_eat(1),
	groups = {food_cotton_candy = 1, flammable = 2},
})

minetest.register_craft({
	type = "cooking",
	output = "better_farming:gingerdough",
	recipe = "better_farming:ginger",
})

minetest.register_craft({
	output = "better_farming:gingerdough 3",
	recipe = {
		{"bottles:bottle_of_water", "farming:flour", "better_farming:ginger"},
		{"better_farming:sugar", "better_farming:sugar", ""},
	}
})

----------------------Gingerbread

minetest.register_craftitem("better_farming:gingerbread", {
	description = "Gingerbread",
	inventory_image = "gingerbread.png",
	on_use = minetest.item_eat(2),
	groups = {food_cotton_candy = 1, flammable = 2},
})

minetest.register_craft({
	type = "cooking",
	output = "better_farming:gingerbread",
	recipe = "better_farming:gingerdough",
})

-----Gingerbread Man--------------

minetest.register_craftitem("better_farming:gingerbread_man", {
	description = "Gingerbread Man",
	inventory_image = "gingerbread_man_1.png",
	on_use = minetest.item_eat(1),
	groups = {food_cotton_candy = 1, flammable = 2},
})


minetest.register_craft({
	output = "better_farming:gingerbread_man",
	recipe = {
		{"", "better_farming:gingerdough", ""},
		{"better_farming:gingerdough", "better_farming:gingerdough", "better_farming:gingerdough"},
		{"better_farming:gingerdough", "", "better_farming:gingerdough"},
	}
})
