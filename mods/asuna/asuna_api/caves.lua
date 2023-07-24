minetest.set_mapgen_setting("mgv7_cave_width",0.0415,true)
minetest.set_mapgen_setting("mgv7_cavern_limit",-28,true)
minetest.set_mapgen_setting("mgv7_cavern_taper",16,true)
minetest.set_mapgen_setting("mgv7_cavern_threshold",0.5,true)
minetest.set_mapgen_setting("mgv7_large_cave_depth",0,true)
minetest.set_mapgen_setting("mgv7_large_cave_flooded",0,true)
minetest.set_mapgen_setting("mgv7_large_cave_num_min",0,true)
minetest.set_mapgen_setting("mgv7_large_cave_num_max",0,true)
minetest.set_mapgen_setting("mgv7_small_cave_num_min",0,true)
minetest.set_mapgen_setting("mgv7_small_cave_num_max",0,true)

minetest.set_mapgen_setting_noiseparams("mgv7_np_cave1",{
  offset = 0.96,
  scale = 11.45,
  seed = 3141592653,
  spread = {
    x = 62,
    y = 32.75,
    z = 62,
  },
  octaves = 4,
  persistence = 0.44,
  lacunarity = 1.698,
},true)

minetest.set_mapgen_setting_noiseparams("mgv7_np_cave2",{
  offset = 0,
  scale = 11.25,
  seed = 2718281828,
  spread = {
    x = 180,
    y = 32.75,
    z = 180,
  },
  octaves = 4,
  persistence = 0.675,
  lacunarity = 1.5,
},true)