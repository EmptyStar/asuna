-- add to registered_plants
farming.register_plant("better_farming:mint",{
	description = "Mint Seed",
	harvest_description = "Mint",
	inventory_image = "better_farming_mint_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 4,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

-- needed
minetest.override_item("better_farming:mint", {
	on_use = minetest.item_eat(2),
})

minetest.register_decoration(asuna.features.crops.mint.inject_decoration({
	name = "better_farming:mint_4",
	deco_type = "simple",
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 6058,
		octaves = 3,
		persist = 0.7
	},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:mint_4",
	param2 = 3,
}))
