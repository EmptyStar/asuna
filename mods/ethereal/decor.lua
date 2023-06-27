
if minetest.registered_nodes["farming:cotton_wild"] then

	minetest.register_decoration({
		name = "farming:cotton_wild",
		deco_type = "simple",
		place_on = {"default:dry_dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.1,
			scale = 0.1,
			spread = {x = 50, y = 50, z = 50},
			seed = 4242,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"plains"},
		y_max = 31000,
		y_min = 1,
		decoration = "farming:cotton_wild"
	})
end

-- water pools in swamp areas if 5.0 detected
if minetest.registered_nodes["default:permafrost"] then

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		place_offset_y = -1,
		sidelen = 16,
		fill_ratio = 0.01,
		biomes = {"swamp","marsh"},
		y_max = 2,
		y_min = 1,
		flags = "force_placement",
		decoration = "default:water_source",
		spawn_by = "default:dirt_with_grass",
		num_spawn_by = 8
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		place_offset_y = -1,
		sidelen = 16,
		fill_ratio = 0.1,
		biomes = {"swamp","marsh"},
		y_max = 2,
		y_min = 1,
		flags = "force_placement",
		decoration = "default:water_source",
		spawn_by = {"default:dirt_with_grass", "default:water_source"},
		num_spawn_by = 8
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		place_offset_y = -1,
		sidelen = 16,
		fill_ratio = 0.33,
		biomes = {"marsh"},
		y_max = 32,
		y_min = 1,
		flags = "force_placement",
		decoration = "default:water_source",
		spawn_by = {"default:dirt_with_grass", "default:water_source"},
		num_spawn_by = 8
	})
end

if minetest.registered_nodes["default:dry_dirt_with_dry_grass"] then

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt_with_dry_grass"},
		sidelen = 4,
		noise_params = {
			offset = -1.5,
			scale = -1.5,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 4,
			persist = 1.0
		},
		biomes = {"plains"},
		y_max = 31000,
		y_min = 1,
		decoration = "default:dry_dirt",
		place_offset_y = -1,
		flags = "force_placement"
	})
end

-- Rainforest dirt in grove biome
if minetest.registered_nodes["default:dirt_with_rainforest_litter"] then

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"ethereal:grove_dirt"},
		sidelen = 4,
		noise_params = {
			offset = -0.005,
			scale = 0.5,
			spread = {x = 100, y = 100, z = 100},
			seed = 329,
			octaves = 1,
			persist = 1.0
		},
		biomes = {"grove"},
		y_max = 31000,
		y_min = 1,
		decoration = "default:dirt_with_rainforest_litter",
		place_offset_y = -1,
		flags = "force_placement"
	})
end


-- helper string
local tmp

-- helper function
local add_node = function(a, b, c, d, e, f, g, h, i, j)

	if j ~= 1 then return end

	minetest.register_decoration({
		deco_type = "simple",
		place_on = a,
		sidelen = 80,
		fill_ratio = b,
		biomes = c,
		y_min = d,
		y_max = e,
		decoration = f,
		height_max = g,
		spawn_by = h,
		num_spawn_by = i
	})
end


--firethorn shrub
add_node({"default:snowblock"}, 0.001, {"glacier"}, 1, 30,
	{"ethereal:firethorn"}, nil, nil, nil, ethereal.glacier)

-- scorched tree
--[[add_node({"ethereal:dry_dirt"}, 0.006, {"plains"}, 1, 100,
	{"ethereal:scorched_tree"}, 6, nil, nil, ethereal.plains)]]

-- dry shrub
add_node({"default:dry_dirt"}, 0.005, {"plains"}, 1, 100,
	{"default:dry_shrub"}, nil, nil, nil, ethereal.plains)

--[[add_node({"default:sand"}, 0.015, {"deciduous_forest_ocean"}, 1, 100,
	{"default:dry_shrub"}, nil, nil, nil, ethereal.grassy)]]

