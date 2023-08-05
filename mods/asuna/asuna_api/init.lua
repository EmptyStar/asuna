asuna = {}
asuna.modpath = minetest.get_modpath("asuna_core")

local modpath = minetest.get_modpath("asuna_api")

local function runfile(file)
  dofile(modpath .. "/" .. file .. ".lua")
end

runfile("biomes")
runfile("climate")
runfile("caves")
runfile("decor")
