-- add to registered_plants
better_farming.register_plant("Cassava",3,{ "grassland" })

-- needed
minetest.override_item("better_farming:cassava", {
	on_use = minetest.item_eat(1),
})