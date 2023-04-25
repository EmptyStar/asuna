-- add to registered_plants
better_farming.register_plant("Asparagus",5,{ "grassland" })

-- needed
minetest.override_item("better_farming:asparagus", {
	on_use = minetest.item_eat(1),
})