add_node({"default:desert_sand"}, 0.005, {"desert"}, 1, 100,
	{"default:dry_shrub"}, nil, nil, nil, ethereal.desert)

add_node({"default:sand"}, 0.005, {"sandstone"}, 1, 100,
	{"default:dry_shrub"}, nil, nil, nil, ethereal.sandstone)

-- Special orange baked clay surface decor for mesa
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 2,
	noise_params = {
		offset = -1,
		scale = -1.25,
		spread = {x = 100, y = 100, z = 100},
		seed = 4,
		octaves = 4,
		persist = 1.0
	},
	biomes = {"mesa"},
	y_max = 31000,
	y_min = 1,
	decoration = "bakedclay:orange",
	place_offset_y = -1,
	flags = "force_placement"
})

add_node({"bakedclay:red", "bakedclay:orange"}, 0.015, {"mesa"}, 1, 31000,
	{"default:dry_shrub"}, nil, nil, nil, ethereal.mesa)

-- dry grass
add_node({"default:dry_dirt_with_dry_grass",
	"default:dirt_with_dry_grass"}, 0.75, {"plains"}, 1, 100,
	{"default:dry_grass_2", "default:dry_grass_3", "default:dry_grass_4",
	"default:dry_grass_5","default:grass_2"}, nil, nil, nil, ethereal.plains)

add_node({"default:dirt_with_dry_grass"}, 0.25, {"mesa"}, 1, 31000,
	{"default:grass_2", "default:grass_3", "default:dry_grass_2",
	}, nil, nil, nil, ethereal.mesa)

add_node({"default:desert_stone"}, 0.005, {"caves"}, 5, 40,
	{"default:dry_grass_2", "default:dry_grass_3", "default:dry_shrub"},
	nil, nil, nil, ethereal.caves)

-- flowers & strawberry
--[[add_node({"default:dirt_with_grass"}, 0.025, {"deciduous_forest"}, 1, 100,
	{"flowers:dandelion_white", "flowers:dandelion_yellow",
	"flowers:geranium", "flowers:rose", "flowers:tulip",
	"flowers:viola", "ethereal:strawberry_7"}, nil, nil, nil,
	ethereal.grassy)]]

--[[add_node({"default:dirt_with_grass"}, 0.025, {"grassytwo"}, 1, 100,
	{"flowers:dandelion_white", "flowers:dandelion_yellow",
	"flowers:geranium", "flowers:rose", "flowers:tulip",
	"flowers:viola", "ethereal:strawberry_7"}, nil, nil, nil,
	ethereal.grassytwo)]]

-- prairie flowers & strawberry
add_node({"ethereal:prairie_dirt"}, 0.035, {"prairie"}, 1, 100,
	{"flowers:dandelion_white", "flowers:dandelion_yellow",
	"flowers:geranium", "flowers:rose", "flowers:tulip",
	"flowers:viola", "ethereal:strawberry_7",
	"flowers:chrysanthemum_green", "flowers:tulip_black"}, nil, nil, nil,
	ethereal.prairie)

-- crystal spike & crystal grass
add_node({"ethereal:crystal_dirt"}, 0.02, {"frost", "frost_floatland"}, 1, 1750,
	{"ethereal:crystal_spike", "ethereal:crystalgrass"}, nil, nil, nil,
	ethereal.frost)

-- red shrub
add_node({"ethereal:fiery_dirt"}, 0.10, {"fiery"}, 1, 100,
	{"ethereal:dry_shrub"}, nil, nil, nil, ethereal.fiery)

-- snowy grass
add_node({"ethereal:gray_dirt"}, 0.05, {"grayness"}, 1, 100,
	{"ethereal:snowygrass"}, nil, nil, nil, ethereal.grayness)

