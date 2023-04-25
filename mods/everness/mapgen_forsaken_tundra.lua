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

local y_max = Everness.settings.biomes.everness_forsaken_tundra.y_max
local y_min = Everness.settings.biomes.everness_forsaken_tundra.y_min

-- Forsaken Tundra

--[[minetest.register_biome({
    name = 'everness_forsaken_tundra',
    node_top = 'everness:forsaken_tundra_dirt',
    depth_top = 1,
    node_stone = 'everness:forsaken_tundra_stone',
    node_filler = 'everness:forsaken_tundra_dirt',
    depth_filler = 1,
    node_riverbed = 'everness:forsaken_tundra_beach_sand',
    depth_riverbed = 2,
    node_dungeon = 'everness:forsaken_tundra_cobble',
    node_dungeon_alt = 'everness:forsaken_tundra_brick',
    node_dungeon_stair = 'stairs:stair_forsaken_tundra_cobble',
    y_max = y_max,
    y_min = y_min,
    heat_point = 10,
    humidity_point = 10,
})]]

--
-- Register ores
--

-- Blob ore.
-- These before scatter ores to avoid other ores in blobs.

minetest.register_ore({
    ore_type = 'blob',
    ore = 'everness:sulfur_stone',
    wherein = { 'default:stone', 'everness:forsaken_tundra_stone' },
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
    biomes = {'everness_forsaken_tundra' }
})

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:forsaken_tundra_volcanic_sulfur',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_tundra_dirt' },
    sidelen = 4,
    noise_params = {
        offset = -0.7,
        scale = 4.0,
        spread = { x = 16, y = 16, z = 16 },
        seed = 513337,
        octaves = 1,
        persist = 0.0,
        flags = 'absvalue, eased'
    },
    biomes = { 'everness_forsaken_tundra' },
    y_max = y_max,
    y_min = y_min,
    decoration = { 'everness:volcanic_sulfur' },
    place_offset_y = -1,
    flags = 'force_placement',
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_sulfur_stone',
    deco_type = 'simple',
    place_on = {
        'everness:forsaken_tundra_dirt',
        'everness:volcanic_sulfur'
    },
    sidelen = 4,
    noise_params = {
        offset = -4,
        scale = 4,
        spread = { x = 50, y = 50, z = 50 },
        seed = 7013,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_forsaken_tundra' },
    y_max = y_max,
    y_min = y_min,
    place_offset_y = -1,
    flags = 'force_placement',
    decoration = { 'everness:sulfur_stone' },
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_dirt_with_grass',
    deco_type = 'simple',
    place_on = {
        'everness:forsaken_tundra_dirt',
        'everness:volcanic_sulfur'
    },
    sidelen = 4,
    noise_params = {
        offset = -0.8,
        scale = 2.0,
        spread = { x = 100, y = 100, z = 100 },
        seed = 53995,
        octaves = 3,
        persist = 1.0
    },
    biomes = { 'everness_forsaken_tundra' },
    y_max = y_max,
    y_min = y_min,
    decoration = 'everness:forsaken_tundra_dirt_with_grass',
    place_offset_y = -1,
    flags = 'force_placement',
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_volcanic_sulfur_on_top_of_sulfur_stone',
    deco_type = 'simple',
    place_on = { 'everness:sulfur_stone' },
    sidelen = 4,
    noise_params = {
        offset = -4,
        scale = 4,
        spread = { x = 50, y = 50, z = 50 },
        seed = 7013,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_forsaken_tundra' },
    y_max = y_max,
    y_min = y_min,
    decoration = { 'everness:volcanic_sulfur' },
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_rocks',
    deco_type = 'schematic',
    place_on = { 'everness:forsaken_tundra_dirt', 'everness:forsaken_tundra_dirt_with_grass' },
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_forsaken_tundra' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_forsaken_tundra_rocks.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_sulfur_volcano',
    deco_type = 'schematic',
    place_on = { 'everness:forsaken_tundra_dirt', 'everness:volcanic_sulfur' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_forsaken_tundra' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_sulfur_volcano.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
    spawn_by = { 'everness:forsaken_tundra_dirt', 'everness:volcanic_sulfur' },
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_bloodpore_plant',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_tundra_dirt_with_grass' },
    sidelen = 16,
    noise_params = {
        offset = -0.03,
        scale = 0.09,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_forsaken_tundra' },
    y_max = y_max,
    y_min = y_min,
    decoration = 'everness:bloodspore_plant',
    param2 = 8,
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_bloodspore_plant_on_dirt',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_tundra_dirt' },
    spawn_by = 'everness:forsaken_tundra_dirt_with_grass',
    num_spawn_by = 1,
    sidelen = 16,
    noise_params = {
        offset = -0.03,
        scale = 0.09,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_forsaken_tundra' },
    y_max = y_max,
    y_min = y_min,
    decoration = 'everness:bloodspore_plant',
    param2 = 8,
})
