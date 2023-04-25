-- add to registered_plants
better_farming.register_plant("Cabbage",6,{ "grassland" })

-- needed
minetest.override_item("better_farming:cabbage", {
	on_use = minetest.item_eat(2),
})