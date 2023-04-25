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

local y_max = Everness.settings.biomes.everness_coral_forest_under.y_max
local y_min = Everness.settings.biomes.everness_coral_forest_under.y_min

-- Coral Forest Under

--[[minetest.register_biome({
    name = 'everness_coral_forest_under',
    node_cave_liquid = { 'default:water_source', 'default:lava_source' },
    node_dungeon = 'everness:coral_desert_cobble',
    node_dungeon_alt = 'everness:coral_desert_mossy_cobble',
    node_dungeon_stair = 'stairs:stair_coral_desert_cobble',
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

-- Coral Desert Stone

minetest.register_ore({
    ore_type = 'blob',
    ore = 'everness:coral_desert_stone',
    wherein = { 'default:stone' },
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
    biomes = asuna.features.cave.coral_forest, --{ 'everness_coral_forest_under' },
})

--
-- Register decorations
--

-- Coral Forest Under

minetest.register_decoration({
    name = 'everness:coral_forest_under_desert_stone_with_moss_floors',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    place_offset_y = -1,
    sidelen = 16,
    fill_ratio = 10,
    biomes = asuna.features.cave.coral_forest, --{ 'everness_coral_forest_under' },
    y_max = y_max,
    y_min = y_min,
    flags = 'all_floors, force_placement',
    decoration = {
        'everness:coral_desert_stone_with_moss'
    },
})

minetest.register_decoration({
    name = 'everness:coral_forest_under_mold_stone_ceilings',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    fill_ratio = 0.4,
    biomes = asuna.features.cave.coral_forest, --{ 'everness_coral_forest_under' },
    y_max = y_max,
    y_min = y_min,
    flags = 'all_ceilings',
    decoration = {
        'everness:moss_block'
    },
})

minetest.register_decoration({
    name = 'everness:coral_forest_under_coral_tree_bioluminescent',
    deco_type = 'schematic',
    place_on = { 'everness:coral_desert_stone_with_moss' },
    place_offset_y = 1,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = asuna.features.cave.coral_forest, --{ 'everness_coral_forest_under' },
    y_max = y_max - 1500 > y_min and y_max - 1500 or y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_coral_tree_bioluminescent.mts',
    flags = 'place_center_x, place_center_z, all_floors, force_placement',
    rotation = 'random',
    spawn_by = 'everness:coral_desert_stone_with_moss',
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:coral_forest_under_coral_plant_bioluminescent',
    deco_type = 'simple',
    place_on = { 'everness:coral_desert_stone_with_moss' },
    param2 = 8,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = asuna.features.cave.coral_forest, --{ 'everness_coral_forest_under' },
    y_max = y_max,
    y_min = y_min,
    decoration = 'everness:coral_plant_bioluminescent',
    flags = 'all_floors'
})

minetest.register_decoration({
    name = 'everness:coral_forest_under_lumecorn',
    deco_type = 'simple',
    place_on = { 'everness:coral_desert_stone_with_moss' },
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    biomes = asuna.features.cave.coral_forest, --{ 'everness_coral_forest_under' },
    y_max = y_max - 1000 > y_min and y_max - 1000 or y_max,
    y_min = y_min,
    decoration = 'everness:lumecorn',
    flags = 'all_floors',
})

minetest.register_decoration({
    name = 'everness:coral_forest_under_vines',
    deco_type = 'simple',
    place_on = { 'everness:moss_block' },
    sidelen = 16,
    fill_ratio = 0.05,
    biomes = asuna.features.cave.coral_forest, --{ 'everness_coral_forest_under' },
    param2 = 8,
    decoration = {
        'everness:lumabus_vine_1',
        'everness:lumabus_vine_2',
        'everness:flowered_vine_1',
        'everness:flowered_vine_2'
    },
    y_max = y_max,
    y_min = y_min,
    flags = 'all_ceilings',
    spawn_by = 'air',
    num_spawn_by = 8
})

minetest.register_decoration({
    name = 'everness:coral_forest_under_plants',
    deco_type = 'simple',
    place_on = { 'everness:coral_desert_stone_with_moss' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = asuna.features.cave.coral_forest, --{ 'everness_coral_forest_under' },
    y_max = y_max - 500 > y_min and y_max - 500 or y_max,
    y_min = y_min,
    decoration = {
        'everness:coral_grass_orange',
        'everness:globulagus',
        'everness:coral_grass_tall',
    },
    flags = 'all_floors',
})