add_node({"ethereal:cold_dirt", "default:dirt_with_coniferous_litter"}, 0.05,
	{"coniferous_forest"}, 1, 100, {"ethereal:snowygrass"}, nil, nil, nil, ethereal.snowy)

-- cactus
--[[add_node({"default:sand"}, 0.0025, {"sandstone"}, 1, 100,
	{"default:cactus"}, 3, nil, nil, ethereal.sandstone)]]

--[[add_node({"default:desert_sand"}, 0.005, {"desert"}, 1, 100,
	{"default:cactus"}, 4, nil, nil, ethereal.desert)]]

minetest.register_decoration({
	name = node,
	deco_type = "simple",
	sidelen = 8,
	place_on = {
		"default:desert_sand",
		"default:sand",
	},
	noise_params = {
		offset = -0.0069,
		scale = 0.027525,
		spread = {x = 8, y = 8, z = 8},
		seed = 60659,
		octaves = 2,
		persist = 0.7625,
		lacunarity = 0.6,
	},
	y_max = 31000,
	y_min = 1,
	biomes = {
		"desert",
		"sandstone",
	},
	height_max = 4,
	decoration = "default:cactus",
})

-- wild red mushroom
add_node({"ethereal:mushroom_dirt"}, 0.5, {"mushroom"}, 1, 100,
	{"flowers:mushroom_red"}, nil, nil, nil, ethereal.mushroom)

local list = {
	{"junglee", {"ethereal:jungle_dirt", "default:dirt_with_rainforest_litter"}, ethereal.junglee},
	{"deciduous_forest", {"default:dirt_with_grass"}, ethereal.grassy},
	{"grassytwo", {"default:dirt_with_grass"}, ethereal.grassytwo},
	{"prairie", {"ethereal:prairie_dirt"}, ethereal.prairie},
	{"mushroom", {"ethereal:mushroom_dirt"}, ethereal.mushroom},
	{"swamp", {"default:dirt_with_grass"}, ethereal.swamp},
  {"marsh", {"default:dirt_with_grass"}, ethereal.swamp}
}

-- wild red and brown mushrooms
for _, row in pairs(list) do

	if row[3] == 1 then

		minetest.register_decoration({
			deco_type = "simple",
			place_on = row[2],
			sidelen = 16,
			noise_params = {
				offset = 0,
				scale = 0.009,
				spread = {x = 200, y = 200, z = 200},
				seed = 2,
				octaves = 3,
				persist = 0.66
			},
			biomes = {row[1]},
			y_min = 1,
			y_max = 120,
			decoration = {"flowers:mushroom_brown", "flowers:mushroom_red"}
		})
	end
end

-- jungle grass
add_node({"ethereal:jungle_dirt", "default:dirt_with_rainforest_litter"},
	0.10, {"junglee"}, 1, 100, {"default:junglegrass"}, nil, nil, nil,
	ethereal.junglee)

add_node({"default:dirt_with_grass","ethereal:grove_dirt","default:dirt_with_rainforest_litter"}, 0.1, {"jumble","grove"}, 1, 100,
	{"default:junglegrass"}, nil, nil, nil, ethereal.jumble)

add_node({"default:dirt_with_grass"}, 0.25, {"swamp", "marsh"}, 1, 31000,
	{"default:junglegrass"}, nil, nil, nil, ethereal.swamp)

-- grass
add_node({"default:dirt_with_grass"}, 0.35, {"deciduous_forest"}, 1, 100,
	{"default:grass_2", "default:grass_3", "default:grass_4",
	"default:grass_5"}, nil, nil, nil, ethereal.grassy)

add_node({"default:dirt_with_grass"}, 0.35, {"grassytwo"}, 1, 100,
	{"default:grass_2", "default:grass_3", "default:grass_4",
	"default:grass_5"}, nil, nil, nil, ethereal.grassytwo)

add_node({"default:dirt_with_grass"}, 0.35, {"jumble"}, 1, 100,
	{"default:grass_2", "default:grass_3", "default:grass_4",
	"default:grass_5"}, nil, nil, nil, ethereal.jumble)

