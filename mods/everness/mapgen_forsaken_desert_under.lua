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

local y_max = Everness.settings.biomes.everness_forsaken_desert_under.y_max
local y_min = Everness.settings.biomes.everness_forsaken_desert_under.y_min

-- Forsaken Desert Under

--[[minetest.register_biome({
    name = 'everness_forsaken_desert_under',
    node_cave_liquid = { 'default:water_source', 'default:lava_source' },
    node_dungeon = 'default:cobble',
    node_dungeon_alt = 'default:mossycobble',
    node_dungeon_stair = 'stairs:stair_cobble',
    y_max = y_max,
    y_min = y_min,
    heat_point = 100,
    humidity_point = 30,
})]]

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:forsaken_desert_under_floors',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    place_offset_y = -1,
    fill_ratio = 10,
    biomes = asuna.features.cave.forsaken_desert, --{ 'everness_forsaken_desert_under' },
    y_max = y_max,
    y_min = y_min,
    flags = 'all_floors, force_placement',
    decoration = {
        'everness:forsaken_desert_sand'
    },
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_under_floors_chiseled',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_desert_sand' },
    sidelen = 16,
    place_offset_y = -1,
    fill_ratio = 0.2,
    biomes = asuna.features.cave.forsaken_desert, --{ 'everness_forsaken_desert_under' },
    y_max = y_max - 500 > y_min and y_max - 500 or y_max,
    y_min = y_min,
    decoration = {
        'everness:forsaken_desert_chiseled_stone',
        'everness:forsaken_desert_brick',
        'everness:forsaken_desert_brick_red',
        'everness:forsaken_desert_engraved_stone',
        'everness:forsaken_desert_cobble_red',
        'everness:forsaken_desert_cobble',
    },
    flags = 'all_floors, force_placement'
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_under_ceilings',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_desert_sand' },
    sidelen = 16,
    fill_ratio = 0.4,
    biomes = asuna.features.cave.forsaken_desert, --{ 'everness_forsaken_desert_under' },
    y_max = y_max,
    y_min = y_min,
    flags = 'all_ceilings',
    decoration = {
        'everness:moss_block'
    },
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_under_cactus_blue',
    deco_type = 'simple',
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
    biomes = asuna.features.cave.forsaken_desert, --{ 'everness_forsaken_desert_under' },
    y_max = y_max - 500 > y_min and y_max - 500 or y_max,
    y_min = y_min,
    decoration = 'everness:cactus_blue',
    height = 2,
    height_max = 6,
    flags = 'all_floors'
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_under_cave_barrel_cactus',
    deco_type = 'simple',
    place_on = {
        'everness:forsaken_desert_sand',
        'everness:forsaken_desert_chiseled_stone',
        'everness:forsaken_desert_brick',
        'everness:forsaken_desert_engraved_stone'
    },
    sidelen = 16,
    fill_ratio = 0.005,
    biomes = asuna.features.cave.forsaken_desert, --{ 'everness_forsaken_desert_under' },
    y_max = y_max - 250 > y_min and y_max - 250 or y_max,
    y_min = y_min,
    decoration = {
        'everness:cave_barrel_cactus',
        'everness:venus_trap'
    },
    flags = 'all_floors',
    param2_max = 3
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_under_cave_illumi_root',
    deco_type = 'simple',
    place_on = {
        'everness:forsaken_desert_sand',
        'everness:forsaken_desert_chiseled_stone',
        'everness:forsaken_desert_brick',
        'everness:forsaken_desert_engraved_stone'
    },
    sidelen = 16,
    fill_ratio = 0.005,
    biomes = asuna.features.cave.forsaken_desert, --{ 'everness_forsaken_desert_under' },
    y_max = y_max,
    y_min = y_min,
    decoration = { 'everness:illumi_root' },
    flags = 'all_floors'
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_under_vines',
    deco_type = 'simple',
    place_on = { 'everness:moss_block' },
    sidelen = 16,
    fill_ratio = 0.05,
    biomes = asuna.features.cave.forsaken_desert, --{ 'everness_forsaken_desert_under' },
    param2 = 8,
    decoration = {
        'everness:dense_vine_1',
        'everness:dense_vine_2'
    },
    y_max = y_max,
    y_min = y_min,
    flags = 'all_ceilings',
    spawn_by = 'air',
    num_spawn_by = 8
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_under_hollow_tree',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_desert_sand' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.006,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = asuna.features.cave.forsaken_desert, --{ 'everness_forsaken_desert_under' },
    y_max = y_max,
    y_min = y_min,
    decoration = 'everness:hollow_tree',
    height = 3,
    height_max = 7,
    flags = 'all_floors'
})
