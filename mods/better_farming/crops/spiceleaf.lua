-- add to registered_plants
better_farming.register_plant("Spiceleaf",3,{ "grassland" })

-- needed
minetest.override_item("better_farming:spiceleaf", {
	on_use = minetest.item_eat(1),
})