add_node({"ethereal:jungle_dirt", "default:dirt_with_rainforest_litter"},
	0.35, {"junglee"}, 1, 100, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, ethereal.junglee)

add_node({"ethereal:prairie_dirt"}, 0.35, {"prairie"}, 1, 100,
	{"default:grass_2", "default:grass_3", "default:grass_4",
	"default:grass_5"}, nil, nil, nil, ethereal.prairie)

add_node({"ethereal:grove_dirt","defualt:dirt_with_rainforest_litter"}, 0.375, {"grove"}, 1, 100,
	{"default:grass_2", "default:grass_3", "default:grass_4",
	"default:grass_5"}, nil, nil, nil, ethereal.grove)

add_node({"ethereal:grove_dirt"}, 0.35, {"mediterranean"}, 1, 100,
	{"default:grass_2", "default:grass_3", "default:grass_4",
	"default:grass_5"}, nil, nil, nil, ethereal.mediterranean)

add_node({"ethereal:bamboo_dirt"}, 0.35, {"sakura"}, 1, 100,
	{"default:grass_2", "default:grass_3", "default:grass_4",
	"default:grass_5"}, nil, nil, nil, ethereal.sakura)

add_node({"default:dirt_with_grass"}, 0.35, {"grassland", "swamp", "marsh"},
	1, 31000, {"default:grass_3", "default:grass_4"}, nil, nil, nil, 1)

--[[add_node({"ethereal:bamboo_dirt"}, 0.35, {"sakura"}, 1, 100,
	{"default:grass_2", "default:grass_3", "default:grass_4",
	"default:grass_5"}, nil, nil, nil, ethereal.sakura)]]

-- grass on sand
--[[if minetest.registered_nodes["default:marram_grass_1"] then
  local sandy_biomes = {}
	local desert_biomes = {
		desert = true,
		sandstone = true,
		desert_shore = true,
		sandstone_shore = true,
		desert_below = true,
		sandstone_below = true,
	}
	for biome,def in pairs(asuna.biomes) do
		if def.shore == "default:sand" and
			(def.ocean == "temperate" or def.ocean == "tropical") and
			not desert_biomes[biome]
		then
			table.insert(sandy_biomes,biome)
		end
	end

	add_node({"default:sand"}, 0.25, sandy_biomes, 3, 4, {"default:marram_grass_1",
		"default:marram_grass_2", "default:marram_grass_3"}, nil, nil, nil,
		1)
else
	add_node({"default:sand"}, 0.25, sandy_biomes, 3, 4, {"default:grass_2",
		"default:grass_3"}, nil, nil, nil, 1)
end]]

-- ferns
--[[add_node({"ethereal:grove_dirt"}, 0.2, {"grove"}, 1, 100, {"ethereal:fern"},
	nil, nil, nil, ethereal.grove)]]

add_node({"default:dirt_with_grass"}, 0.1, {"swamp","marsh"}, 1, 31000,
	{"ethereal:fern"}, nil, nil, nil, ethereal.swamp)

add_node({"ethereal:crystal_dirt"}, 0.001, {"frost_floatlands"}, 1025, 1750,
	{"ethereal:fern"}, nil, nil, nil, ethereal.frost)

-- snow
add_node({"ethereal:cold_dirt", "default:dirt_with_coniferous_litter"},
	0.8, {"coniferous_forest"}, 4, 48, {"default:snow"}, nil, nil, nil, ethereal.snowy)

add_node({"default:dirt_with_snow"}, 0.8, {"taiga"}, 49, 31000,
	{"default:snow"}, nil, nil, nil, ethereal.alpine)

-- wild onion
--[[add_node({"default:dirt_with_grass", "ethereal:prairie_dirt"}, 0.25,
	{"deciduous_forest", "grassytwo", "jumble", "prairie"}, 1, 100,
	{"ethereal:onion_4"}, nil, nil, nil, 1)]]

