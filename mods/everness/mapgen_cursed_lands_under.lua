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

local y_max = Everness.settings.biomes.everness_cursed_lands_under.y_max
local y_min = Everness.settings.biomes.everness_cursed_lands_under.y_min

-- Cursed Lands Under

--[[minetest.register_biome({
    name = 'everness_cursed_lands_under',
    node_cave_liquid = { 'default:water_source', 'default:lava_source' },
    node_dungeon = 'everness:cursed_brick',
    node_dungeon_alt = 'everness:cursed_brick_with_growth',
    node_dungeon_stair = 'stairs:stair_cursed_brick',
    y_max = y_max,
    y_min = y_min,
    heat_point = 45,
    humidity_point = 85,
})]]

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:cursed_lands_under_soul_sandstone_floors',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    place_offset_y = -1,
    sidelen = 16,
    fill_ratio = 10,
    biomes = asuna.features.cave.cursed_lands, --{ 'everness_cursed_lands_under' },
    y_max = y_max,
    y_min = y_min,
    flags = 'all_floors, force_placement',
    decoration = {
        'everness:soul_sandstone_veined'
    },
})

minetest.register_decoration({
    name = 'everness:cursed_lands_under_mold_stone_ceilings',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    fill_ratio = 0.4,
    biomes = asuna.features.cave.cursed_lands, --{ 'everness_cursed_lands_under' },
    y_max = y_max,
    y_min = y_min,
    flags = 'all_ceilings',
    decoration = {
        'everness:moss_block'
    },
})

minetest.register_decoration({
    name = 'everness:cursed_lands_under_skull_with_candle',
    deco_type = 'simple',
    place_on = { 'everness:soul_sandstone_veined' },
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    biomes = asuna.features.cave.cursed_lands, --{ 'everness_cursed_lands_under' },
    y_max = y_max - 1000 > y_min and y_max - 1000 or y_max,
    y_min = y_min,
    decoration = 'everness:skull_with_candle',
    flags = 'all_floors',
    param2_max = 3
})

minetest.register_decoration({
    name = 'everness:cursed_lands_under_vines',
    deco_type = 'simple',
    place_on = { 'everness:moss_block' },
    sidelen = 16,
    fill_ratio = 0.05,
    biomes = asuna.features.cave.cursed_lands, --{ 'everness_cursed_lands_under' },
    param2 = 8,
    decoration = {
        'everness:eye_vine_1',
        'everness:eye_vine_2',
        'everness:ivis_vine_1',
        'everness:ivis_vine_2'
    },
    y_max = y_max,
    y_min = y_min,
    flags = 'all_ceilings',
    spawn_by = 'air',
    num_spawn_by = 8
})

minetest.register_decoration({
    name = 'everness:cursed_lands_under_pumpkin_lantern',
    deco_type = 'simple',
    place_on = { 'everness:soul_sandstone_veined' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = asuna.features.cave.cursed_lands, --{ 'everness_cursed_lands_under' },
    y_max = y_max - 500 > y_min and y_max - 500 or y_max,
    y_min = y_min,
    decoration = { 'everness:cursed_pumpkin_lantern' },
    flags = 'all_floors',
    param2_max = 3
})

minetest.register_decoration({
    name = 'everness:cursed_lands_under_cursed_dream_tree',
    deco_type = 'schematic',
    place_on = { 'everness:soul_sandstone_veined' },
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
    biomes = asuna.features.cave.cursed_lands, --{ 'everness_cursed_lands_under' },
    y_max = y_max - 1500 > y_min and y_max - 1500 or y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_cursed_dream_tree.mts',
    flags = 'place_center_x, place_center_z, all_floors, force_placement',
    rotation = 'random',
    spawn_by = 'everness:soul_sandstone_veined',
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:cursed_lands_under_plants',
    deco_type = 'simple',
    place_on = { 'everness:soul_sandstone_veined' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = asuna.features.cave.cursed_lands, --{ 'everness_cursed_lands_under' },
    y_max = y_max,
    y_min = y_min,
    decoration = {
        'everness:egg_plant',
        'everness:ngrass_1',
        'everness:ngrass_2',
    },
    flags = 'all_floors',
})

minetest.register_decoration({
    name = 'everness:cursed_lands_under_ivis_moss',
    deco_type = 'simple',
    place_on = { 'everness:soul_sandstone_veined' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = asuna.features.cave.cursed_lands, --{ 'everness_cursed_lands_under' },
    y_max = y_max,
    y_min = y_min,
    decoration = {
        'everness:ivis_moss',
    },
    flags = 'all_floors',
    param2 = 3
})

minetest.register_decoration({
    name = 'everness:cursed_lands_under_cobweb_floors',
    deco_type = 'simple',
    place_on = { 'everness:soul_sandstone_veined' },
    sidelen = 16,
    fill_ratio = 0.02,
    biomes = asuna.features.cave.cursed_lands, --{ 'everness_cursed_lands_under' },
    y_max = y_max,
    y_min = y_min,
    decoration = { 'everness:cobweb' },
    flags = 'all_floors'
})
