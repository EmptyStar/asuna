asuna = {}
asuna.modpath = minetest.get_modpath("asuna_core")

local function runfile(file)
  dofile(asuna.modpath .. "/" .. file .. ".lua")
end

runfile("caverealms")
runfile("biomes")
runfile("terrain")
runfile("climate")
runfile("decor")
runfile("music")
runfile("underground")