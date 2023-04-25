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

local y_max = Everness.settings.biomes.everness_crystal_forest_under.y_max
local y_min = Everness.settings.biomes.everness_crystal_forest_under.y_min

-- Crystal Forest Under

--[[minetest.register_biome({
    name = 'everness_crystal_forest_under',
    node_cave_liquid = { 'default:water_source', 'default:lava_source' },
    node_dungeon = 'everness:crystal_cobble',
    node_dungeon_alt = 'everness:crystal_stone_brick',
    node_dungeon_stair = 'stairs:stair_crystal_cobble',
    y_max = y_max,
    y_min = y_min,
    heat_point = 35,
    humidity_point = 50,
})]]

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:crystal_forest_under_floors',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    place_offset_y = -1,
    fill_ratio = 10,
    biomes = asuna.features.cave.crystal_forest, --{ 'everness_crystal_forest_under' },
    y_max = y_max,
    y_min = y_min,
    decoration = {
        'everness:crystal_cave_dirt_with_moss',
        'everness:crystal_moss_block'
    },
    flags = 'all_floors, force_placement'
})

minetest.register_decoration({
    name = 'everness:crystal_forest_under_ceilings',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    fill_ratio = 0.4,
    biomes = asuna.features.cave.crystal_forest, --{ 'everness_crystal_forest_under' },
    y_max = y_max,
    y_min = y_min,
    flags = 'all_ceilings',
    decoration = {
        'everness:crystal_moss_block'
    },
})

minetest.register_decoration({
    name = 'everness:crystal_forest_under_vines',
    deco_type = 'simple',
    place_on = { 'everness:crystal_moss_block' },
    sidelen = 16,
    fill_ratio = 0.05,
    biomes = asuna.features.cave.crystal_forest, --{ 'everness_crystal_forest_under' },
    param2 = 8,
    decoration = {
        'everness:twisted_vine_1',
        'everness:twisted_vine_2',
        'everness:golden_vine_1',
        'everness:golden_vine_2'
    },
    y_max = y_max,
    y_min = y_min,
    flags = 'all_ceilings',
    spawn_by = 'air',
    num_spawn_by = 8
})

minetest.register_decoration({
    name = 'everness:crystal_forest_under_crystal_purple_cluster',
    deco_type = 'schematic',
    place_on = {
        'everness:crystal_cave_dirt_with_moss',
        'everness:crystal_moss_block'
    },
    place_offset_y = -7,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = asuna.features.cave.crystal_forest, --{ 'everness_crystal_forest_under' },
    y_max = y_max - 1500 > y_min and y_max - 1500 or y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_crystal_purple_cluster.mts',
    flags = 'place_center_x, place_center_z, all_floors, force_placement',
    rotation = 'random',
    spawn_by = {
        'everness:crystal_cave_dirt_with_moss',
        'everness:crystal_moss_block'
    },
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:crystal_forest_under_crystal_orange_cluster',
    deco_type = 'schematic',
    place_on = {
        'everness:crystal_cave_dirt_with_moss',
        'everness:crystal_moss_block'
    },
    sidelen = 16,
    place_offset_y = 1,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = asuna.features.cave.crystal_forest, --{ 'everness_crystal_forest_under' },
    y_max = y_max - 1000 > y_min and y_max - 1000 or y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_crystal_orange_cluster.mts',
    flags = 'place_center_x, place_center_z, all_floors',
    rotation = 'random',
    spawn_by = {
        'everness:crystal_cave_dirt_with_moss',
        'everness:crystal_moss_block'
    },
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:crystal_forest_under_crystal_cyan',
    deco_type = 'simple',
    place_on = {
        'everness:crystal_cave_dirt_with_moss',
        'everness:crystal_moss_block'
    },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = asuna.features.cave.crystal_forest, --{ 'everness_crystal_forest_under' },
    y_max = y_max,
    y_min = y_min,
    decoration = 'everness:crystal_cyan',
    flags = 'all_floors',
    param2 = 1
})

minetest.register_decoration({
    name = 'everness:crystal_forest_under_twisted_crystal_grass',
    deco_type = 'simple',
    place_on = {
        'everness:crystal_cave_dirt_with_moss',
        'everness:crystal_moss_block'
    },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.2,
        spread = { x = 100, y = 100, z = 100 },
        seed = 801,
        octaves = 3,
        persist = 0.7
    },
    biomes = asuna.features.cave.crystal_forest, --{ 'everness_crystal_forest_under' },
    y_max = y_max - 500 > y_min and y_max - 500 or y_max,
    y_min = y_min,
    decoration = 'everness:twisted_crystal_grass',
    flags = 'all_floors',
    param2 = 40
})

minetest.register_decoration({
    name = 'everness:crystal_forest_under_crystal_cyan_ceiling',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = asuna.features.cave.crystal_forest, --{ 'everness_crystal_forest_under' },
    y_max = y_max,
    y_min = y_min,
    decoration = 'everness:crystal_cyan',
    flags = 'all_ceilings',
})
