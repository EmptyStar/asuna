--[[
	Minetest Ethereal Mod

	Created by ChinChow

	Updated by TenPlus1
]]


ethereal = {version = "20220930"}


local function setting(stype, name, default)

	local value

	if stype == "bool" then
		value = minetest.settings:get_bool("ethereal." .. name)
	elseif stype == "string" then
		value = minetest.settings:get("ethereal." .. name)
	elseif stype == "number" then
		value = tonumber(minetest.settings:get("ethereal." .. name))
	end

	if value == nil then
		value = default
	end

	ethereal[name] = value
end


-- DO NOT change settings below, use the settings.conf file instead

setting("number", "leaftype", 0)
setting("bool", "leafwalk", false)
setting("bool", "cavedirt", true)
setting("bool", "torchdrop", true)
setting("bool", "papyruswalk", true)
setting("bool", "lilywalk", true)
setting("bool", "xcraft", true)
setting("bool", "flight", true)
setting("number", "glacier", 1)
setting("number", "bamboo", 0)
setting("number", "mesa", 1)
setting("number", "alpine", 1)
setting("number", "healing", 1)
setting("number", "snowy", 1)
setting("number", "frost", 1)
setting("number", "grassy", 1)
setting("number", "caves", 0)
setting("number", "grayness", 0)
setting("number", "grassytwo", 1)
setting("number", "prairie", 0)
setting("number", "jumble", 1)
setting("number", "junglee", 1)
setting("number", "desert", 1)
setting("number", "grove", 1)
setting("number", "mushroom", 1)
setting("number", "sandstone", 1)
setting("number", "quicksand", 1)
setting("number", "plains", 1)
setting("number", "savanna", 0)
setting("number", "fiery", 1)
setting("number", "sandclay", 0)
setting("number", "swamp", 1)
setting("number", "sealife", 1)
setting("number", "reefs", 1)
setting("number", "sakura", 1)
setting("number", "tundra", 1)
setting("number", "mediterranean", 0)


local path = minetest.get_modpath("ethereal")

-- Load settings.conf file if found
local input = io.open(path.."/settings.conf", "r")

if input then
	dofile(path .. "/settings.conf")
	input:close()
	input = nil
end


-- Intllib
local S
if minetest.get_translator then
	S = minetest.get_translator("ethereal")
elseif minetest.global_exists("intllib") then
	if intllib.make_gettext_pair then
		S = intllib.make_gettext_pair()
	else
		S = intllib.Getter()
	end
else
	S = function(s) return s end
end
ethereal.intllib = S


-- Falling node function
ethereal.check_falling = minetest.check_for_falling or nodeupdate

-- creative check
local creative_mode_cache = minetest.settings:get_bool("creative_mode")
function ethereal.check_creative(name)
	return creative_mode_cache or minetest.check_player_privs(name, {creative = true})
end


dofile(path .. "/plantlife.lua")
dofile(path .. "/onion.lua")
dofile(path .. "/crystal.lua")
dofile(path .. "/water.lua")
dofile(path .. "/dirt.lua")
dofile(path .. "/food.lua")
dofile(path .. "/wood.lua")
dofile(path .. "/leaves.lua")
dofile(path .. "/sapling.lua")
dofile(path .. "/strawberry.lua")
dofile(path .. "/fishing.lua")
dofile(path .. "/extra.lua")
dofile(path .. "/sealife.lua")
dofile(path .. "/fences.lua")
dofile(path .. "/biomes_init.lua")
dofile(path .. "/biomes.lua")
dofile(path .. "/ores.lua")
dofile(path .. "/schems.lua")
dofile(path .. "/decor.lua")
dofile(path .. "/compatibility.lua")
dofile(path .. "/stairs.lua")

-- add flight if enabled
if ethereal.flight then
	dofile(path .. "/flight.lua")
end

-- add lucky blocks if mod active
if minetest.get_modpath("lucky_block") then
	dofile(path .. "/lucky_block.lua")
end

-- Set bonemeal aliases
if minetest.get_modpath("bonemeal") then
	minetest.register_alias("ethereal:bone", "bonemeal:bone")
	minetest.register_alias("ethereal:bonemeal", "bonemeal:bonemeal")
else -- or return to where it came from
	minetest.register_alias("ethereal:bone", "default:dirt")
	minetest.register_alias("ethereal:bonemeal", "default:dirt")
end

if minetest.get_modpath("xanadu") then
	dofile(path .. "/plantpack.lua")
end


print ("[MOD] Ethereal loaded")
