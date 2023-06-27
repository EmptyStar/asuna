-- add to registered_plants
better_farming.register_plant("Aloe",3,{ "grassland", "desert" })

-- needed
minetest.override_item("better_farming:aloe", {
	on_use = minetest.item_eat(1),
})