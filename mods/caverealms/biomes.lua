--[[
  Biomes defined via the Minetest Biome API
]]

local mpath = minetest.get_modpath("caverealms")
local spath = mpath .. "/schematics/"

-- Moss cave

local moss_cave_surface = {
  "caverealms:stone_with_moss",
}

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = "default:stone",
  fill_ratio = 10,
  biomes = asuna.features.cave.moss,
  y_max = 0,
  y_min = -31000,
  place_offset_y = -1,
  decoration = moss_cave_surface,
  flags = "all_floors,force_placement",
})

minetest.register_decoration({
  deco_type = "schematic",
  sidelen = 80,
  place_on = moss_cave_surface,
  spawn_by = moss_cave_surface,
  num_spawn_by = 8,
  fill_ratio = 0.000085,
  biomes = asuna.features.cave.moss,
  y_max = -16,
  y_min = -31000,
  place_offset_y = -1,
  schematic = spath .. "emerald_stalagmite.mts",
  flags = "all_floors,place_center_x,place_center_z",
})

minetest.register_decoration({
  deco_type = "schematic",
  sidelen = 80,
  place_on = "default:stone",
  spawn_by = "default:stone",
  num_spawn_by = 8,
  fill_ratio = 0.000085,
  biomes = asuna.features.cave.moss,
  y_max = -16,
  y_min = -31000,
  place_offset_y = -1,
  schematic = spath .. "emerald_stalactite.mts",
  flags = "all_ceilings,place_center_x,place_center_z",
})

minetest.register_decoration({
  deco_type = "schematic",
  sidelen = 80,
  place_on = moss_cave_surface,
  spawn_by = moss_cave_surface,
  num_spawn_by = 8,
  fill_ratio = 0.000085,
  biomes = asuna.features.cave.moss,
  y_max = -16,
  y_min = -31000,
  place_offset_y = -1,
  schematic = spath .. "sapphire_stalagmite.mts",
  flags = "all_floors,place_center_x,place_center_z",
})

minetest.register_decoration({
  deco_type = "schematic",
  sidelen = 80,
  place_on = "default:stone",
  spawn_by = "default:stone",
  num_spawn_by = 8,
  fill_ratio = 0.000085,
  biomes = asuna.features.cave.moss,
  y_max = -16,
  y_min = -31000,
  place_offset_y = -1,
  schematic = spath .. "sapphire_stalactite.mts",
  flags = "all_ceilings,place_center_x,place_center_z",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = moss_cave_surface,
  fill_ratio = 0.00625,
  biomes = asuna.features.cave.moss,
  y_max = 0,
  y_min = -31000,
  decoration = "caverealms:glow_gem",
  flags = "all_floors",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = "default:stone",
  fill_ratio = 0.0175,
  biomes = asuna.features.cave.moss,
  y_max = 0,
  y_min = -31000,
  height = 2,
  height_max = 4,
  decoration = "caverealms:glow_worm",
  flags = "all_ceilings",
})

-- Fungal cave

local fungal_cave_surface = {
  "caverealms:stone_with_lichen",
}

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = "default:stone",
  fill_ratio = 10,
  biomes = asuna.features.cave.fungal,
  y_max = 0,
  y_min = -31000,
  place_offset_y = -1,
  decoration = fungal_cave_surface,
  flags = "all_floors,force_placement",
})

minetest.register_decoration({
  deco_type = "schematic",
  sidelen = 80,
  place_on = fungal_cave_surface,
  spawn_by = fungal_cave_surface,
  num_spawn_by = 8,
  fill_ratio = 0.000085,
  biomes = asuna.features.cave.fungal,
  y_max = -16,
  y_min = -31000,
  place_offset_y = -1,
  schematic = spath .. "emerald_stalagmite.mts",
  flags = "all_floors,place_center_x,place_center_z",
})

minetest.register_decoration({
  deco_type = "schematic",
  sidelen = 80,
  place_on = "default:stone",
  spawn_by = "default:stone",
  num_spawn_by = 8,
  fill_ratio = 0.000085,
  biomes = asuna.features.cave.fungal,
  y_max = -16,
  y_min = -31000,
  place_offset_y = -1,
  schematic = spath .. "emerald_stalactite.mts",
  flags = "all_ceilings,place_center_x,place_center_z",
})