-- papyrus
add_node({"default:dirt_with_grass"}, 0.1, {"deciduous_forest"}, 1, 1,
	{"default:papyrus"}, 4, "default:water_source", 1, ethereal.grassy)

add_node({"ethereal:jungle_dirt", "default:dirt_with_rainforest_litter"},
	0.1, {"junglee"}, 1, 1, {"default:papyrus"}, 4, "default:water_source",
	1, ethereal.junglee)

add_node({"default:dirt_with_grass"}, 0.125, {"swamp", "marsh"}, 1, 32,
	{"default:papyrus"}, 4, "default:water_source", 1, ethereal.swamp)

--= Farming Redo plants

if farming and farming.mod and farming.mod == "redo" then

print ("[MOD] Ethereal - Farming Redo detected and in use")

-- potato
add_node({"ethereal:jungle_dirt", "default:dirt_with_rainforest_litter"},
	0.035, {"junglee"}, 1, 100, {"farming:potato_3"}, nil, nil, nil,
	ethereal.junglee)

-- carrot, cucumber, potato, tomato, corn, coffee, raspberry, rhubarb
add_node({"default:dirt_with_grass"}, 0.05, {"grassytwo"}, 1, 100,
	{"farming:carrot_7", "farming:cucumber_4", "farming:potato_3", "farming:vanilla_7",
	"farming:tomato_7", "farming:corn_8", "farming:coffee_5", "farming:blackberry_4",
	"farming:raspberry_4", "farming:rhubarb_3", "farming:blueberry_4",
	"farming:cabbage_6", "farming:lettuce_5", "farming:sunflower_8",
	"farming:asparagus"}, nil, nil, nil,
	ethereal.grassytwo)

add_node({"default:dirt_with_grass"}, 0.05, {"deciduous_forest"}, 1, 100,
	{"farming:carrot_7", "farming:cucumber_4", "farming:potato_3", "farming:vanilla_7",
	"farming:tomato_7", "farming:corn_8", "farming:coffee_5", "farming:blackberry_4",
	"farming:raspberry_4", "farming:rhubarb_3", "farming:blueberry_4",
	"farming:beetroot_5", "farming:sunflower_8",
	"farming:eggplant"}, nil, nil, nil, ethereal.grassy)

add_node({"default:dirt_with_grass"}, 0.05, {"jumble"}, 1, 100,
	{"farming:carrot_7", "farming:cucumber_4", "farming:potato_3", "farming:vanilla_7",
	"farming:tomato_7", "farming:corn_8", "farming:coffee_5", "farming:blackberry_4",
	"farming:raspberry_4", "farming:rhubarb_3", "farming:blueberry_4",
	"farming:cabbage_6", "farming:lettuce_5",
	"farming:spinach"}, nil, nil, nil, ethereal.jumble)

add_node({"ethereal:prairie_dirt"}, 0.05, {"prairie"}, 1, 100,
	{"farming:carrot_7", "farming:cucumber_4", "farming:potato_3", "farming:parsley_3",
	"farming:tomato_7", "farming:corn_8", "farming:coffee_5", "farming:blackberry_4",
	"farming:raspberry_4", "farming:rhubarb_3", "farming:blueberry_4",
	"farming:pea_5", "farming:beetroot_5", "farming:sunflower_8"}, nil, nil, nil,
	ethereal.prairie)

add_node({"ethereal:grove_dirt"}, 0.025, {"mediterranean"}, 1, 100,
	{"farming:parsley_3"}, nil, nil, nil, ethereal.mediterranean)

-- melon and pumpkin
add_node({"ethereal:jungle_dirt", "default:dirt_with_rainforest_litter"},
	0.015, {"junglee"}, 1, 1, {"farming:melon_8", "farming:pumpkin_8"},
	nil, "default:water_source", 1, ethereal.junglee)

