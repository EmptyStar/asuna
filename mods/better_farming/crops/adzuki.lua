-- add to registered_plants
better_farming.register_plant("Adzuki",7,{ "grassland" })

-- needed
minetest.override_item("better_farming:adzuki", {
	stack_max = 150,
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("better_farming:adzuki_bun", {
	description = "Adzuki Bun",
	on_use = minetest.item_eat(1),
	inventory_image = "better_farming_adzuki_bun.png",
})

minetest.register_craft({
	output = "better_farming:adzuki_bun",
	recipe = {
		{"better_farming:gingerbread", "better_farming:adzuki", ""},
	}
})
