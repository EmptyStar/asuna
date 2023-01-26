minetest.register_craftitem("japaneseforest:sashimi_cooked", {
	description = "Sashimi Cooked",
	inventory_image = "japaneseforest_sashimi_cooked.png",
	on_use = minetest.item_eat(5),
	groups = {food_bread = 1, flammable = 2},
})

minetest.register_craftitem("japaneseforest:racine_cooked", {
	description = "Racine Cooked",
	inventory_image = "racine_cooked.png",
	on_use = minetest.item_eat(3),
	groups = {food_bread = 1, flammable = 2},
})

minetest.register_craftitem("japaneseforest:dark_brick_cooked", {
	description = "Dark Brick Cooked",
	inventory_image = "dark_brick_cooked.png",
})
