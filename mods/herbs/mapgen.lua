--
-- All other biome API mapgens
--
local modname = herbs.modname

local function register_flower(seed, flower_name, place, biome, ymin)
	minetest.register_decoration({
		name = modname .. ":" ..flower_name,
		deco_type = "simple",
		place_on = place,
		sidelen = 16,
		noise_params = {
			offset = -0.02,
			scale = 0.04,
			spread = {x = 200, y = 200, z = 200},
			seed = seed,
			octaves = 3,
			persist = 0.6
		},
		biomes = biome,
		y_max = 31000,
		y_min = ymin,
		decoration = modname.. ":" ..flower_name,
	})
end

local function register_mushroom(mushroom_name)
	minetest.register_decoration({
		name = modname .. ":" .. mushroom_name,
		deco_type = "simple",
		place_on = {"default:dirt_with_grass", "default:dirt_with_coniferous_litter"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.006,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest", "coniferous_forest", "rainforest"},
		y_max = 31000,
		y_min = 1,
		decoration = modname..":" .. mushroom_name,
	})
end

function herbs.register_decorations()

    -- Flowers
	register_flower(7810530, "campanula_blue",
                    {"default:dirt_with_grass"},
                    {"grassland", "decidious_forest"}, 1)

	register_flower(1770624, "clover_red",
                    {"default:dirt_with_grass","default:dirt_with_coniferous_litter","default:dry_dirt_with_dry_grass"},
                    {"grassland", "decidious_forest", "coniferous_forest", "savanna"}, 1)

	register_flower(7741102, "cornflower",
                    {"default:dirt_with_grass"},
                    {"grassland", "decidious_forest"}, 1)

	register_flower(440615, "thimble_blue",
                    {"default:dirt_with_grass"},
                    {"grassland", "decidious_forest_shore"}, 1)

	register_flower(7245998, "thimble_yellow",
                    {"default:dirt_with_grass"},
                    {"grassland", "decidious_forest_shore", "rainforest"}, 1)

	register_flower(3003485, "houndstooth",
                    {"default:dirt_with_grass"},
                    {"grassland"}, 1)

	register_flower(8624595, "margerit",
                    {"default:dirt_with_grass", "default:dry_dirt_with_dry_grass"},
                    {"grassland", "savanna", "savanna_shore"}, 1)

	register_flower(1444101, "poppy_red",
                    {"default:dirt_with_grass", "default:dirt_with_rainforest_litter"},
                    {"grassland","rainforest"}, 1)

	register_flower(7022389, "ribwort",
                    {"default:dirt_with_grass", "default:dirt", "default:dirt_with_coniferous_litter"},
                    {"grassland", "decidious_forest", "mountain"}, 50)

	register_flower(8517959, "sundew",
                    {"default:dirt_with_grass", "default:dirt", "default:dirt_with_rainforest_litter"},
                    {"decidious_forest_shore", "rainforest", "rainforest_swamp"}, 1)

	register_flower(2204695, "yarrow_white",
                    {"default:dirt_with_grass", "default:dirt", "default:dirt_with_coniferous_litter"},
                    {"grassland", "decidious_forest", "mountain"}, 30)

	register_flower(2204695, "noble_white",
                    {"default:dirt_with_grass", "default:dirt","default:dirt_with_coniferous_litter"},
                    {"grassland", "mountain"}, 70)

	register_flower(2204695, "iris",
                    {"default:dirt_with_grass", "default:dirt", "default:dirt_with_rainforest_litter"},
                    {"decidious_forest_shore", "decidious_forest", "rainforest"}, 1)

	register_flower(2204695, "clover_white",
                    {"default:dirt_with_grass", "default:dirt_with_coniferous_litter"},
                    {"grassland"}, 1)

    register_flower(7810530, "snapdragon",
                    {"default:dirt_with_grass"},
                    {"grassland", "decidious_forest", "decidious_forest_shore"}, 1)

    -- Mushrooms
    register_mushroom("mushroom_bulbous_green")
    register_mushroom("mushroom_chanterelle")
    register_mushroom("mushroom_lorikeet")
    register_mushroom("mushroom_parasol")
    register_mushroom("mushroom_poisonous_sublime")
    register_mushroom("mushroom_stone")

end


--
-- Detect mapgen to select functions
--
--herbs.register_decorations() -- removed, flowers and mushrooms will be placed via other mods