add_node({"default:dirt_with_grass"}, 0.015, {"deciduous_forest"}, 1, 1,
	{"farming:melon_8", "farming:pumpkin_8"}, nil, "default:water_source",
	1, ethereal.grassy)

add_node({"default:dirt_with_grass"}, 0.015, {"grassytwo"}, 1, 1,
	{"farming:melon_8", "farming:pumpkin_8"}, nil, "default:water_source",
	1, ethereal.grassytwo)

add_node({"default:dirt_with_grass"}, 0.015, {"jumble"}, 1, 1,
	{"farming:melon_8", "farming:pumpkin_8"}, nil, "default:water_source",
	1, ethereal.jumble)

-- mint
add_node({"default:dirt_with_grass", "default:dirt_with_coniferous_litter",
	"ethereal:bamboo_dirt"}, 0.003, nil, 1, 75, "farming:mint_4", nil,
	"group:water", 1, 1)

-- green beans
add_node({"default:dirt_with_grass"}, 0.035, {"grassytwo"}, 1, 100,
	{"farming:beanbush"}, nil, nil, nil, ethereal.grassytwo)

-- grape bushel
add_node({"default:dirt_with_grass"}, 0.025, {"grassytwo"}, 1, 100,
	{"farming:grapebush"}, nil, nil, nil, ethereal.grassytwo)

add_node({"default:dirt_with_grass"}, 0.025, {"deciduous_forest"}, 1, 100,
	{"farming:grapebush"}, nil, nil, nil, ethereal.grassy)

add_node({"ethereal:prairie_dirt"}, 0.025, {"prairie"}, 1, 100,
	{"farming:grapebush"}, nil, nil, nil, ethereal.prairie)

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "ethereal:prairie_dirt",
			"default:dirt_with_rainforest_litter"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.09,
		spread = {x = 100, y = 100, z = 100},
		seed = 760,
		octaves = 3,
		persist = 0.6
	},
	y_min = 5,
	y_max = 35,
	decoration = {
		"farming:chili_8", "farming:garlic_5", "farming:pepper_5", "farming:pepper_6",
		"farming:onion_5", "farming:hemp_7", "farming:pepper_7", "farming:soy_5"
	},
	spawn_by = "group:tree",
	num_spawn_by = 1
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.06,
		spread = {x = 100, y = 100, z = 100},
		seed = 917,
		octaves = 3,
		persist = 0.6
	},
	y_min = 18,
	y_max = 30,
	decoration = {"farming:pineapple_8", "farming:soy_5"}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"ethereal:grove_dirt"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.06,
		spread = {x = 100, y = 100, z = 100},
		seed = 448,
		octaves = 3,
		persist = 0.6
	},
	y_min = 15,
	y_max = 40,
	decoration = {"farming:artichoke_5"},
	spawn_by = "group:tree",
	num_spawn_by = 1
})
end


if ethereal.desert == 1 and minetest.get_modpath("wine") then

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand"},
		sidelen = 16,
		fill_ratio = 0.001,
		biomes = {"desert"},
		decoration = {"wine:blue_agave"}
	})
end


if ethereal.snowy == 1 and minetest.registered_nodes["default:fern_1"] then

	local function register_fern_decoration(seed, length)

		minetest.register_decoration({
			name = "default:fern_" .. length,
			deco_type = "simple",
			place_on = {
				"ethereal:cold_dirt", "default:dirt_with_coniferous_litter", "naturalbiomes:alderswamp_litter"},
			sidelen = 16,
			noise_params = {
				offset = 0,
				scale = 0.2,
				spread = {x = 100, y = 100, z = 100},
				seed = seed,
				octaves = 3,
				persist = 0.7
			},
			y_max = 31000,
			y_min = 6,
			decoration = "default:fern_" .. length
		})
	end

	register_fern_decoration(14936, 3)
	register_fern_decoration(801, 2)
	register_fern_decoration(5, 1)
