-- add to registered_plants
better_farming.register_plant("Millet",3,{ "grassland" })

-- needed
minetest.override_item("better_farming:millet", {
	on_use = minetest.item_eat(1),
})