-- add to registered_plants
better_farming.register_plant("Corn",8,{ "grassland" })

-- needed
minetest.override_item("better_farming:corn", {
	on_use = minetest.item_eat(1),
})

-- corn is tall!
minetest.override_item("better_farming:corn_4", {
	visual_scale = 1.25,
})

minetest.override_item("better_farming:corn_5", {
	visual_scale = 1.5,
})

minetest.override_item("better_farming:corn_6", {
	visual_scale = 1.75,
})

minetest.override_item("better_farming:corn_7", {
	visual_scale = 2,
})

minetest.override_item("better_farming:corn_8", {
	visual_scale = 2.25,
})

minetest.register_craftitem("better_farming:popcorn", {
	description = "Popcorn",
	on_use = minetest.item_eat(1),
	inventory_image = "better_farming_pop_corn.png",
})

minetest.register_craft({
	type = "cooking",
	output = "better_farming:popcorn 2",
	recipe = "better_farming:corn",
})
