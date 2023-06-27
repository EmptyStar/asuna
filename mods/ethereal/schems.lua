
local path = minetest.get_modpath("ethereal") .. "/schematics/"
local dpath = minetest.get_modpath("default") .. "/schematics/"


-- load schematic tables
dofile(path .. "orange_tree.lua")
dofile(path .. "banana_tree.lua")
dofile(path .. "bamboo_tree.lua")
dofile(path .. "birch_tree.lua")
dofile(path .. "bush.lua")
dofile(path .. "waterlily.lua")
dofile(path .. "volcanom.lua")
dofile(path .. "volcanol.lua")
dofile(path .. "frosttrees.lua")
dofile(path .. "palmtree.lua")
dofile(path .. "pinetree.lua")
dofile(path .. "yellowtree.lua")
dofile(path .. "mushroomone.lua")
dofile(path .. "willow.lua")
dofile(path .. "bigtree.lua")
dofile(path .. "redwood_tree.lua")
dofile(path .. "redwood_small_tree.lua")
dofile(path .. "vinetree.lua")
dofile(path .. "sakura.lua")
dofile(path .. "igloo.lua")
dofile(path .. "lemon_tree.lua")
dofile(path .. "olive_tree.lua")


-- helper function
local add_schem = function(a, b, c, d, e, f, g, h, i, j, k)

	-- if not 1 then biome disabled, don't add
	if g ~= 1 then return end

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = a,
		sidelen = 80,
		fill_ratio = b,
		biomes = c,
		y_min = d,
		y_max = e,
		schematic = f,
		flags = "place_center_x, place_center_z",
		replacements = h,
		spawn_by = i,
		num_spawn_by = j,
		rotation = k or "random"
	})
end


-- igloo
add_schem("default:snowblock", 0.0005, {"glacier"}, 3, 50,
	ethereal.igloo, ethereal.glacier, nil, "default:snowblock", 8, "random")

-- sakura tree
add_schem({"ethereal:bamboo_dirt"}, 0.002, {"sakura"}, 7, 100,
	ethereal.sakura_tree, ethereal.sakura, nil,
	"ethereal:bamboo_dirt", 6)

-- redwood tree
add_schem({"default:dirt_with_dry_grass"}, 0.000625, {"mesa"}, 6, 31000,
	ethereal.redwood_tree, ethereal.mesa, nil,
	"default:dirt_with_dry_grass", 8)

-- banana tree
add_schem({"ethereal:grove_dirt"}, 0.004, {"grove"}, 1, 100,
	ethereal.bananatree, ethereal.grove)

--[[minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"ethereal:grove_dirt"},
	sidelen = 16,
	noise_params = {
		offset = -0.0038,
		scale = 0.021,
		spread = {x = 20, y = 20, z = 20},
		seed = 4,
		octaves = 2,
		persist = 0.735,
		lacunarity = 0.5,
	},
	biomes = {"grove"},
	y_min = 1,
	y_max = 64,
	schematic = ethereal.bananatree,
	flags = "place_center_x,place_center_z",
	rotation = "random",
})]]

-- healing tree
add_schem({"default:dirt_with_snow","default:ice","ethereal:crystal_grass"}, 0.01, {"taiga","frost","frost_floatland"}, 120, 140,
	ethereal.yellowtree, ethereal.alpine, nil, "default:dirt_with_snow", 8)

-- crystal frost tree
add_schem({"ethereal:crystal_dirt"}, 0.01, {"frost", "frost_floatland"}, 1, 1750,
	ethereal.frosttrees, ethereal.frost, nil,
	"ethereal:crystal_dirt", 8)

-- giant mushroom
add_schem("ethereal:mushroom_dirt", 0.02, {"mushroom"}, 1, 100,
	ethereal.mushroomone, ethereal.mushroom, nil,
	"ethereal:mushroom_dirt", 8)

add_schem("default:dirt_with_grass", 0.000075, {"jumble"}, 1, 100,
	ethereal.mushroomone, ethereal.mushroom)

