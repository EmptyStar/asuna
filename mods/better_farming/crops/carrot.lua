-- add to registered_plants
better_farming.register_plant("Carrot",8,{ "grassland" })

-- needed
minetest.override_item("better_farming:carrot", {
	on_use = minetest.item_eat(1),
})