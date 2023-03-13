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