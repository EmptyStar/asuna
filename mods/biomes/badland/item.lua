minetest.register_craftitem("badland:mushroom_bowl", {
	description = "Mushroom Bowl Cooked",
	inventory_image = "badland_mushroom_bowl.png",
	on_use = minetest.item_eat(3),
	groups = {food_bread = 1, flammable = 2},
})

minetest.register_craftitem("badland:bowl", {
	description = "Wooden Bowl",
	inventory_image = "badland_bowl.png",
})
