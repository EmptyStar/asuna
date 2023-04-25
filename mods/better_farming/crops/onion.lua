-- add to registered_plants
better_farming.register_plant("Onion",8,{ "grassland" })

-- needed
minetest.override_item("better_farming:onion", {
	on_use = minetest.item_eat(1),
})