-- add to registered_plants
better_farming.register_plant("Potatoes",4,{ "grassland" })

-- needed
minetest.override_item("better_farming:potatoes", {
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("better_farming:chips", {
	description = "Chips",
	on_use = minetest.item_eat(1),
	inventory_image = "chips.png",
})

minetest.register_craft({
	type = "cooking",
	output = "better_farming:chips 3",
	recipe = "better_farming:potatoes",
})
