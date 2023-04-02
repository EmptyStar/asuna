-- Soup items
minetest.register_craftitem("soup:tomato_soup", {
    description = "Tomato Soup",
    inventory_image = "tomato_soup.png",
    on_use = minetest.item_eat(5,"ethereal:bowl"),
})

minetest.register_craftitem("soup:mushroom_soup", {
    description = "Mushroom Soup",
    inventory_image = "mushroom_soup.png",
    on_use = minetest.item_eat(5,"ethereal:bowl"),
})

minetest.register_craftitem("soup:chicken_noodle_soup", {
    description = "Chicken Noodle Soup",
    inventory_image = "chicken_noodle_soup.png",
    on_use = minetest.item_eat(8,"ethereal:bowl"),
})

-- Soup recipes
minetest.register_craft({
	output = "soup:tomato_soup",
	recipe = {
		{"better_farming:tomatoes","better_farming:tomatoes", "better_farming:tomatoes"},
		{"","bottles:bottle_of_water", ""},
		{"","group:food_bowl", ""}
	}
})

minetest.register_craft({
	output = "soup:mushroom_soup",
	recipe = {
		{"group:food_mushroom","group:food_mushroom", "group:food_mushroom"},
		{"","bottles:bottle_of_water", ""},
		{"","group:food_bowl", ""}
	}
})

minetest.register_craft({
	output = "soup:chicken_noodle_soup",
	recipe = {
		{"","animalia:poultry_cooked", ""},
		{"","bottles:bottle_of_water", ""},
		{"","group:food_bowl", ""}
	}
})