-- add to registered_plants
better_farming.register_plant("Jute",3,{ "grassland", "desert" })

-- jute is tall!
minetest.override_item("better_farming:jute_2", {
	visual_scale = 1.25,
})

minetest.override_item("better_farming:jute_3", {
	visual_scale = 1.75,
})

-- needed
minetest.override_item("better_farming:jute", {
	on_use = minetest.item_eat(1),
})

minetest.register_craft({
	output = "better_farming:sugar",
	recipe = {
		{"better_farming:jute"},
	}
})
