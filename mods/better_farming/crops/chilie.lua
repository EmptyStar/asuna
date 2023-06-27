-- add to registered_plants
better_farming.register_plant("Chilie",5,{ "desert" })

-- needed
minetest.override_item("better_farming:chilie", {
	on_use = minetest.item_eat(2),
	groups = {food_tomato = 1, flammable = 3}
})

minetest.register_craftitem("better_farming:chilie_powder", {
	description = "Chilie Powder",
	on_use = minetest.item_eat(-1),
	inventory_image = "chilie_powder.png",
})

minetest.register_craft({
	output = "better_farming:chilie_powder",
	recipe = {
		{"better_farming:chilie"},
	}
})
