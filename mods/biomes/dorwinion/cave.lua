local mpath = minetest.get_modpath("dorwinion")

local dorwinion_surface = {
  "dorwinion:dorwinion_grass",
  "dorwinion:dorwinion_brick",
  "dorwinion:dorwinion_brick_cracked",
  "dorwinion:dorwinion_brick_with_moss",
  "dorwinion:dorwinion_brick_with_flowers",
}
local dorwinion_ceiling = {
  "dorwinion:dorwinion",
  "dorwinion:dorwinion_brick",
  "dorwinion:dorwinion_brick_cracked",
  "dorwinion:dorwinion_brick_with_moss",
  "dorwinion:dorwinion_brick_with_flowers",
  "everness:moss_block",
}

minetest.register_decoration({
  deco_type = "simple",
  place_on = "default:stone",
  sidelen = 80,
  fill_ratio = 10,
  biomes = asuna.features.cave.dorwinion,
  y_max = 0,
  y_min = -31000,
  place_offset_y = -1,
  decoration = dorwinion_surface,
  flags = "all_floors,force_placement",
})

minetest.register_decoration({
  deco_type = "simple",
  place_on = dorwinion_surface,
  sidelen = 80,
  fill_ratio = 0.5125,
  biomes = asuna.features.cave.dorwinion,
  y_max = 0,
  y_min = -31000,
  place_offset_y = -1,
  decoration = "dorwinion:dorwinion_grass",
  flags = "all_floors,force_placement",
})

minetest.register_decoration({
  deco_type = "simple",
  place_on = "default:stone",
  sidelen = 80,
  fill_ratio = 10,
  biomes = asuna.features.cave.dorwinion,
  y_max = 0,
  y_min = -31000,
  place_offset_y = -1,
  decoration = dorwinion_ceiling,
  flags = "all_ceilings,force_placement",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = dorwinion_surface,
  fill_ratio = 0.00275,
  biomes = asuna.features.cave.dorwinion,
  y_max = 0,
  y_min = -31000,
  decoration = {
    "dorwinion:dorwinion_leaves",
    "dorwinion:dorwinion_glow_leaves",
  },
  flags = "all_floors",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = dorwinion_ceiling,
  fill_ratio = 0.00275,
  biomes = asuna.features.cave.dorwinion,
  y_max = 0,
  y_min = -31000,
  decoration = {
    "dorwinion:dorwinion_leaves",
    "dorwinion:dorwinion_glow_leaves",
  },
  flags = "all_ceilings",
})

minetest.register_decoration({
  deco_type = "simple",
  sidelen = 80,
  place_on = "dorwinion:dorwinion_brick",
  fill_ratio = 0.015,
  biomes = asuna.features.cave.dorwinion,
  y_max = 0,
  y_min = -31000,
  height = 2,
  height_max = 3,
  decoration = {
    "dorwinion:dorwinion_brick",
    "dorwinion:dorwinion_brick_with_flowers",
  },
  flags = "all_floors",
})

minetest.register_decoration({
  deco_type = "schematic",
  sidelen = 80,
  place_on = dorwinion_surface,
  fill_ratio = 0.0005,
  biomes = asuna.features.cave.dorwinion,
  y_max = 0,
  y_min = -31000,
  schematic = mpath .. "/schematics/ruins.mts",
  rotation = "random",
  flags = "all_floors,place_center_x,place_center_z",
})