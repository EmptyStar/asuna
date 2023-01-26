-- Minetest 5.0 mod: too many stones
-- See README.txt for licensing and other information.

-- Load support for MT game translation.
local S = minetest.get_translator("too_many_stones")

-- Definitions made by this mod that other mods can use too
too_many_stones = {}

default.LIGHT_MAX = 14
default.get_translator = S

-- Load files
local default_path = minetest.get_modpath("too_many_stones")

dofile(default_path.."/nodes.lua")
dofile(default_path.."/nodes_ore.lua")
dofile(default_path.."/crafting.lua")
--dofile(default_path.."/mapgen.lua")
--dofile(default_path.."/mapgen_ore.lua")
dofile(default_path.."/wall.lua")
dofile(default_path.."/stairs.lua")
