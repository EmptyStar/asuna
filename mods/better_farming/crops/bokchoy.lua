-- add to registered_plants
better_farming.register_plant("Bokchoy",3,{ "grassland" })

-- needed
minetest.override_item("better_farming:bokchoy", {
	on_use = minetest.item_eat(1),
	groups = {food_tomato = 1, flammable = 3}
})