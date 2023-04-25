-- add to registered_plants
better_farming.register_plant("Yucca",3,{ "grassland", "desert" })

-- yucca is tall!
minetest.override_item("better_farming:yucca_2", {
	visual_scale = 1.25,
})

minetest.override_item("better_farming:yucca_3", {
	visual_scale = 1.5,
})

-- needed
minetest.override_item("better_farming:yucca", {
	on_use = minetest.item_eat(1),
})