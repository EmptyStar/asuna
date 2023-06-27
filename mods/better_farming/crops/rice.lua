-- add to registered_plants
better_farming.register_plant("Rice",8,{ "grassland" })

-- needed
minetest.override_item("better_farming:rice", {
	stack_max = 300,
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("better_farming:onigiri", {
	description = "Onigiri",
	on_use = minetest.item_eat(1),
	inventory_image = "onigiri.png",
})

minetest.register_craft({
	type = "cooking",
	output = "better_farming:onigiri",
	recipe = "better_farming:rice",
})