minetest.register_decoration({
  deco_type = "schematic",
  sidelen = 80,
  place_on = fungal_cave_surface,
  spawn_by = fungal_cave_surface,
  num_spawn_by = 8,
  fill_ratio = 0.000085,
  biomes = asuna.features.cave.fungal,
  y_max = -16,
  y_min = -31000,
  place_offset_y = -1,
  schematic = spath .. "amethyst_stalagmite.mts",
  flags = "all_floors,place_center_x,place_center_z",
})

minetest.register_decoration({
  deco_type = "schematic",
  sidelen = 80,
  place_on = "default:stone",
  spawn_by = "default:stone",
  num_spawn_by = 8,
  fill_ratio = 0.000085,
  biomes = asuna.features.cave.fungal,
  y_max = -16,
  y_min = -31000,
  place_offset_y = -1,
  schematic = spath .. "amethyst_stalactite.mts",
  flags = "all_ceilings,place_center_x,place_center_z",
})

minetest.register_decoration({
  deco_type = "schematic",
  sidelen = 80,
  place_on = fungal_cave_surface,
  fill_ratio = 0.0005,
  biomes = asuna.features.cave.fungal,
  y_max = -16,
  y_min = -31000,
  schematic = spath .. "shroom.mts",
  flags = "all_floors,place_center_x,place_center_z",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = fungal_cave_surface,
  fill_ratio = 0.025,
  biomes = asuna.features.cave.fungal,
  y_max = 0,
  y_min = -31000,
  decoration = "caverealms:fungus",
  flags = "all_floors",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = fungal_cave_surface,
  fill_ratio = 0.025,
  biomes = asuna.features.cave.fungal,
  y_max = 0,
  y_min = -31000,
  decoration = "caverealms:mycena",
  flags = "all_floors",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = "default:stone",
  fill_ratio = 0.0175,
  biomes = asuna.features.cave.fungal,
  y_max = 0,
  y_min = -31000,
  height = 2,
  height_max = 4,
  decoration = "caverealms:glow_worm_green",
  flags = "all_ceilings",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 16,
  place_on = "default:stone",
  noise_params = {
    offset = -0.227,
    scale = 0.385,
    spread = {x = 9, y = 9, z = 9},
    seed = seed,
    octaves = 2,
    persist = 0.65,
    lacunarity = 0.69,
  },
  biomes = asuna.features.cave.fungal,
  y_max = 0,
  y_min = -31000,
  place_offset_y = -1,
  height_max = 2,
  decoration = "ethereal:mushroom",
  flags = "all_ceilings,force_placement",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = fungal_cave_surface,
  fill_ratio = 0.00095,
  biomes = asuna.features.cave.fungal,
  y_max = 0,
  y_min = -31000,
  decoration = {
    "flowers:mushroom_red",
    "flowers:mushroom_brown",
		"herbs:mushroom_boletus",
		"herbs:mushroom_cantharellus",
		"herbs:mushroom_macrolepiota",
    "herbs:mushroom_amanita_green",
		"herbs:mushroom_gyromitra",
		"herbs:mushroom_galerina",
  },
  flags = "all_floors",
})

-- Coal/desert cave

local desert_cave_surface = {
  "default:desert_sand",
}

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = "default:stone",
  fill_ratio = 10,
  biomes = asuna.features.cave.coal,
  y_max = 0,
  y_min = -31000,
  place_offset_y = -1,
  decoration = desert_cave_surface,
  flags = "all_floors,force_placement",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = desert_cave_surface,
  fill_ratio = 10,
  biomes = asuna.features.cave.coal,
  y_max = 0,
  y_min = -31000,
  place_offset_y = -2,
  decoration = "default:stone",
  flags = "all_floors,force_placement",
})

minetest.register_decoration({
  deco_type = "schematic",
  sidelen = 80,
  place_on = {
    "default:desert_sand",
    "caverealms:coal_dust",
    "default:coalblock",
  },
  spawn_by = desert_cave_surface,
  num_spawn_by = 8,
  fill_ratio = 0.000085,
  biomes = asuna.features.cave.coal,
  y_max = -16,
  y_min = -31000,
  place_offset_y = -1,
  schematic = spath .. "ruby_stalagmite.mts",
  flags = "all_floors,place_center_x,place_center_z",
})