end


if ethereal.tundra == 1 and minetest.registered_nodes["default:permafrost"] then

	-- Tundra moss

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:permafrost_with_stones"},
		sidelen = 4,
		noise_params = {
			offset = -0.8,
			scale = 2.0,
			spread = {x = 100, y = 100, z = 100},
			seed = 53995,
			octaves = 3,
			persist = 1.0
		},
		biomes = {"tundra"},
		y_max = 50,
		y_min = 2,
		decoration = "default:permafrost_with_moss",
		place_offset_y = -1,
		flags = "force_placement"
	})

	-- Tundra patchy snow

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {
			"default:permafrost_with_moss",
			"default:permafrost_with_stones",
			"default:stone",
			"default:gravel"
		},
		sidelen = 4,
		noise_params = {
			offset = 0,
			scale = 1.0,
			spread = {x = 100, y = 100, z = 100},
			seed = 172555,
			octaves = 3,
			persist = 1.0
		},
		biomes = {"tundra", "tundra_beach"},
		y_max = 50,
		y_min = 1,
		decoration = "default:snow"
	})

	-- Tundra very sparse grass and dry shrubs

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {
			"default:permafrost_with_moss",
		},
		sidelen = 16,
		fill_ratio = 0.01,
		biomes = {"tundra", "tundra_beach"},
		y_max = 50,
		y_min = 1,
		decoration = {
			"default:grass_1",
			"default:dry_shrub",
		},
	})
end


-- Coral Reef (Minetest 5.0)
if minetest.registered_nodes["default:coral_green"] then

	minetest.register_decoration({
		name = "default:corals",
		deco_type = "simple",
		place_on = {"default:sand"},
		place_offset_y = -1,
		sidelen = 4,
		noise_params = {
			offset = -4,
			scale = 4,
			spread = {x = 50, y = 50, z = 50},
			seed = 7013,
			octaves = 3,
			persist = 0.7,
		},
		biomes = asuna.features.ocean.tropical,
		y_max = -2,
		y_min = -8,
		flags = "force_placement",
		decoration = {
			"default:coral_green", "default:coral_pink",
			"default:coral_cyan", "default:coral_brown",
			"default:coral_orange", "default:coral_skeleton"
		}
	})

	-- Kelp

	minetest.register_decoration({
		name = "default:kelp",
		deco_type = "simple",
		place_on = {"default:sand"},
		place_offset_y = -1,
		sidelen = 16,
		noise_params = {
			offset = -0.04,
			scale = 0.1,
			spread = {x = 200, y = 200, z = 200},
			seed = 87112,
			octaves = 3,
			persist = 0.7
		},
		biomes = asuna.biome_groups.below,
		y_max = -5,
		y_min = -10,
		flags = "force_placement",
		decoration = "default:sand_with_kelp",
		param2 = 48,
		param2_max = 96
	})
end


local random = math.random

-- Generate Illumishroom in caves on top of coal
minetest.register_on_generated(function(minp, maxp)

	if minp.y > -30 or maxp.y < -3000 then
		return
	end

	local bpos
	local coal = minetest.find_nodes_in_area_under_air(
			minp, maxp, "default:stone_with_coal")

	for n = 1, #coal do

		if random(2) == 1 then

			bpos = {x = coal[n].x, y = coal[n].y + 1, z = coal[n].z}

			if bpos.y > -3000 and bpos.y < -2000 then
				minetest.swap_node(bpos, {name = "ethereal:illumishroom3"})

			elseif bpos.y > -2000 and bpos.y < -1000 then
				minetest.swap_node(bpos, {name = "ethereal:illumishroom2"})

			elseif bpos.y > -1000 and bpos.y < -30 then
				minetest.swap_node(bpos, {name = "ethereal:illumishroom"})
			end
		end
	end
end)
