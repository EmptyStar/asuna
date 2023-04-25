-- add to registered_plants
better_farming.register_plant("Agave",3,{ "desert" })

-- needed
minetest.override_item("better_farming:agave", {
	on_use = minetest.item_eat(1),
})