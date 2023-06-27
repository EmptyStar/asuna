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

local y_max = Everness.settings.biomes.everness_coral_forest_dunes.y_max
local y_min = Everness.settings.biomes.everness_coral_forest_dunes.y_min

-- Coral Forest Dunes

--[[minetest.register_biome({
    name = 'everness_coral_forest_dunes',
    node_top = 'everness:coral_sand',
    depth_top = 1,
    node_filler = 'everness:coral_sand',
    depth_filler = 3,
    node_riverbed = 'everness:coral_sand',
    depth_riverbed = 2,
    node_stone = 'everness:coral_desert_stone',
    node_dungeon = 'everness:coral_sandstone',
    node_dungeon_alt = 'everness:coral_sandstone_brick',
    node_dungeon_stair = 'stairs:stair_coral_sandstone',
    vertical_blend = 1,
    y_max = y_max,
    y_min = y_min,
    heat_point = 60,
    humidity_point = 50,
})]]

--
-- Register ores
--

-- Blob ore.
-- These before scatter ores to avoid other ores in blobs.

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
    biomes = { 'everness_coral_forest_dunes' }
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
    biomes = { 'everness_coral_forest_dunes' }
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
    biomes = { 'everness_coral_forest_dunes' }
})

--
-- Register decorations
--

-- Coral Forest Dunes

minetest.register_decoration({
    name = 'everness:coral_forest_dunes_coral_volcano',
    deco_type = 'schematic',
    place_on = { 'everness:coral_sand' },
    place_offset_y = -1,
    sidelen = 16,
    noise_params = {
        offset = -0.012,
        scale = 0.024,
        spread = { x = 100, y = 100, z = 100 },
        seed = 230,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_coral_forest_dunes' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('x_clay')
        and minetest.get_modpath('everness') .. '/schematics/everness_coral_volcano_x_clay.mts'
        or minetest.get_modpath('everness') .. '/schematics/everness_coral_volcano.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
    spawn_by = 'everness:coral_sand',
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:coral_forest_dunes_coral_bush',
    deco_type = 'simple',
    place_on = { 'everness:dirt_with_coral_grass', 'everness:coral_sand', 'everness:coral_white_sand' },
    sidelen = 16,
    noise_params = {
        offset = -0.02,
        scale = 0.04,
        spread = { x = 200, y = 200, z = 200 },
        seed = 436,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_coral_forest_dunes' },
    y_max = y_max,
    y_min = y_min,
    decoration = 'everness:coral_bush'
})

minetest.register_decoration({
    name = 'everness:coral_forest_dunes_coral_shrub',
    deco_type = 'simple',
    place_on = { 'everness:dirt_with_coral_grass', 'everness:coral_sand', 'everness:coral_white_sand' },
    sidelen = 16,
    noise_params = {
        offset = -0.02,
        scale = 0.04,
        spread = { x = 200, y = 200, z = 200 },
        seed = 1220999,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_coral_forest_dunes' },
    y_max = y_max,
    y_min = y_min,
    decoration = 'everness:coral_shrub'
})
