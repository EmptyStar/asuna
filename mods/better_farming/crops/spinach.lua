-- add to registered_plants
better_farming.register_plant("Spinach",4,{ "grassland" })

-- needed
minetest.override_item("better_farming:spinach", {
	on_use = minetest.item_eat(1),
	groups = {food_spinach = 1, flammable = 3}
})