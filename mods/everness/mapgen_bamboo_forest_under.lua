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

local y_max = Everness.settings.biomes.everness_bamboo_forest_under.y_max
local y_min = Everness.settings.biomes.everness_bamboo_forest_under.y_min

-- Bamboo Forest Under

--[[minetest.register_biome({
    name = 'everness_bamboo_forest_under',
    node_cave_liquid = { 'default:water_source', 'default:lava_source' },
    node_dungeon = 'everness:bamboo_wood',
    node_dungeon_alt = 'everness:bamboo_mosaic_wood',
    node_dungeon_stair = 'stairs:stair_bamboo_wood',
    y_max = y_max,
    y_min = y_min,
    heat_point = 80,
    humidity_point = 60,
})]]

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:bamboo_forest_under_floors',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    fill_ratio = 10,
    biomes = asuna.features.cave.bamboo, --{ 'everness_bamboo_forest_under' },
    y_max = y_max,
    y_min = y_min,
    place_offset_y = -1,
    flags = 'all_floors,force_placement',
    decoration = {
        'everness:moss_block',
        'default:clay'
    },
})

minetest.register_decoration({
    name = 'everness:bamboo_forest_under_ceiling',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    fill_ratio = 0.4,
    biomes = asuna.features.cave.bamboo, --{ 'everness_bamboo_forest_under' },
    y_max = y_max,
    y_min = y_min,
    flags = 'all_ceilings',
    decoration = { 'everness:moss_block' },
})

minetest.register_decoration({
    name = 'everness:bamboo_forest_under_forsythia_bush',
    deco_type = 'simple',
    place_on = { 'everness:moss_block' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = asuna.features.cave.bamboo, --{ 'everness_bamboo_forest_under' },
    y_max = y_max - 500 > y_min and y_max - 500 or y_max,
    y_min = y_min,
    flags = 'all_floors',
    decoration = { 'everness:forsythia_bush' },
})

minetest.register_decoration({
    name = 'everness:bamboo_forest_under_vines',
    deco_type = 'simple',
    place_on = { 'everness:moss_block' },
    sidelen = 16,
    fill_ratio = 0.05,
    decoration = {
        'everness:vine_cave',
        'everness:vine_cave_with_mese_leaves'
    },
    biomes = asuna.features.cave.bamboo, --{ 'everness_bamboo_forest_under' },
    y_max = y_max,
    y_min = y_min,
    flags = 'all_ceilings',
    spawn_by = 'air',
    num_spawn_by = 8
})

minetest.register_decoration({
    name = 'everness:bamboo_forest_under_plants',
    deco_type = 'simple',
    place_on = { 'everness:moss_block' },
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
    biomes = asuna.features.cave.bamboo, --{ 'everness_bamboo_forest_under' },
    y_max = y_max,
    y_min = y_min,
    decoration = { 'everness:cave_flower' },
    flags = 'all_floors'
})

minetest.register_decoration({
    name = 'everness:bamboo_forest_under_plants_2',
    deco_type = 'simple',
    place_on = { 'everness:moss_block' },
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
    biomes = asuna.features.cave.bamboo, --{ 'everness_bamboo_forest_under' },
    y_max = y_max - 1000 > y_min and y_max - 1000 or y_max,
    y_min = y_min,
    decoration = { 'everness:cave_flower_with_particles' },
    flags = 'all_floors'
})

minetest.register_decoration({
    name = 'everness:bamboo_forest_under_blue_vine_lantern',
    deco_type = 'simple',
    place_on = {
        'everness:moss_block',
        'default:clay'
    },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = asuna.features.cave.bamboo, --{ 'everness_bamboo_forest_under' },
    y_max = y_max - 1500 > y_min and y_max - 1500 or y_max,
    y_min = y_min,
    decoration = { 'everness:blue_vine_lantern' },
    flags = 'all_floors',
})
