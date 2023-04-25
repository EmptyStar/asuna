-- add to registered_plants
better_farming.register_plant("Ginger",4,{ "grassland" })

-- needed
minetest.override_item("better_farming:ginger", {
	on_use = minetest.item_eat(1),
})

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
