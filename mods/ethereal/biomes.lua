
local S = ethereal.intllib


-- Blue Marble Nodes
minetest.register_node("ethereal:blue_marble", {
	description = S("Blue Marble"),
	tiles = {"ethereal_blue_marble.png"},
	groups = {cracky = 1, stone = 1},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("ethereal:blue_marble_tile", {
	description = S("Blue Marble Tile"),
	tiles = {"ethereal_blue_marble_tile.png"},
	groups = {cracky = 1, stone = 1},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_craft({
	output = "ethereal:blue_marble_tile 9",
	recipe = {
		{"ethereal:blue_marble", "ethereal:blue_marble", "ethereal:blue_marble"},
		{"ethereal:blue_marble", "ethereal:blue_marble", "ethereal:blue_marble"},
		{"ethereal:blue_marble", "ethereal:blue_marble", "ethereal:blue_marble"}
	}
})


-- helper strings
local tmp, tmp2

-- helper function
local add_biome = function(a, l, m, n, o, p, b, c, d, e, f, g, nd, na, ns, vb)

	-- if not 1 then biome disabled, don't add
	if p ~= 1 then return end

	minetest.register_biome(asuna.biomes[a].generate_definition())
end


-- always registered biomes
add_biome("mountain", 140, 31000, 50, 50, 1,
	nil, "default:snow", 1, "default:snowblock", 2,
	nil, nil, nil, nil, 1)

add_biome("grassland", 1, 96, 40, 45, 1,
	nil, "default:dirt_with_grass", 1, "default:dirt", 3,
	nil, nil, nil, nil, 1)

add_biome("underground", -31000, -257, 50, 50, 1,
	nil, nil, nil, nil, nil)


-- biomes with disable setting
tmp = "default:desert_stone"

add_biome("desert", 3, 64, 35, 20, ethereal.desert,
	nil, "default:desert_sand", 1, "default:desert_sand", 3, tmp,
	"default:desert_stone", nil, "stairs:stair_desert_stone", 4)

-- ocean flag
ethereal.ocean = 0

add_biome("desert_ocean", -32, 3, 35, 20, ethereal.ocean,
	nil, "default:sand", 1, "default:sand", 2, tmp,
	"default:desert_stone", nil, "stairs:stair_desert_stone")


add_biome("bamboo", 25, 70, 45, 75, 0, -- removed
	nil, "ethereal:bamboo_dirt", 1, "default:dirt", 3)

add_biome("sakura", 1, 60, 45, 75, ethereal.sakura,
	nil, "ethereal:bamboo_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, 1)

add_biome("sakura_ocean", -32, 1, 45, 75, ethereal.ocean,
	nil, "default:sand", 1, "default:sand", 2)


add_biome("mesa", 1, 142, 25, 28, ethereal.mesa,
	nil, "default:dirt_with_dry_grass", 1, "bakedclay:orange", 15,
	nil, nil, nil, nil, 1)

add_biome("mesa_ocean", -32, 1, 25, 28, ethereal.ocean,
	nil, "default:sand", 1, "default:sand", 2)


tmp = "default:dirt_with_coniferous_litter"

if not minetest.registered_nodes[tmp] then
	tmp = "ethereal:cold_dirt"
end

-- was 'snowy' biome
add_biome("coniferous_forest", 1, 40, 12, 40, ethereal.snowy,
	nil, tmp, 1, "default:dirt", 2,
	nil, nil, nil, nil, 1)

add_biome("taiga", 40, 280, 10, 40, ethereal.alpine,
	nil, "default:dirt_with_snow", 1, "default:dirt", 2,
	nil, nil, nil, nil, 1)


add_biome("frost_floatland", 1025, 1750, 10, 40, 0, -- removed
	"default:snow", "ethereal:crystal_dirt", 1, "default:dirt", 1)

add_biome("frost", 1, 142, 10, 40, ethereal.frost,
"default:snow", "ethereal:crystal_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, 1)

add_biome("frost_ocean", -32, 1, 10, 40, ethereal.ocean,
nil, "default:sand", 1, "default:sand", 2)


add_biome("deciduous_forest", 3, 182, 13, 40, ethereal.grassy,
	nil, "default:dirt_with_grass", 1, "default:dirt", 3,
	nil, nil, nil, nil, 1)

add_biome("deciduous_forest_ocean", -32, 3, 13, 40, ethereal.ocean,
	nil, "default:sand", 2, "default:gravel", 1)


add_biome("caves", 4, 41, 15, 25, 0, -- removed
	nil, "default:desert_stone", 3, "air", 8)


tmp = "default:silver_sand"

if not minetest.registered_nodes[tmp] then
	tmp = "default:sand"
end

add_biome("grayness", 2, 82, 15, 30, 0, -- removed
	nil, "ethereal:gray_dirt", 1, "default:dirt", 3)

add_biome("grayness_ocean", -32, 1, 15, 30, 0, -- removed
	nil, tmp, 2, "default:sand", 2, "ethereal:blue_marble")


add_biome("grassytwo", 1, 182, 15, 40, ethereal.grassytwo,
	nil, "default:dirt_with_grass", 1, "default:dirt", 3,
	nil, nil, nil, nil, 1)

add_biome("grassytwo_ocean", -32, 1, 15, 40, ethereal.ocean,
	nil, "default:sand", 1, "default:sand", 2)


add_biome("prairie", 3, 26, 20, 40, 0, -- removed
	nil, "ethereal:prairie_dirt", 1, "default:dirt", 3)

add_biome("prairie_ocean", -32, 1, 20, 40, 0, -- removed
	nil, "default:sand", 1, "default:sand", 2)


add_biome("jumble", 1, 142, 25, 50, ethereal.jumble,
	nil, "default:dirt_with_grass", 1, "default:dirt", 3,
	nil, nil, nil, nil, 1)

add_biome("jumble_ocean", -192, 1, 25, 50, ethereal.ocean,
	nil, "default:sand", 1, "default:sand", 2)

tmp = "default:dirt_with_rainforest_litter"

if not minetest.registered_nodes[tmp] then
	tmp = "ethereal:jungle_dirt"
end

add_biome("junglee", 1, 142, 60, 65, ethereal.junglee,
	nil, tmp, 1, "default:dirt", 3,
	nil, nil, nil, nil, 1)

add_biome("junglee_ocean", -192, 1, 60, 65, ethereal.ocean,
	nil, "default:sand", 1, "default:sand", 2)


add_biome("grove", 3, 46, 55, 65, ethereal.grove,
	nil, "ethereal:grove_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, 1)

add_biome("grove_ocean", -32, 2, 55, 65, ethereal.ocean,
	nil, "default:sand", 1, "default:sand", 2)


add_biome("mediterranean", 3, 50, 20, 45, 0, -- removed
	nil, "ethereal:grove_dirt", 1, "default:dirt", 3)


add_biome("mushroom", 3, 24, 40, 65, ethereal.mushroom,
	nil, "ethereal:mushroom_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, 1)

add_biome("mushroom_ocean", -32, 2, 40, 65, ethereal.ocean,
	nil, "default:sand", 1, "default:sand", 2)


add_biome("sandstone", 3, 46, 50, 20, ethereal.sandstone,
	nil, "default:sandstone", 1, "default:sandstone", 1, "default:sandstone",
	"default:sandstone", nil, "stairs:stair_sandstone", 4)

add_biome("sandstone_ocean", -32, 2, 50, 20, ethereal.ocean,
	nil, "default:sand", 1, "default:sand", 2, "default:sandstone",
	"default:sandstone", nil, "stairs:stair_sandstone")


add_biome("quicksand", 1, 1, 50, 38, ethereal.quicksand,
	nil, "ethereal:quicksand2", 3, "default:gravel", 1)

tmp = "default:dry_dirt_with_dry_grass"
tmp2 = "default:dry_dirt"

if not minetest.registered_nodes[tmp] then
	tmp = "default:dirt_with_dry_grass"
	tmp2 = "default:dirt"
end

add_biome("plains", 3, 100, 65, 25, ethereal.plains,
	nil, tmp, 1, tmp2, 3,
	nil, nil, nil, nil, 1)

add_biome("plains_ocean", -32, 2, 55, 25, ethereal.ocean,
	nil, "default:sand", 1, "default:sand", 2)

add_biome("savanna", 3, 100, 55, 24, 0, -- removed
	nil, tmp, 1, tmp2, 3,
	nil, nil, nil, nil, 1)

add_biome("savanna_ocean", -32, 1, 55, 24, 0, -- removed
	nil, "default:sand", 1, "default:sand", 2)

add_biome("fiery", 5, 40, 75, 10, ethereal.fiery,
	nil, "ethereal:fiery_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, 1)

add_biome("fiery_beach", 1, 4, 75, 10, 0, -- removed
	nil, "default:desert_sand", 1, "default:sand", 2,
	nil, nil, nil, nil, 1)

add_biome("fiery_ocean", -32, 0, 75, 10, ethereal.ocean,
	nil, "default:sand", 1, "default:sand", 2)


add_biome("sandclay", 1, 22, 65, 2, 0, -- removed
	nil, "default:sand", 3, "default:clay", 2)


add_biome("swamp", 1, 60, 80, 90, ethereal.swamp,
	nil, "default:dirt_with_grass", 1, "default:dirt", 3)

add_biome("swamp_ocean", -32, 1, 80, 90, ethereal.ocean,
	nil, "default:sand", 2, "default:clay", 2)

add_biome("marsh", 1, 20, 80, 90, ethereal.swamp,
	nil, "default:dirt_with_grass", 1, "default:dirt", 3)

add_biome("marsh_ocean", -32, 1, 80, 90, ethereal.ocean,
	nil, "default:sand", 2, "default:clay", 2)

if ethereal.glacier == 1 then

	minetest.register_biome(asuna.biomes.glacier:generate_definition())

	--[[minetest.register_biome({
		name = "glacier_ocean",
		node_dust = "default:snowblock",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		y_min = -32,
		y_max = -9,
		heat_point = asuna.climate.glacier_ocean.heat,
		humidity_point = asuna.climate.glacier_ocean.humidity
	})]]
end


if ethereal.tundra == 1 and minetest.registered_nodes["default:permafrost"] then

	minetest.register_biome(asuna.biomes.tundra.generate_definition())
	minetest.register_biome(asuna.biomes.tundra_highland.generate_definition())
	--[[minetest.register_biome({
		name = "tundra_highland",
		node_dust = "default:snow",
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		y_max = 180,
		y_min = 47,
		heat_point = asuna.climate.tundra_highland.heat,
		humidity_point = asuna.climate.tundra_highland.humidity,
		vertical_blend = 1
	})

	minetest.register_biome({
		name = "tundra",
		node_top = "default:permafrost_with_stones",
		depth_top = 1,
		node_filler = "default:permafrost",
		depth_filler = 1,
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		vertical_blend = 4,
		y_max = 46,
		y_min = 2,
		heat_point = asuna.climate.tundra.heat,
		humidity_point = asuna.climate.tundra.humidity,
		vertical_blend = 1
	})

	minetest.register_biome({
		name = "tundra_beach",
		node_top = "default:gravel",
		depth_top = 1,
		node_filler = "default:gravel",
		depth_filler = 2,
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = 1,
		y_min = -3,
		heat_point = asuna.climate.tundra_beach.heat,
		humidity_point = asuna.climate.tundra_beach.humidity
	})

	minetest.register_biome({
		name = "tundra_ocean",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = -4,
		y_min = -32,
		heat_point = asuna.climate.tundra_ocean.heat,
		humidity_point = asuna.climate.tundra_ocean.humidity
	})]]
end
