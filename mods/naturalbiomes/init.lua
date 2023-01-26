--This creates the naturalbiomes object.
naturalbiomes = {}

--This creates the naturalbiomes.settings object, and fills it with either the menu selected choices as defined in settingtypes.txt, or default values, (In this case, false).
naturalbiomes.settings = {
	clear_biomes			= minetest.settings:get_bool("naturalbiomes.clear_biomes") or false,
	clear_decos			= minetest.settings:get_bool("naturalbiomes.clear_decos") or false,
	clear_ores			= minetest.settings:get_bool("naturalbiomes.clear_ores") or false,
}

if naturalbiomes.settings.clear_biomes then
	minetest.clear_registered_biomes()
end
if naturalbiomes.settings.clear_decos then
	minetest.clear_registered_decorations()
end
if naturalbiomes.settings.clear_ores then
	minetest.clear_registered_ores()
end

local modname = "naturalbiomes"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")

-- Load support for intllib.
local path = minetest.get_modpath(minetest.get_current_modname()) .. "/"

local S = minetest.get_translator and minetest.get_translator("naturalbiomes") or
		dofile(path .. "intllib.lua")


-- biomes

dofile(path .. "savanna.lua") --
dofile(path .. "alderswamp.lua") --
dofile(path .. "alpine.lua") --
-- dofile(path .. "bambooforest.lua") -- removed
dofile(path .. "palmbeach.lua") --
dofile(path .. "outback.lua") --
dofile(path .. "mediterranean.lua") --
dofile(path .. "crafting.lua") --
dofile(path .. "hunger.lua") --
dofile(path .. "leafdecay.lua") --


