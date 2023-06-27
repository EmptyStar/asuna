-- add to registered_plants
better_farming.register_plant("Pepper",5,{ "grassland" })

-- needed
minetest.override_item("better_farming:pepper", {
	on_use = minetest.item_eat(2),
})