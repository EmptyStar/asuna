-- add to registered_plants
better_farming.register_plant("Kale",3,{ "grassland" })

-- needed
minetest.override_item("better_farming:kale", {
	on_use = minetest.item_eat(1),
})