-- small lava crater
add_schem("ethereal:fiery_dirt", 0.01, {"fiery"}, 1, 100,
	ethereal.volcanom, ethereal.fiery, nil, "ethereal:fiery_dirt", 8)

-- large lava crater
add_schem("ethereal:fiery_dirt", 0.003, {"fiery"}, 1, 100,
	ethereal.volcanol, ethereal.fiery, nil, "ethereal:fiery_dirt", 8, "random")

-- default jungle tree
add_schem({"ethereal:jungle_dirt", "default:dirt_with_rainforest_litter"},
	0.08, {"junglee"}, 1, 31000, dpath .. "jungle_tree.mts", ethereal.junglee)

-- willow tree
add_schem({"ethereal:gray_dirt"}, 0.02, {"grayness"}, 1, 100,
	ethereal.willow, ethereal.grayness, nil,
	"ethereal:gray_dirt", 6)

-- small pine tree for shore elevation
add_schem({"ethereal:cold_dirt", "default:dirt_with_coniferous_litter"},
	0.0025, {"coniferous_forest"}, 3, 9, ethereal.pinetree, ethereal.snowy)

-- small pine tree for lower elevation
add_schem({"ethereal:cold_dirt", "default:dirt_with_coniferous_litter"},
	0.02, {"coniferous_forest"}, 10, 40, ethereal.pinetree, ethereal.snowy)

-- default large pine tree for lower elevation
add_schem({"ethereal:cold_dirt", "default:dirt_with_coniferous_litter"},
	0.0025, {"coniferous_forest"}, 10, 40, dpath .. "pine_tree.mts", ethereal.snowy)

-- small pine for higher elevation
add_schem({"default:dirt_with_snow"}, 0.02, {"taiga"}, 40, 140,
	ethereal.pinetree, ethereal.alpine)

-- default large pine for higher elevation
add_schem({"default:dirt_with_snow"}, 0.0025, {"taiga"}, 40, 140,
	dpath .. "pine_tree.mts", ethereal.alpine)

-- default apple tree
add_schem({"default:dirt_with_grass"}, 0.025, {"jumble", "deciduous_forest"}, 1, 100,
	dpath .. "apple_tree.mts", ethereal.grassy)

-- big old tree
add_schem({"default:dirt_with_grass"}, 0.001, {"jumble"}, 1, 100,
	ethereal.bigtree, ethereal.jumble, nil,
	"default:dirt_with_grass", 8)

-- default aspen tree
add_schem({"default:dirt_with_grass"}, 0.0025, {"grassytwo"}, 1, 50,
	dpath .. "aspen_tree.mts", ethereal.jumble)

-- birch tree
add_schem({"default:dirt_with_grass"}, 0.0025, {"grassytwo"}, 50, 100,
	ethereal.birchtree, ethereal.grassytwo)

-- orange tree
add_schem({"ethereal:prairie_dirt"}, 0.01, {"prairie"}, 1, 100,
	ethereal.orangetree, ethereal.prairie)

-- default acacia tree
--[[add_schem({"default:dry_dirt_with_dry_grass",
	"default:dirt_with_dry_grass"}, 0.004, {"savanna"}, 1, 100,
	dpath .. "acacia_tree.mts", 0)]]

-- palm tree
add_schem("default:sand", 0.0025, {"desert_ocean", "plains_ocean", "sandclay",
	"sandstone_ocean", "mesa_ocean", "grove_ocean", "deciduous_forest_ocean"}, 1, 1,
	ethereal.palmtree, 0)

-- bamboo tree
add_schem({"ethereal:bamboo_dirt"}, 0.0025, {"sakura"}, 1, 100,
	ethereal.bambootree, ethereal.sakura)

-- bush
add_schem({"ethereal:bamboo_dirt"}, 0.08, {"bamboo"}, 1, 100, ethereal.bush,
	ethereal.bamboo)

-- vine tree
add_schem({"default:dirt_with_grass"}, 0.02, {"swamp"}, 1, 31000,
	ethereal.vinetree, ethereal.swamp)

