-- caverealms v.0.8 by HeroOfTheWinds
-- original cave code modified from paramat's subterrain
-- For Minetest 0.4.8 stable
-- Depends default
-- License: code WTFPL

caverealms = {} --create a container for functions and constants

--grab a shorthand for the filepath of the mod
local modpath = minetest.get_modpath(minetest.get_current_modname())

--load companion lua files
dofile(modpath.."/config.lua") --configuration file; holds various constants
dofile(modpath.."/crafting.lua") --crafting recipes
dofile(modpath.."/nodes.lua") --node definitions
dofile(modpath.."/functions.lua") --function definitions
dofile(modpath.."/plants.lua")
dofile(modpath.."/biomes.lua")

if minetest.get_modpath("mobs_monster") then
	if caverealms.config.dm_spawn == true then
		dofile(modpath.."/dungeon_master.lua") --special DMs for DM's Lair biome
	end
end