--[[
	Boulders
	- Should be registered before surface/terrain overrides
]]

local function boulder(name,seed,nodes)
  minetest.register_decoration({
    deco_type = "schematic",
    place_on = nodes,
    fill_ratio = 0.00000000000000001,
    y_min = 2,
    y_max = 31000,
    flags = "force_placement,place_center_x,place_center_z",
    schematic = asuna.modpath .. "/schematics/boulders/" .. name .. ".mts",
    rotation = "random",
    place_offset_y = 0
  })
end

local seed = 90210

for _,name in ipairs({
  "cobblestone_boulder_small",
  "cobblestone_boulder_medium",
}) do
  boulder(name,seed,{
    "default:dirt_with_dry_grass",
    "default:dry_dirt_with_dry_grass",
    "default:dirt_with_snow",
    "naturalbiomes:savannalitter",
  })
  seed = seed + 13
end

for _,name in ipairs({
  "mossy_cobblestone_boulder_small",
  "mossy_cobblestone_boulder_medium",
}) do
  boulder(name,seed,{
    "default:dirt_with_grass",
    "default:dirt_with_coniferous_litter",
    "ethereal:grove_dirt",
    "naturalbiomes:alpine_litter"
  })
  seed = seed + 17
end

for _,name in ipairs({
  "desert_boulder_small",
  "desert_boulder_medium",
}) do
  boulder(name,seed,{
    "default:desert_sand",
    "default:sandstone",
  })
  seed = seed + 19
end

--[[
  Terrain changes
  - Sweeping terrain changes that must be made before decorations are placed
]]

-- Special decoration handling
local mtrd = minetest.register_decoration
minetest.register_decoration = function(def)
	-- Set all_floors for all surface decorations
  local flags = def.flags or ""
  if not (flags:find("all_") or flags:find("liquid_")) then
    def.flags = #flags > 0 and (flags .. ",all_floors") or "all_floors"
  end

	-- Set negative y_min for select surface decorations
	if def.y_min == 1 and def.y_max and def.y_max > 1 and def.deco_type == "simple" then
		def.y_min = -20
	end

	-- Ensure spawning in water for underwater decorations
	if def.y_max and def.y_max < 1 and not def.spawn_by and (def.place_on == "default:sand" or def.place_on[1] == "default:sand") then
		def.spawn_by = "default:water_source"
		def.num_spawn_by = 1
	end

	-- Return original register_decoration call
  return mtrd(def)
end

-- Surface nodes that should be propagated through surface stone
local surface_spread = {
  "default:dirt_with_grass",
  "default:dry_dirt_with_dry_grass",
  "default:dirt_with_dry_grass",
  "default:dirt_with_rainforest_litter",
  "default:dirt_with_coniferous_litter",
  "naturalbiomes:savannalitter",
  "naturalbiomes:alpine_litter",
  "naturalbiomes:mediterran_litter",
  "naturalbiomes:alderswamp_litter",
  "naturalbiomes:outback_litter",
  "ethereal:grove_dirt",
  "ethereal:bamboo_dirt",
  "livingjungle:jungleground",
  "livingjungle:leafyjungleground",
  "ethereal:mushroom_dirt",
  "nightshade:nightshade_dirt_with_grass",
  "japaneseforest:japanese_dirt_with_grass",
  "bambooforest:dirt_with_bamboo",
  "dorwinion:dorwinion_grass",
  "badland:badland_grass",
  "frost_land:frost_land_grass",
  "prairie:prairie_dirt_with_grass",
  "everness:dirt_with_crystal_grass",
  "everness:dirt_with_cursed_grass",
  "everness:dirt_with_coral_grass",
}

-- Replace some surface stone with grass; also causes some biome ingress into caves
for _,node in ipairs(surface_spread) do
  minetest.register_decoration({
    deco_type = "simple",
    place_on = {
      "group:stone",
      "default:stone_with_coal",
      "default:dirt",
      "default:silver_sand",
      "default:gravel",
      "everness:coral_desert_stone_with_coal",
      "everness:cursed_stone_carved_with_coal",
      "everness:crystal_stone_with_coal",
    },
    spawn_by = node,
    num_spawn_by = 1,
    sidelen = 4,
    y_min = 3,
    y_max = 31000,
    place_offset_y = -1,
    fill_ratio = 10,
    decoration = node,
    flags = "force_placement",
  })
end

