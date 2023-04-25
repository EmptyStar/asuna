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

local y_max = Everness.settings.biomes.everness_coral_forest_ocean.y_max
local y_min = Everness.settings.biomes.everness_coral_forest_ocean.y_min

-- Coral Forest Ocean

--[[minetest.register_biome({
    name = 'everness_coral_forest_ocean',
    node_top = 'everness:coral_white_sand',
    depth_top = 1,
    node_filler = 'everness:coral_white_sand',
    depth_filler = 3,
    node_riverbed = 'everness:coral_white_sand',
    depth_riverbed = 2,
    node_stone = 'everness:coral_desert_stone',
    node_cave_liquid = 'default:water_source',
    node_dungeon = 'everness:coral_desert_cobble',
    node_dungeon_alt = 'everness:coral_desert_mossy_cobble',
    node_dungeon_stair = 'stairs:stair_coral_desert_cobble',
    y_max = y_max,
    y_min = y_min,
    heat_point = 60,
    humidity_point = 50,
})]]

-- Blob ore.
-- These before scatter ores to avoid other ores in blobs.

-- Clay

minetest.register_ore({
    ore_type = 'blob',
    ore = 'default:clay',
    wherein = { 'everness:coral_white_sand' },
    clust_scarcity = 16 * 16 * 16,
    clust_size = 5,
    y_max = y_max,
    y_min = y_min,
    noise_threshold = 0.0,
    noise_params = {
        offset = 0.5,
        scale = 0.2,
        spread = { x = 5, y = 5, z = 5 },
        seed = -316,
        octaves = 1,
        persist = 0.0
    },
    biomes = asuna.features.ocean.coral_forest, --{ 'everness_coral_forest_ocean' }
})

-- Coral sand

minetest.register_ore({
    ore_type = 'blob',
    ore = 'everness:coral_sand',
    wherein = { 'everness:coral_desert_stone' },
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
    biomes = asuna.features.ocean.coral_forest, --{ 'everness_coral_forest_ocean' }
})

-- Dirt

minetest.register_ore({
    ore_type = 'blob',
    ore = 'everness:coral_dirt',
    wherein = { 'everness:coral_desert_stone' },
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
    biomes = asuna.features.ocean.coral_forest, --{ 'everness_coral_forest_ocean' }
})

-- Scatter ores

-- Coal

minetest.register_ore({
    ore_type = 'scatter',
    ore = 'everness:coral_desert_stone_with_coal',
    wherein = 'everness:coral_desert_stone',
    clust_scarcity = 8 * 8 * 8,
    clust_num_ores = 9,
    clust_size = 3,
    y_max = y_max,
    y_min = y_min,
    biomes = asuna.features.ocean.coral_forest, --{ 'everness_coral_forest_ocean' }
})

--
-- Register decorations
--

-- Coral Forest Under

-- Coral reef

minetest.register_decoration({
    name = 'everness:coral_forest_ocean_corals',
    deco_type = 'simple',
    place_on = { 'everness:coral_white_sand' },
    place_offset_y = -1,
    sidelen = 4,
    noise_params = {
        offset = -4,
        scale = 4,
        spread = { x = 50, y = 50, z = 50 },
        seed = 7013,
        octaves = 3,
        persist = 0.7,
    },
    biomes = asuna.features.ocean.coral_forest, --{ 'everness_coral_forest_ocean' }
    y_max = y_max - 5 > y_min and y_max - 5 or y_max,
    y_min = y_max - 11 > y_min and y_max - 11 or y_min,
    flags = 'force_placement',
    decoration = {
        'everness:coral_corals',
        'everness:coral_jellyfish',
        'everness:coral_skeleton'
    },
})
