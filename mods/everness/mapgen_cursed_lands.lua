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

local y_max = Everness.settings.biomes.everness_cursed_lands.y_max
local y_min = Everness.settings.biomes.everness_cursed_lands.y_min

-- Cursed Lands

--[[minetest.register_biome({
    name = 'everness_cursed_lands',
    node_top = 'everness:dirt_with_cursed_grass',
    depth_top = 1,
    node_filler = 'everness:cursed_dirt',
    depth_filler = 1,
    node_riverbed = 'everness:cursed_dirt',
    depth_riverbed = 2,
    node_stone = 'everness:cursed_stone_carved',
    node_dungeon = 'everness:cursed_brick',
    node_dungeon_alt = 'everness:cursed_brick_with_growth',
    node_dungeon_stair = 'stairs:stair_cursed_brick',
    y_max = y_max,
    y_min = y_min,
    heat_point = 45,
    humidity_point = 85,
})]]

--
-- Register ores
--

-- Stratum ores.
-- These obviously first.

minetest.register_ore({
    ore_type = 'stratum',
    ore = 'everness:cursed_stone',
    wherein = { 'everness:cursed_stone_carved' },
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
    biomes = { 'everness_cursed_lands' },
})

minetest.register_ore({
    ore_type = 'stratum',
    ore = 'everness:cursed_stone',
    wherein = { 'everness:cursed_stone_carved' },
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
    biomes = { 'everness_cursed_lands' },
})

-- Blob ore.
-- These before scatter ores to avoid other ores in blobs.

-- Sand

minetest.register_ore({
    ore_type = 'blob',
    ore = 'everness:cursed_sand',
    wherein = { 'everness:cursed_stone_carved' },
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
    biomes = { 'everness_cursed_lands' }
})

-- Dirt

minetest.register_ore({
    ore_type = 'blob',
    ore = 'everness:cursed_dirt',
    wherein = { 'everness:cursed_stone_carved' },
    clust_scarcity = 16 * 16 * 16,
    clust_size = 5,
    y_max = y_max,
    y_min = y_min,
    noise_threshold = 0.0,
    noise_params = {
        offset = 0.5,
        scale = 0.2,
        spread = { x = 5, y = 5, z = 5 },
        seed = 766,
        octaves = 1,
        persist = 0.0
    },
    biomes = { 'everness_cursed_lands' }
})

-- Mud

minetest.register_ore({
    ore_type = 'blob',
    ore = 'everness:cursed_mud',
    wherein = { 'everness:cursed_stone_carved' },
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
    biomes = { 'everness_cursed_lands' }
})

-- Scatter ores

-- Coal

minetest.register_ore({
    ore_type = 'scatter',
    ore = 'everness:cursed_stone_carved_with_coal',
    wherein = 'everness:cursed_stone_carved',
    clust_scarcity = 8 * 8 * 8,
    clust_num_ores = 9,
    clust_size = 3,
    y_max = y_max,
    y_min = y_min,
    biomes = { 'everness_cursed_lands' }
})

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:cursed_lands_cemetery',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_cursed_grass' },
    sidelen = 8,
    noise_params = {
        offset = -0.0003,
        scale = 0.0009,
        spread = { x = 200, y = 200, z = 200 },
        seed = 230,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_cursed_lands' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_cemetery.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:cursed_lands_ruins_1',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_cursed_grass' },
    sidelen = 8,
    noise_params = {
        offset = -0.0003,
        scale = 0.0009,
        spread = { x = 200, y = 200, z = 200 },
        seed = 230,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_cursed_lands' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_ruins_1.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

local function register_red_castor_decoration(offset, scale, length)
    minetest.register_decoration({
        name = 'everness:cursed_lands_red_castor_' .. length,
        deco_type = 'simple',
        place_on = { 'everness:dirt_with_cursed_grass' },
        sidelen = 16,
        noise_params = {
            offset = offset,
            scale = scale,
            spread = { x = 200, y = 200, z = 200 },
            seed = 329,
            octaves = 3,
            persist = 0.6
        },
        biomes = { 'everness_cursed_lands' },
        y_max = y_max,
        y_min = y_min,
        decoration = 'everness:red_castor_' .. length,
    })
end

-- Red Castor Grasses

register_red_castor_decoration(-0.03, 0.09, 4)
register_red_castor_decoration(-0.015, 0.075, 3)
register_red_castor_decoration(0, 0.06, 2)
register_red_castor_decoration(0.015, 0.045, 1)

minetest.register_decoration({
    name = 'everness:cursed_lands_cursed_mud',
    deco_type = 'simple',
    place_on = { 'everness:dirt_with_cursed_grass', 'everness:cursed_dirt', 'everness:cursed_sand' },
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
    biomes = { 'everness_cursed_lands' },
    y_max = y_max,
    y_min = y_min,
    flags = 'force_placement',
    decoration = { 'everness:cursed_mud' },
})

minetest.register_decoration({
    name = 'everness:cursed_lands_dry_tree',
    deco_type = 'schematic',
    place_on = {
        'everness:dirt_with_cursed_grass',
        'everness:cursed_dirt',
        'everness:cursed_sand',
        'everness:cursed_stone'
    },
    place_offset_y = 0,
    sidelen = 16,
    noise_params = {
        offset = 0.0015,
        scale = 0.0021,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_cursed_lands' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_dry_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:cursed_lands_cursed_bush',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_cursed_grass' },
    sidelen = 16,
    place_offset_y = 1,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_cursed_lands' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_cursed_bush.mts',
    flags = 'place_center_x, place_center_z',
})