minetest.register_decoration({
  deco_type = "schematic",
  sidelen = 80,
  place_on = "default:stone",
  spawn_by = "default:stone",
  num_spawn_by = 8,
  fill_ratio = 0.000085,
  biomes = asuna.features.cave.coal,
  y_max = -16,
  y_min = -31000,
  place_offset_y = -1,
  schematic = spath .. "ruby_stalactite.mts",
  flags = "all_ceilings,place_center_x,place_center_z",
})

minetest.register_decoration({
  deco_type = "schematic",
  sidelen = 80,
  place_on = {
    "default:desert_sand",
    "caverealms:coal_dust",
    "default:coalblock",
  },
  spawn_by = desert_cave_surface,
  num_spawn_by = 8,
  fill_ratio = 0.000085,
  biomes = asuna.features.cave.coal,
  y_max = -16,
  y_min = -31000,
  place_offset_y = -1,
  schematic = spath .. "amethyst_stalagmite.mts",
  flags = "all_floors,place_center_x,place_center_z",
})

minetest.register_decoration({
  deco_type = "schematic",
  sidelen = 80,
  place_on = "default:stone",
  spawn_by = "default:stone",
  num_spawn_by = 8,
  fill_ratio = 0.000085,
  biomes = asuna.features.cave.coal,
  y_max = -16,
  y_min = -31000,
  place_offset_y = -1,
  schematic = spath .. "amethyst_stalactite.mts",
  flags = "all_ceilings,place_center_x,place_center_z",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = desert_cave_surface,
  fill_ratio = 0.1,
  biomes = asuna.features.cave.coal,
  y_max = 0,
  y_min = -31000,
  place_offset_y = -1,
  decoration = "caverealms:coal_dust",
  flags = "all_floors,force_placement",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = desert_cave_surface,
  fill_ratio = 0.005,
  biomes = asuna.features.cave.coal,
  y_max = 0,
  y_min = -31000,
  place_offset_y = -1,
  decoration = "default:coalblock",
  flags = "all_floors,force_placement",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = desert_cave_surface,
  fill_ratio = 0.01,
  biomes = asuna.features.cave.coal,
  y_max = 0,
  y_min = -31000,
  decoration = "caverealms:constant_flame",
  flags = "all_floors",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = desert_cave_surface,
  spawn_by = {
    "default:desert_sand",
    "caverealms:coal_dust",
    "default:coalblock",
  },
  num_spawn_by = 8,
  fill_ratio = 0.001,
  biomes = asuna.features.cave.coal,
  y_max = 0,
  y_min = -31000,
  decoration = "default:cactus",
  flags = "all_floors",
})

-- Fire cave

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = "default:stone",
  fill_ratio = 10,
  biomes = asuna.features.cave.fire,
  y_max = 0,
  y_min = -31000,
  place_offset_y = -1,
  decoration = "caverealms:hot_cobble",
  flags = "all_floors,force_placement",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 4,
  place_on = "caverealms:hot_cobble",
  noise_params = {
    offset = -0.4125,
    scale = 0.45,
    spread = {x = 8, y = 8, z = 8},
    seed = seed,
    octaves = 2,
    persist = 0.64,
    lacunarity = 0.7,
  },
  biomes = asuna.features.cave.fire,
  y_max = 0,
  y_min = -31000,
  place_offset_y = -1,
  decoration = "default:obsidian",
  flags = "all_floors,force_placement",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = "default:stone",
  fill_ratio = 10,
  biomes = asuna.features.cave.fire,
  y_max = 0,
  y_min = -31000,
  place_offset_y = -1,
  decoration = "caverealms:hot_cobble",
  flags = "all_ceilings,force_placement",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = "caverealms:hot_cobble",
  fill_ratio = 0.085,
  biomes = asuna.features.cave.fire,
  y_max = 0,
  y_min = -31000,
  decoration = "caverealms:constant_flame",
  flags = "all_floors",
})

