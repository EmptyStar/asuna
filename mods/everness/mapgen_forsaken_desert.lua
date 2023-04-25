--[[
    Everness. Never ending discovery in Everness mapgen.
    Copyright (C) 2023 SaKeL <juraj.vajda@gmail.com>

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to juraj.vajda@gmail.com
--]]

--
-- Register biomes
--

local y_max = Everness.settings.biomes.everness_forsaken_desert.y_max
local y_min = Everness.settings.biomes.everness_forsaken_desert.y_min

-- Forsaken Desert

--[[minetest.register_biome({
    name = 'everness_forsaken_desert',
    node_top = 'everness:forsaken_desert_sand',
    depth_top = 1,
    node_stone = 'everness:forsaken_desert_stone',
    node_filler = 'everness:forsaken_desert_sand',
    depth_filler = 1,
    node_riverbed = 'everness:forsaken_desert_sand',
    depth_riverbed = 2,
    node_dungeon = 'everness:forsaken_desert_brick',
    node_dungeon_alt = 'everness:forsaken_desert_brick_red',
    node_dungeon_stair = 'stairs:stair_forsaken_desert_brick',
    y_max = y_max,
    y_min = y_min,
    heat_point = 100,
    humidity_point = 30,
})]]

--
-- Register ores
--

-- Stratum ores.
-- These obviously first.

minetest.register_ore({
    ore_type = 'stratum',
    ore = 'everness:forsaken_desert_cobble',
    wherein = { 'everness:forsaken_desert_stone' },
    clust_scarcity = 1,
    y_max = (y_max - y_max) + 46,
    y_min = (y_max - y_max) + 4,
    noise_params = {
        offset = 28,
        scale = 16,
        spread = { x = 128, y = 128, z = 128 },
        seed = 90122,
        octaves = 1,
    },
    stratum_thickness = 4,
    biomes = { 'everness_forsaken_desert' },
})

minetest.register_ore({
    ore_type = 'stratum',
    ore = 'everness:forsaken_desert_cobble',
    wherein = { 'everness:forsaken_desert_stone' },
    clust_scarcity = 1,
    y_max = (y_max - y_max) + 42,
    y_min = (y_max - y_max) + 6,
    noise_params = {
        offset = 24,
        scale = 16,
        spread = { x = 128, y = 128, z = 128 },
        seed = 90122,
        octaves = 1,
    },
    stratum_thickness = 2,
    biomes = { 'everness_forsaken_desert' },
})

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:forsaken_desert_sand_plants_1',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_desert_sand' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_forsaken_desert' },
    y_max = y_max,
    y_min = y_min,
    decoration = { 'everness:forsaken_desert_plant_1' },
    param2 = 11,
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_sand_plants_2',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_desert_sand' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_forsaken_desert' },
    y_max = y_max,
    y_min = y_min,
    decoration = {
        'everness:forsaken_desert_plant_2',
        'everness:forsaken_desert_plant_3'
    },
    param2 = 8,
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_termite_nest',
    deco_type = 'schematic',
    place_on = { 'everness:forsaken_desert_sand' },
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_forsaken_desert' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_termite_nest.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_hollow_tree',
    deco_type = 'schematic',
    place_on = { 'everness:forsaken_desert_sand' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_forsaken_desert' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_hollow_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_hollow_tree_large',
    deco_type = 'schematic',
    place_on = { 'everness:forsaken_desert_sand' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.001,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_forsaken_desert' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_hollow_tree_large.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})
