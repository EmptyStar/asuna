-- add to registered_plants
better_farming.register_plant("Medicinal Plant",4,{ "grassland" })

-- needed
minetest.override_item("better_farming:medicinal_plant", {
	on_use = minetest.item_eat(3),
})