-- Ocean floor nodes that should be replaced with proper ocean floor
local ocean_floor_replace = {
  "group:stone",
  "default:stone_with_coal",
  "everness:quartz_ore",
  "default:dirt",
  "default:dry_dirt",
  "default:gravel",
  "default:silver_sand",
  "default:dirt_with_grass",
  "default:dry_dirt_with_dry_grass",
  "default:dirt_with_dry_grass",
  "default:dirt_with_rainforest_litter",
  "default:dirt_with_coniferous_litter",
  "naturalbiomes:savannalitter",
  "naturalbiomes:alpine_litter",
  "naturalbiomes:mediterran_litter",
  "naturalbiomes:alderswamp_litter",
  "naturalbiomes:outback_litter",
  "ethereal:grove_dirt",
  "ethereal:bamboo_dirt",
  "livingjungle:jungleground",
  "livingjungle:leafyjungleground",
  "ethereal:mushroom_dirt",
  "nightshade:nightshade_dirt_with_grass",
  "japaneseforest:japanese_dirt_with_grass",
  "bambooforest:dirt_with_bamboo",
  "dorwinion:dorwinion_grass",
  "badland:badland_grass",
  "frost_land:frost_land_grass",
  "prairie:prairie_dirt_with_grass",
  "everness:dirt_with_crystal_grass",
  "everness:dirt_with_cursed_grass",
  "everness:coral_desert_stone_with_coal",
  "everness:cursed_stone_carved_with_coal",
  "everness:crystal_stone_with_coal",

}

-- Ocean floor generation function
local function register_ocean_floor(name)
  -- Get above and shore biome names
  local above = name:sub(1,-7) -- to trim "_below" from the end of the biome name
  local shore = above .. "_shore"

  -- Get biome
  local biome = asuna.biomes[name]

  -- Register shore ocean floor terrain
  minetest.register_decoration({
    deco_type = "schematic",
    place_on = ocean_floor_replace,
    sidelen = 80,
    fill_ratio = 10, -- fill all
    biomes = {name,shore,above},
    y_max = 0,
    y_min = 0,
    decoration = "default:stone",
    spawn_by = "default:water_source",
    num_spawn_by = 1,
    place_offset_y = -1,
    flags = "all_floors,force_placement",
    schematic = {
      size = {
        x = 1,
        y = 2,
        z = 1,
      },
      data = {
        { name = "default:stone" , param1 = 255 , param2 = 0 },
        { name = biome.seabed , param1 = 255 , param2 = 0 },
      },
    },
  })

  -- Register ocean floor terrain
  minetest.register_decoration({
    deco_type = "schematic",
    place_on = ocean_floor_replace,
    sidelen = 80,
    fill_ratio = 10, -- fill all
    biomes = {name,shore,above},
    y_max = -1,
    y_min = -10,
    decoration = "default:stone",
    spawn_by = "default:water_source",
    num_spawn_by = 1,
    place_offset_y = -3,
    flags = "all_floors,force_placement",
    schematic = {
      size = {
        x = 1,
        y = 4,
        z = 1,
      },
      data = {
        { name = "default:stone" , param1 = 255 , param2 = 0 },
        { name = biome.seabed , param1 = 255 , param2 = 0 },
        { name = biome.seabed , param1 = 255 , param2 = 0 },
        { name = biome.seabed , param1 = 255 , param2 = 0 },
      },
    },
  })

    -- Register deep ocean floor terrain
    minetest.register_decoration({
      deco_type = "schematic",
      place_on = ocean_floor_replace,
      sidelen = 80,
      fill_ratio = 10, -- fill all
      biomes = {name,shore,above},
      y_max = -11,
      y_min = -36,
      decoration = "default:stone",
      spawn_by = "default:water_source",
      num_spawn_by = 1,
      place_offset_y = -3,
      flags = "all_floors,force_placement",
      schematic = {
        size = {
          x = 1,
          y = 4,
          z = 1,
        },
        data = {
          { name = "default:stone" , param1 = 255 , param2 = 0 },
          { name = biome.deep_seabed , param1 = 255 , param2 = 0 },
          { name = biome.deep_seabed , param1 = 255 , param2 = 0 },
          { name = biome.deep_seabed , param1 = 255 , param2 = 0 },
        },
      },
    })

  -- Replace underwater surface nodes below sea level
  minetest.register_decoration({
    deco_type = "schematic",
    place_on = surface_spread,
    spawn_by = {
      "default:sand",
      "default:water_source",
    },
    num_spawn_by = 1,
    sidelen = 4,
    y_max = 0,
    y_min = -10,
    place_offset_y = -3,
    fill_ratio = 10,
    biomes = {name,shore,above},
    schematic = {
      size = {
        x = 1,
        y = 4,
        z = 1,
      },
      data = {
        { name = "default:stone" , param1 = 255 , param2 = 0 },
        { name = biome.seabed , param1 = 255 , param2 = 0 },
        { name = biome.seabed , param1 = 255 , param2 = 0 },
        { name = biome.seabed , param1 = 255 , param2 = 0 },
      },
    },
    flags = "all_floors,force_placement",
  })
end

-- Generate ocean floor terrain
local seed = 124
for _,biome in ipairs(asuna.biome_groups.below) do
  register_ocean_floor(biome)
end