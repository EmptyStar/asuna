-- colorful_beds/init.lua

-- Loads The LUA Files For The Mod

local path = minetest.get_modpath("colorful_beds")

dofile(path .. "/colorful_beds_black.lua")
dofile(path .. "/colorful_beds_blue.lua")
dofile(path .. "/colorful_beds_brown.lua")
dofile(path .. "/colorful_beds_cyan.lua")
dofile(path .. "/colorful_beds_dark_green.lua")
dofile(path .. "/colorful_beds_dark_grey.lua")
dofile(path .. "/colorful_beds_green.lua")
dofile(path .. "/colorful_beds_grey.lua")
dofile(path .. "/colorful_beds_magenta.lua")
dofile(path .. "/colorful_beds_orange.lua")
dofile(path .. "/colorful_beds_pink.lua")
dofile(path .. "/colorful_beds_red.lua")
dofile(path .. "/colorful_beds_violet.lua")
dofile(path .. "/colorful_beds_white.lua")
dofile(path .. "/colorful_beds_yellow.lua")

-- Adds Some Light Blue Beds And Wool
-- They Are Only Obtainable In Survival If You Have The Cropocalypse Mod
-- To Craft Light Blue Dye
dofile(path .. "/colorful_beds_light_blue.lua")

-- For Use As Fuel
dofile(path .. "/colorful_fuel.lua")

-- For That Extra Bounce
dofile(path .. "/bounce_mech.lua")