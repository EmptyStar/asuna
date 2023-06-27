-- add to registered_plants
better_farming.register_plant("Eggplants",4,{ "grassland" })

-- needed
minetest.override_item("better_farming:eggplants", {
	on_use = minetest.item_eat(3),
	groups = {food_tomato = 1, flammable = 3}
})