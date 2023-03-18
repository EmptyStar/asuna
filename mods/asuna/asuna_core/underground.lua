-- Undergrond biome registration function
local function register_below_biome(name,seed)
  -- Get above biome name
  local above = name:sub(1,-7) -- to trim "_below" from the end of the biome name

  -- Get biome
  local biome = asuna.biomes[name]

  -- Register ocean floor stone
  minetest.register_decoration({
    deco_type = "simple",
    place_on = {
      "group:cracky",
      "group:crumbly",
    },
    sidelen = 80,
    fill_ratio = 10, -- fill all
    biomes = {name,above},
    y_max = 0,
    y_min = -36,
    decoration = "default:stone",
    spawn_by = "default:water_source",
    num_spawn_by = 1,
    height = 1,
    place_offset_y = -4,
    flags = "all_floors,force_placement",
  })

  -- Register ocean floor node
  minetest.register_decoration({
    deco_type = "simple",
    place_on = {
      "group:cracky",
      "group:crumbly",
    },
    sidelen = 80,
    fill_ratio = 10, -- fill all
    biomes = {name,above},
    y_max = 0,
    y_min = -36,
    decoration = biome.seabed or "default:sand",
    spawn_by = "default:water_source",
    num_spawn_by = 1,
    height = 3,
    place_offset_y = -3,
    flags = "all_floors,force_placement",
  })

  -- Register TMS ores for the biome
  for i = 1, #biome.stones do
    minetest.register_ore({
      ore_type        = "blob",
      ore             = "too_many_stones:" .. biome.stones[i],
      wherein         = {"default:stone","default:desert_stone"},
      clust_size      = 4,
      clust_scarcity  = 16 * 16 * 16,
      y_max           = 31000,
      y_min           = -31000,
      biomes          = {name,above},
      noise_threshold = 0.0,
      noise_params    = {
        offset = 0.6,
        scale = 0.2,
        spread = {x = 4, y = 4, z = 4},
        seed = 766,
        octaves = 1,
        persist = 0,
      },
    })
  end
end

-- Register biomes
local seed = 124
for _,biome in ipairs(asuna.biome_groups.below) do
  register_below_biome(biome,seed)
  seed = seed + 3
end