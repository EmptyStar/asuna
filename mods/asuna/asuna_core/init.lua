asuna = {}
asuna.modpath = minetest.get_modpath("asuna_core")

local function runfile(file)
  dofile(asuna.modpath .. "/" .. file .. ".lua")
end

runfile("biomes")
runfile("terrain")
runfile("climate")
runfile("caves")
runfile("decor")
runfile("music")