-- mods/too_many_stones/nodes_ore.lua

-- support for MT game translation.
local S = default.get_translator



--[[ Index:



--]]

-- Amazonite
minetest.register_node("too_many_stones:amazonite_with_coal", {
	description = S("Coal Ore"),
	tiles = {"tms_amazonite.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = "default:coal_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:amazonite_with_iron", {
	description = S("Iron Ore"),
	tiles = {"tms_amazonite.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = "default:iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:amazonite_with_copper", {
	description = S("Copper Ore"),
	tiles = {"tms_amazonite.png^default_mineral_copper.png"},
	groups = {cracky = 2},
	drop = "default:copper_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:amazonite_with_tin", {
	description = S("Tin Ore"),
	tiles = {"tms_amazonite.png^default_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "default:tin_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:amazonite_with_mese", {
	description = S("Mese Ore"),
	tiles = {"tms_amazonite.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:amazonite_with_gold", {
	description = S("Gold Ore"),
	tiles = {"tms_amazonite.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:amazonite_with_diamond", {
	description = S("Diamond Ore"),
	tiles = {"tms_amazonite.png^default_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

-- Bluestone
minetest.register_node("too_many_stones:bluestone_with_coal", {
	description = S("Coal Ore"),
	tiles = {"tms_bluestone.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = "default:coal_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:bluestone_with_iron", {
	description = S("Iron Ore"),
	tiles = {"tms_bluestone.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = "default:iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:bluestone_with_copper", {
	description = S("Copper Ore"),
	tiles = {"tms_bluestone.png^default_mineral_copper.png"},
	groups = {cracky = 2},
	drop = "default:copper_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:bluestone_with_tin", {
	description = S("Tin Ore"),
	tiles = {"tms_bluestone.png^default_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "default:tin_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:bluestone_with_mese", {
	description = S("Mese Ore"),
	tiles = {"tms_bluestone.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:bluestone_with_gold", {
	description = S("Gold Ore"),
	tiles = {"tms_bluestone.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:bluestone_with_diamond", {
	description = S("Diamond Ore"),
	tiles = {"tms_bluestone.png^default_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

-- Calcite
minetest.register_node("too_many_stones:calcite_with_coal", {
	description = S("Coal Ore"),
	tiles = {"tms_calcite.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = "default:coal_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:calcite_with_iron", {
	description = S("Iron Ore"),
	tiles = {"tms_calcite.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = "default:iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:calcite_with_copper", {
	description = S("Copper Ore"),
	tiles = {"tms_calcite.png^default_mineral_copper.png"},
	groups = {cracky = 2},
	drop = "default:copper_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:calcite_with_tin", {
	description = S("Tin Ore"),
	tiles = {"tms_calcite.png^default_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "default:tin_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:calcite_with_mese", {
	description = S("Mese Ore"),
	tiles = {"tms_calcite.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:calcite_with_gold", {
	description = S("Gold Ore"),
	tiles = {"tms_calcite.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:calcite_with_diamond", {
	description = S("Diamond Ore"),
	tiles = {"tms_calcite.png^default_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

-- Carnotite
minetest.register_node("too_many_stones:carnotite_with_coal", {
	description = S("Coal Ore"),
	tiles = {"tms_carnotite.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = "default:coal_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:carnotite_with_iron", {
	description = S("Iron Ore"),
	tiles = {"tms_carnotite.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = "default:iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:carnotite_with_copper", {
	description = S("Copper Ore"),
	tiles = {"tms_carnotite.png^default_mineral_copper.png"},
	groups = {cracky = 2},
	drop = "default:copper_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:carnotite_with_tin", {
	description = S("Tin Ore"),
	tiles = {"tms_carnotite.png^default_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "default:tin_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:carnotite_with_mese", {
	description = S("Mese Ore"),
	tiles = {"tms_carnotite.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:carnotite_with_gold", {
	description = S("Gold Ore"),
	tiles = {"tms_carnotite.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:carnotite_with_diamond", {
	description = S("Diamond Ore"),
	tiles = {"tms_carnotite.png^default_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

-- Blue Granite
minetest.register_node("too_many_stones:granite_blue_with_coal", {
	description = S("Coal Ore"),
	tiles = {"tms_granite_blue.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = "default:coal_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_blue_with_iron", {
	description = S("Iron Ore"),
	tiles = {"tms_granite_blue.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = "default:iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_blue_with_copper", {
	description = S("Copper Ore"),
	tiles = {"tms_granite_blue.png^default_mineral_copper.png"},
	groups = {cracky = 2},
	drop = "default:copper_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_blue_with_tin", {
	description = S("Tin Ore"),
	tiles = {"tms_granite_blue.png^default_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "default:tin_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_blue_with_mese", {
	description = S("Mese Ore"),
	tiles = {"tms_granite_blue.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_blue_with_gold", {
	description = S("Gold Ore"),
	tiles = {"tms_granite_blue.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_blue_with_diamond", {
	description = S("Diamond Ore"),
	tiles = {"tms_granite_blue.png^default_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

-- Green Granite
minetest.register_node("too_many_stones:granite_green_with_coal", {
	description = S("Coal Ore"),
	tiles = {"tms_granite_green.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = "default:coal_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_green_with_iron", {
	description = S("Iron Ore"),
	tiles = {"tms_granite_green.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = "default:iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_green_with_copper", {
	description = S("Copper Ore"),
	tiles = {"tms_granite_green.png^default_mineral_copper.png"},
	groups = {cracky = 2},
	drop = "default:copper_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_green_with_tin", {
	description = S("Tin Ore"),
	tiles = {"tms_granite_green.png^default_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "default:tin_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_green_with_mese", {
	description = S("Mese Ore"),
	tiles = {"tms_granite_green.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_green_with_gold", {
	description = S("Gold Ore"),
	tiles = {"tms_granite_green.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_green_with_diamond", {
	description = S("Diamond Ore"),
	tiles = {"tms_granite_green.png^default_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

-- Red Granite
minetest.register_node("too_many_stones:granite_red_with_coal", {
	description = S("Coal Ore"),
	tiles = {"tms_granite_red.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = "default:coal_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_red_with_iron", {
	description = S("Iron Ore"),
	tiles = {"tms_granite_red.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = "default:iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_red_with_copper", {
	description = S("Copper Ore"),
	tiles = {"tms_granite_red.png^default_mineral_copper.png"},
	groups = {cracky = 2},
	drop = "default:copper_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_red_with_tin", {
	description = S("Tin Ore"),
	tiles = {"tms_granite_red.png^default_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "default:tin_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_red_with_mese", {
	description = S("Mese Ore"),
	tiles = {"tms_granite_red.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_red_with_gold", {
	description = S("Gold Ore"),
	tiles = {"tms_granite_red.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_red_with_diamond", {
	description = S("Diamond Ore"),
	tiles = {"tms_granite_red.png^default_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

--Greenstone
minetest.register_node("too_many_stones:greenstone_with_coal", {
	description = S("Coal Ore"),
	tiles = {"tms_greenstone.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = "default:coal_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:greenstone_with_iron", {
	description = S("Iron Ore"),
	tiles = {"tms_greenstone.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = "default:iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:greenstone_with_copper", {
	description = S("Copper Ore"),
	tiles = {"tms_greenstone.png^default_mineral_copper.png"},
	groups = {cracky = 2},
	drop = "default:copper_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:greenstone_with_tin", {
	description = S("Tin Ore"),
	tiles = {"tms_greenstone.png^default_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "default:tin_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:greenstone_with_mese", {
	description = S("Mese Ore"),
	tiles = {"tms_greenstone.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:greenstone_with_gold", {
	description = S("Gold Ore"),
	tiles = {"tms_greenstone.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:greenstone_with_diamond", {
	description = S("Diamond Ore"),
	tiles = {"tms_greenstone.png^default_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

-- Ilvaite
minetest.register_node("too_many_stones:ilvaite_with_coal", {
	description = S("Coal Ore"),
	tiles = {"tms_ilvaite.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = "default:coal_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:ilvaite_with_iron", {
	description = S("Iron Ore"),
	tiles = {"tms_ilvaite.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = "default:iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:ilvaite_with_copper", {
	description = S("Copper Ore"),
	tiles = {"tms_ilvaite.png^default_mineral_copper.png"},
	groups = {cracky = 2},
	drop = "default:copper_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:ilvaite_with_tin", {
	description = S("Tin Ore"),
	tiles = {"tms_ilvaite.png^default_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "default:tin_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:ilvaite_with_mese", {
	description = S("Mese Ore"),
	tiles = {"tms_ilvaite.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:ilvaite_with_gold", {
	description = S("Gold Ore"),
	tiles = {"tms_ilvaite.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:ilvaite_with_diamond", {
	description = S("Diamond Ore"),
	tiles = {"tms_ilvaite.png^default_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

-- Kyanite
minetest.register_node("too_many_stones:kyanite_with_coal", {
	description = S("Coal Ore"),
	tiles = {"tms_kyanite.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = "default:coal_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:kyanite_with_iron", {
	description = S("Iron Ore"),
	tiles = {"tms_kyanite.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = "default:iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:kyanite_with_copper", {
	description = S("Copper Ore"),
	tiles = {"tms_kyanite.png^default_mineral_copper.png"},
	groups = {cracky = 2},
	drop = "default:copper_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:kyanite_with_tin", {
	description = S("Tin Ore"),
	tiles = {"tms_kyanite.png^default_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "default:tin_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:kyanite_with_mese", {
	description = S("Mese Ore"),
	tiles = {"tms_kyanite.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:kyanite_with_gold", {
	description = S("Gold Ore"),
	tiles = {"tms_kyanite.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:kyanite_with_diamond", {
	description = S("Diamond Ore"),
	tiles = {"tms_kyanite.png^default_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

-- Blue Limestone
minetest.register_node("too_many_stones:limestone_blue_with_coal", {
	description = S("Coal Ore"),
	tiles = {"tms_limestone_blue.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = "default:coal_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_blue_with_iron", {
	description = S("Iron Ore"),
	tiles = {"tms_limestone_blue.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = "default:iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_blue_with_copper", {
	description = S("Copper Ore"),
	tiles = {"tms_limestone_blue.png^default_mineral_copper.png"},
	groups = {cracky = 2},
	drop = "default:copper_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_blue_with_tin", {
	description = S("Tin Ore"),
	tiles = {"tms_limestone_blue.png^default_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "default:tin_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_blue_with_mese", {
	description = S("Mese Ore"),
	tiles = {"tms_limestone_blue.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_blue_with_gold", {
	description = S("Gold Ore"),
	tiles = {"tms_limestone_blue.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_blue_with_diamond", {
	description = S("Diamond Ore"),
	tiles = {"tms_limestone_blue.png^default_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

-- White Limestone
minetest.register_node("too_many_stones:limestone_white_with_coal", {
	description = S("Coal Ore"),
	tiles = {"tms_limestone_white.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = "default:coal_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_white_with_iron", {
	description = S("Iron Ore"),
	tiles = {"tms_limestone_white.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = "default:iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_white_with_copper", {
	description = S("Copper Ore"),
	tiles = {"tms_limestone_white.png^default_mineral_copper.png"},
	groups = {cracky = 2},
	drop = "default:copper_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_white_with_tin", {
	description = S("Tin Ore"),
	tiles = {"tms_limestone_white.png^default_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "default:tin_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_white_with_mese", {
	description = S("Mese Ore"),
	tiles = {"tms_limestone_white.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_white_with_gold", {
	description = S("Gold Ore"),
	tiles = {"tms_limestone_white.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_white_with_diamond", {
	description = S("Diamond Ore"),
	tiles = {"tms_limestone_white.png^default_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

-- Marble
minetest.register_node("too_many_stones:marble_with_coal", {
	description = S("Coal Ore"),
	tiles = {"tms_marble.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = "default:coal_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:marble_with_iron", {
	description = S("Iron Ore"),
	tiles = {"tms_marble.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = "default:iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:marble_with_copper", {
	description = S("Copper Ore"),
	tiles = {"tms_marble.png^default_mineral_copper.png"},
	groups = {cracky = 2},
	drop = "default:copper_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:marble_with_tin", {
	description = S("Tin Ore"),
	tiles = {"tms_marble.png^default_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "default:tin_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:marble_with_mese", {
	description = S("Mese Ore"),
	tiles = {"tms_marble.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:marble_with_gold", {
	description = S("Gold Ore"),
	tiles = {"tms_marble.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:marble_with_diamond", {
	description = S("Diamond Ore"),
	tiles = {"tms_marble.png^default_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

-- Rose Quartz
minetest.register_node("too_many_stones:rose_quartz_with_coal", {
	description = S("Coal Ore"),
	tiles = {"tms_rose_quartz.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = "default:coal_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:rose_quartz_with_iron", {
	description = S("Iron Ore"),
	tiles = {"tms_rose_quartz.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = "default:iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:rose_quartz_with_copper", {
	description = S("Copper Ore"),
	tiles = {"tms_rose_quartz.png^default_mineral_copper.png"},
	groups = {cracky = 2},
	drop = "default:copper_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:rose_quartz_with_tin", {
	description = S("Tin Ore"),
	tiles = {"tms_rose_quartz.png^default_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "default:tin_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:rose_quartz_with_mese", {
	description = S("Mese Ore"),
	tiles = {"tms_rose_quartz.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:rose_quartz_with_gold", {
	description = S("Gold Ore"),
	tiles = {"tms_rose_quartz.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:rose_quartz_with_diamond", {
	description = S("Diamond Ore"),
	tiles = {"tms_rose_quartz.png^default_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

-- Scoria
minetest.register_node("too_many_stones:scoria_with_coal", {
	description = S("Coal Ore"),
	tiles = {"tms_scoria.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = "default:coal_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:scoria_with_iron", {
	description = S("Iron Ore"),
	tiles = {"tms_scoria.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = "default:iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:scoria_with_copper", {
	description = S("Copper Ore"),
	tiles = {"tms_scoria.png^default_mineral_copper.png"},
	groups = {cracky = 2},
	drop = "default:copper_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:scoria_with_tin", {
	description = S("Tin Ore"),
	tiles = {"tms_scoria.png^default_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "default:tin_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:scoria_with_mese", {
	description = S("Mese Ore"),
	tiles = {"tms_scoria.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:scoria_with_gold", {
	description = S("Gold Ore"),
	tiles = {"tms_scoria.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:scoria_with_diamond", {
	description = S("Diamond Ore"),
	tiles = {"tms_scoria.png^default_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

-- Slate
minetest.register_node("too_many_stones:slate_with_coal", {
	description = S("Coal Ore"),
	tiles = {"tms_slate.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = "default:coal_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:slate_with_iron", {
	description = S("Iron Ore"),
	tiles = {"tms_slate.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = "default:iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:slate_with_copper", {
	description = S("Copper Ore"),
	tiles = {"tms_slate.png^default_mineral_copper.png"},
	groups = {cracky = 2},
	drop = "default:copper_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:slate_with_tin", {
	description = S("Tin Ore"),
	tiles = {"tms_slate.png^default_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "default:tin_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:slate_with_mese", {
	description = S("Mese Ore"),
	tiles = {"tms_slate.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:slate_with_gold", {
	description = S("Gold Ore"),
	tiles = {"tms_slate.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:slate_with_diamond", {
	description = S("Diamond Ore"),
	tiles = {"tms_slate.png^default_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

-- Sugilite
minetest.register_node("too_many_stones:sugilite_with_coal", {
	description = S("Coal Ore"),
	tiles = {"tms_sugilite.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = "default:coal_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:sugilite_with_iron", {
	description = S("Iron Ore"),
	tiles = {"tms_sugilite.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = "default:iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:sugilite_with_copper", {
	description = S("Copper Ore"),
	tiles = {"tms_sugilite.png^default_mineral_copper.png"},
	groups = {cracky = 2},
	drop = "default:copper_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:sugilite_with_tin", {
	description = S("Tin Ore"),
	tiles = {"tms_sugilite.png^default_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "default:tin_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:sugilite_with_mese", {
	description = S("Mese Ore"),
	tiles = {"tms_sugilite.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:sugilite_with_gold", {
	description = S("Gold Ore"),
	tiles = {"tms_sugilite.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:sugilite_with_diamond", {
	description = S("Diamond Ore"),
	tiles = {"tms_sugilite.png^default_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

