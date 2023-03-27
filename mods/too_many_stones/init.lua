-- Minetest 5.3 mod: too many stones
-- See README.txt for licensing and other information.

-- Definitions made by this mod that other mods can use too
too_many_stones = {}

local S = minetest.get_translator("too_many_stones")

-- Load files
local default_path = minetest.get_modpath("too_many_stones")


dofile(minetest.get_modpath("too_many_stones") .. "/sounds.lua")
dofile(minetest.get_modpath("too_many_stones") .. "/nodes.lua")
dofile(minetest.get_modpath("too_many_stones") .. "/crafting.lua")
dofile(minetest.get_modpath("too_many_stones") .. "/mapgen.lua")
dofile(minetest.get_modpath("too_many_stones") .. "/wall.lua")
dofile(minetest.get_modpath("too_many_stones") .. "/stairs.lua")
dofile(minetest.get_modpath("too_many_stones") .. "/geodes.lua")
dofile(minetest.get_modpath("too_many_stones") .. "/geodes_lib.lua")
dofile(minetest.get_modpath("too_many_stones") .. "/nodes_glowing.lua")
dofile(minetest.get_modpath("too_many_stones") .. "/nodes_crystal.lua")
