-- add to registered_plants
better_farming.register_plant("Mint",4,{ "grassland" })

-- needed
minetest.override_item("better_farming:mint", {
	on_use = minetest.item_eat(2),
})