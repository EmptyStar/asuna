-- add to registered_plants
better_farming.register_plant("Sisal",3,{ "grassland", "desert" })

-- sisal is large!
minetest.override_item("better_farming:sisal_2", {
	visual_scale = 1.5,
})

minetest.override_item("better_farming:sisal_3", {
	visual_scale = 2,
})

-- needed
minetest.override_item("better_farming:sisal", {
	on_use = minetest.item_eat(1),
})