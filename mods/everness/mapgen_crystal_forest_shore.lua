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

local y_max = Everness.settings.biomes.everness_crystal_forest_shore.y_max
local y_min = Everness.settings.biomes.everness_crystal_forest_shore.y_min

-- Crystal Forest Shore

--[[minetest.register_biome({
    name = 'everness_crystal_forest_shore',
    node_top = 'everness:crystal_sand',
    depth_top = 1,
    node_filler = 'everness:crystal_sand',
    depth_filler = 3,
    node_riverbed = 'everness:crystal_sand',
    depth_riverbed = 2,
    node_stone = 'everness:crystal_stone',
    node_cave_liquid = 'default:water_source',
    node_dungeon = 'everness:crystal_cobble',
    node_dungeon_alt = 'everness:crystal_stone_brick',
    node_dungeon_stair = 'stairs:stair_crystal_cobble',
    y_max = y_max,
    y_min = y_min,
    heat_point = 35,
    humidity_point = 50,
})]]

--
-- Register ores
--

-- Blob ore.
-- These before scatter ores to avoid other ores in blobs.

-- Crystal sand

minetest.register_ore({
    ore_type = 'blob',
    ore = 'everness:crystal_sand',
    wherein = { 'everness:crystal_stone' },
    clust_scarcity = 16 * 16 * 16,
    clust_size = 5,
    y_max = y_max,
    y_min = y_min,
    noise_threshold = 0.0,
    noise_params = {
        offset = 0.5,
        scale = 0.2,
        spread = { x = 5, y = 5, z = 5 },
        seed = 2316,
        octaves = 1,
        persist = 0.0
    },
    biomes = { 'everness_crystal_forest_shore' }
})

-- Dirt

minetest.register_ore({
    ore_type = 'blob',
    ore = 'everness:crystal_dirt',
    wherein = { 'everness:crystal_stone' },
    clust_scarcity = 16 * 16 * 16,
    clust_size = 5,
    y_max = y_max,
    y_min = y_min,
    noise_threshold = 0.0,
    noise_params = {
        offset = 0.5,
        scale = 0.2,
        spread = { x = 5, y = 5, z = 5 },
        seed = 17676,
        octaves = 1,
        persist = 0.0
    },
    biomes = { 'everness_crystal_forest_shore' }
})

-- Scatter ores

-- Coal

minetest.register_ore({
    ore_type = 'scatter',
    ore = 'everness:crystal_stone_with_coal',
    wherein = 'everness:crystal_stone',
    clust_scarcity = 8 * 8 * 8,
    clust_num_ores = 9,
    clust_size = 3,
    y_max = y_max,
    y_min = y_min,
    biomes = { 'everness_crystal_forest_shore' }
})

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:crystal_forest_shore_crystal_waterlily',
    deco_type = 'simple',
    place_on = { 'everness:crystal_sand' },
    sidelen = 16,
    noise_params = {
        offset = -0.12,
        scale = 0.3,
        spread = { x = 200, y = 200, z = 200 },
        seed = 33,
        octaves = 3,
        persist = 0.7
    },
    biomes = { 'everness_crystal_forest_shore' },
    y_max = 0,
    y_min = 0,
    decoration = 'everness:crystal_waterlily',
    param2 = 0,
    param2_max = 3,
    place_offset_y = 1,
})