-- lemon tree
add_schem({"ethereal:grove_dirt"}, 0.002, {"mediterranean"}, 5, 50,
	ethereal.lemontree, ethereal.mediterranean)

-- olive tree
add_schem({"ethereal:grove_dirt"}, 0.002, {"mediterranean"}, 5, 35,
	ethereal.olivetree, ethereal.mediterranean)


-- default large cactus
if ethereal.desert == 1 then

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:desert_sand"},
		sidelen = 80,
		noise_params = {
			offset = -0.0005,
			scale = 0.0015,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert"},
		y_min = 5,
		y_max = 31000,
		schematic = dpath .. "large_cactus.mts",
		flags = "place_center_x",
		rotation = "random",
	})
end


-- default bush
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass", "default:dirt_with_snow"},
	sidelen = 16,
	noise_params = {
		offset = -0.004,
		scale = 0.01,
		spread = {x = 100, y = 100, z = 100},
		seed = 137,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest", "grassytwo", "jumble"},
	y_min = 1,
	y_max = 31000,
	schematic = dpath .. "bush.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random"
})


-- default tropical bush
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"ethereal:grove_dirt", "default:dirt_with_rainforest_litter"},
	replacements = {["default:bush_leaves"] = "default:jungleleaves"},
	--sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.01,
		spread = {x = 100, y = 100, z = 100},
		seed = 137,
		octaves = 3,
		persist = 0.5
	},
	biomes = {"grove", "junglee"},
	y_min = 1,
	y_max = 31000,
	schematic = dpath .. "bush.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random"
})


-- default acacia bush
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {
		"default:dirt_with_dry_grass", "default:dry_dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.00525,
		scale = 0.0125,
		spread = {x = 7, y = 7, z = 7},
		seed = 90155,
		octaves = 2,
		persist = 0.8,
		lacunarity = 1.5,
	},
	--fill_ratio = 0.0075,
	biomes = {"mesa"},
	y_min = 1,
	y_max = 31000,
	schematic = dpath .. "acacia_bush.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random"
})


-- default pine bush
if minetest.registered_nodes["default:pine_bush"] then

	minetest.register_decoration({
		name = "default:pine_bush",
		deco_type = "schematic",
		place_on = {"default:dirt_with_snow"},
		sidelen = 16,
		noise_params = {
			offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7,
			lacunarity = 2.0
		},
		biomes = {"taiga"},
		y_max = 31000,
		y_min = 4,
		schematic = dpath .. "pine_bush.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end


-- default blueberry bush
if minetest.registered_nodes["default:blueberry_bush_leaves"] then

	minetest.register_decoration({
		name = "default:blueberry_bush",
		deco_type = "schematic",
		place_on = {
			"default:dirt_with_coniferous_litter", "default:dirt_with_snow", "ethereal:grove_dirt"},
		sidelen = 16,
		fill_ratio = 0.00075,
		biomes = {"coniferous_forest", "taiga", "grove"},
		y_max = 31000,
		y_min = 1,
		place_offset_y = 1,
		schematic = dpath .. "blueberry_bush.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end


-- place waterlily in beach areas
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

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.12,
		scale = 0.3,
		spread = {x = 200, y = 200, z = 200},
		seed = 33,
		octaves = 3,
		persist = 0.7
	},
	biomes = sandy_biomes,
	y_min = 0,
	y_max = 0,
	schematic = ethereal.waterlily,
	rotation = "random"
})


-- coral reef
if ethereal.reefs == 1 then

	-- override corals so crystal shovel can pick them up intact
	minetest.override_item("default:coral_skeleton", {groups = {crumbly = 3}})
	minetest.override_item("default:coral_orange", {groups = {crumbly = 3}})
	minetest.override_item("default:coral_brown", {groups = {crumbly = 3}})

	--[[minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:sand"},
		noise_params = {
			offset = -0.15,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 7013,
			octaves = 3,
			persist = 1,
		},
		biomes = asuna.features.ocean.tropical,
		y_min = -8,
		y_max = -2,
		schematic = path .. "corals.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})]]
end
