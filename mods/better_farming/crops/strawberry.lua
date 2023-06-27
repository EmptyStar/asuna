-- add to registered_plants
better_farming.register_plant("Strawberry",8,{ "grassland" })

-- needed
minetest.override_item("better_farming:strawberry", {
	on_use = minetest.item_eat(3),
})

if minetest.get_modpath("animalia") then
	minetest.register_craftitem("better_farming:strawberry_cake", {
		description = "Strawberry Cake",
		on_use = minetest.item_eat(5),
		inventory_image = "better_farming_strawberry_cake.png",
	})

	minetest.register_craft({
		output = "better_farming:strawberry_cake",
		recipe = {
			{"better_farming:strawberry", "better_farming:strawberry", "better_farming:strawberry" },
			{"animalia:chicken_egg_fried", "farming:flour", "animalia:chicken_egg_fried" },
			{"farming:flour", "farming:flour", "farming:flour" }
		}
	})
end