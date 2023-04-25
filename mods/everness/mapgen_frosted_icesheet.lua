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

local y_max = Everness.settings.biomes.everness_frosted_icesheet.y_max
local y_min = Everness.settings.biomes.everness_frosted_icesheet.y_min

-- Frosted Icesheet

--[[minetest.register_biome({
    name = 'everness_frosted_icesheet',
    node_dust = 'everness:frosted_snowblock',
    node_top = 'everness:frosted_snowblock',
    depth_top = 1,
    node_filler = 'everness:frosted_snowblock',
    depth_filler = 3,
    node_stone = 'everness:frosted_cave_ice',
    node_water_top = 'everness:frosted_ice',
    depth_water_top = 2,
    node_river_water = 'everness:frosted_ice',
    node_riverbed = 'default:gravel',
    depth_riverbed = 2,
    node_dungeon = 'everness:icecobble',
    node_dungeon_alt = 'everness:snowcobble',
    node_dungeon_stair = 'stairs:stair_ice',
    y_max = y_max,
    y_min = y_min,
    heat_point = 0,
    humidity_point = 93,
})]]

--
-- Register decorations
--

-- Frosted Icesheet

minetest.register_decoration({
    name = 'everness:frosted_icesheet_stalagmite',
    deco_type = 'schematic',
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_frosted_lands_stalagmite.mts',
    place_on = { 'everness:frosted_snowblock' },
    place_offset_y = 1,
    sidelen = 16,
    noise_params = {
        offset = 0.0008,
        scale = 0.0007,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_frosted_icesheet' },
    y_max = y_max,
    y_min = (y_max - y_max) + 4,
    flags = 'place_center_x, place_center_z',
    spawn_by = 'everness:frosted_snowblock',
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:frosted_icesheet_volcanic_rock',
    deco_type = 'schematic',
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_frosted_lands_volcanic_rock.mts',
    place_on = { 'everness:frosted_snowblock' },
    sidelen = 16,
    noise_params = {
        offset = 0.0008,
        scale = 0.0007,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_frosted_icesheet' },
    y_max = y_max,
    y_min = (y_max - y_max) + 2,
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
    spawn_by = 'everness:frosted_snowblock',
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:frosted_icesheet_fossils',
    deco_type = 'schematic',
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_frosted_lands_fossils.mts',
    place_on = { 'everness:frosted_snowblock' },
    sidelen = 16,
    place_offset_y = 1,
    noise_params = {
        offset = 0.0008,
        scale = 0.0007,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_frosted_icesheet' },
    y_max = y_max,
    y_min = (y_max - y_max) + 1,
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
    spawn_by = 'everness:frosted_snowblock',
    num_spawn_by = 8,
})
