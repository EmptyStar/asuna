asuna = {}
asuna.modpath = minetest.get_modpath("asuna_core")

local function runfile(file)
  dofile(asuna.modpath .. "/" .. file .. ".lua")
end

runfile("biomes")
runfile("climate")
runfile("decor")
runfile("music")
runfile("shore")
runfile("terrain")
runfile("underground")