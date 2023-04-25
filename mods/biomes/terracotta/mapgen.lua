--minetest.register_biome(asuna.biomes.terracotta.generate_definition())

minetest.register_decoration({
    name = "terracotta:terracotta_1",
    deco_type = "schematic",
    place_on = {"terracotta:terracotta_1"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.010265,
    biomes = {"terracotta"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("default").."/schematics/large_cactus.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


minetest.register_decoration({
	deco_type = "simple",
	place_on = {"terracotta:terracotta_1"},
	sidelen = 16,
	fill_ratio = 0.05,
	biomes = {"terracotta"},
	decoration = {
        "default:dry_shrub",
	}
})
