-- add to registered_plants
better_farming.register_plant("Cucumber",4,{ "grassland" })

-- needed
minetest.override_item("better_farming:cucumber", {
	on_use = minetest.item_eat(1),
})