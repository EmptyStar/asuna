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

local y_max = Everness.settings.biomes.everness_forsaken_tundra_beach.y_max
local y_min = Everness.settings.biomes.everness_forsaken_tundra_beach.y_min

-- Forsaken Tundra Beach

--[[minetest.register_biome({
    name = 'everness_forsaken_tundra_beach',
    node_top = 'everness:forsaken_tundra_beach_sand',
    depth_top = 1,
    node_filler = 'everness:forsaken_tundra_beach_sand',
    depth_filler = 2,
    node_riverbed = 'everness:forsaken_tundra_beach_sand',
    depth_riverbed = 2,
    node_dungeon = 'everness:forsaken_tundra_cobble',
    node_dungeon_alt = 'everness:forsaken_tundra_brick',
    node_dungeon_stair = 'stairs:stair_forsaken_tundra_cobble',
    vertical_blend = 1,
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
    biomes = { 'everness_forsaken_tundra_beach' }
})

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:forsaken_tundra_beach_sand_with_shells',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_tundra_beach_sand' },
    sidelen = 4,
    noise_params = {
        offset = -4,
        scale = 4,
        spread = { x = 50, y = 50, z = 50 },
        seed = 7013,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_forsaken_tundra_beach' },
    y_max = y_max,
    y_min = y_min,
    place_offset_y = -1,
    flags = 'force_placement',
    decoration = { 'everness:forsaken_tundra_beach_sand_with_shells' },
})