local c_lava = minetest.get_content_id("default:lava_source")
local valid_lava_enclosure = {}
for _,lava_enclosure in ipairs({
  minetest.get_content_id("default:stone"),
  minetest.get_content_id("caverealms:hot_cobble"),
  c_lava,
}) do
  valid_lava_enclosure[lava_enclosure] = true
end

abdecor.register_advanced_decoration("caverealms_fire_cave_lava",{
  target = {
    place_on = {
      "caverealms:hot_cobble",
    },
    sidelen = 80,
    fill_ratio = 0.065,
    y_max = -8,
    y_min = -31000,
    flags = "all_floors",
  },
  fn = function(mapgen)
    -- Get provided values
    local va = mapgen.voxelarea
    local vdata = mapgen.data
    local pos = mapgen.pos

    -- Get stride values and set position
    local ystride = va.ystride
    local zstride = va.zstride
    local pos = va:index(pos.x,pos.y,pos.z)

    -- Lava must be enclosed to its sides and below
    for _,adjacent in ipairs({
      -ystride,
      1,
      -1,
      zstride,
      -zstride,
    }) do
      if not valid_lava_enclosure[vdata[pos + adjacent]] then
        return -- lava is not properly enclosed
      end
    end

    -- Place lava
    vdata[pos] = c_lava
  end,
  flags = {
    liquid = true,
  },
})

-- Dry cave

local dry_cave_surface = {
  "default:dry_dirt",
  "default:dry_dirt_with_dry_grass",
  "default:desert_stone",
  "default:desert_cobble",
}

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = "default:stone",
  fill_ratio = 10,
  biomes = asuna.features.cave.dry,
  y_max = 0,
  y_min = -31000,
  place_offset_y = -1,
  decoration = dry_cave_surface,
  flags = "all_floors,force_placement",
})

minetest.register_decoration({
  deco_type = "schematic",
  sidelen = 80,
  place_on = dry_cave_surface,
  spawn_by = dry_cave_surface,
  num_spawn_by = 8,
  fill_ratio = 0.000085,
  biomes = asuna.features.cave.dry,
  y_max = -16,
  y_min = -31000,
  place_offset_y = -1,
  schematic = spath .. "ruby_stalagmite.mts",
  flags = "all_floors,place_center_x,place_center_z",
})

minetest.register_decoration({
  deco_type = "schematic",
  sidelen = 80,
  place_on = "default:stone",
  spawn_by = "default:stone",
  num_spawn_by = 8,
  fill_ratio = 0.000085,
  biomes = asuna.features.cave.dry,
  y_max = -16,
  y_min = -31000,
  place_offset_y = -1,
  schematic = spath .. "ruby_stalactite.mts",
  flags = "all_ceilings,place_center_x,place_center_z",
})

minetest.register_decoration({
  deco_type = "schematic",
  sidelen = 80,
  place_on = dry_cave_surface,
  spawn_by = dry_cave_surface,
  num_spawn_by = 8,
  fill_ratio = 0.000085,
  biomes = asuna.features.cave.dry,
  y_max = -16,
  y_min = -31000,
  place_offset_y = -1,
  schematic = spath .. "amethyst_stalagmite.mts",
  flags = "all_floors,place_center_x,place_center_z",
})

minetest.register_decoration({
  deco_type = "schematic",
  sidelen = 80,
  place_on = "default:stone",
  spawn_by = "default:stone",
  num_spawn_by = 8,
  fill_ratio = 0.000085,
  biomes = asuna.features.cave.dry,
  y_max = -16,
  y_min = -31000,
  place_offset_y = -1,
  schematic = spath .. "amethyst_stalactite.mts",
  flags = "all_ceilings,place_center_x,place_center_z",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = dry_cave_surface,
  fill_ratio = 0.01,
  biomes = asuna.features.cave.dry,
  y_max = 0,
  y_min = -31000,
  decoration = "caverealms:spike",
  flags = "all_floors",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = "default:stone",
  fill_ratio = 0.01,
  biomes = asuna.features.cave.dry,
  y_max = 0,
  y_min = -31000,
  height = 2,
  height_max = 3,
  decoration = "caverealms:fire_vine",
  flags = "all_ceilings",
})