--This creates the livingjungle object.
livingjungle = {}

--This creates the livingjungle.settings object, and fills it with either the menu selected choices as defined in settingtypes.txt, or default values, (In this case, false).
livingjungle.settings = {
	clear_biomes			= minetest.settings:get_bool("livingjungle.clear_biomes") or false,
	clear_decos			= minetest.settings:get_bool("livingjungle.clear_decos") or false,
	clear_ores			= minetest.settings:get_bool("livingjungle.clear_ores") or false,
}

if livingjungle.settings.clear_biomes then
	minetest.clear_registered_biomes()
end
if livingjungle.settings.clear_decos then
	minetest.clear_registered_decorations()
end
if livingjungle.settings.clear_ores then
	minetest.clear_registered_ores()
end

local modname = "livingjungle"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")

-- Load support for intllib.
local path = minetest.get_modpath(minetest.get_current_modname()) .. "/"

local S = minetest.get_translator and minetest.get_translator("livingjungle") or
		dofile(path .. "intllib.lua")



-- plants
dofile(path .. "junglenodes.lua") -- 
dofile(path .. "jungleplants.lua") -- 
dofile(path .. "leafdecay.lua") -- 



print (S("[MOD] Jungle Plants loaded"))
