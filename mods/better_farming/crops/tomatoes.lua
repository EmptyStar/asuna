-- add to registered_plants
better_farming.register_plant("Tomatoes",5,{ "grassland" })

-- needed
minetest.override_item("better_farming:tomatoes", {
	on_use = minetest.item_eat(3),
	groups = {food_tomato = 1, flammable = 3}
})

minetest.register_node("better_farming:tomato_juice", {
	description = "Tomato Juice",
	on_use = minetest.item_eat(1),
	drawtype = "plantlike",
	tiles = {"tomato_juice.png"},
	inventory_image = "tomato_juice.png",
	wield_image = "tomato_juice.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = "better_farming:tomato_juice",
	recipe = {
		{"vessels:glass_bottle", "better_farming:tomatoes"},
	}
})