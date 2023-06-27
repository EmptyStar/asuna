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

local y_max = Everness.settings.biomes.everness_crystal_forest.y_max
local y_min = Everness.settings.biomes.everness_crystal_forest.y_min

-- Crystal Forest

--[[minetest.register_biome({
    name = 'everness_crystal_forest',
    node_top = 'everness:dirt_with_crystal_grass',
    depth_top = 1,
    node_filler = 'everness:crystal_dirt',
    depth_filler = 1,
    node_riverbed = 'everness:crystal_dirt',
    depth_riverbed = 2,
    node_stone = 'everness:crystal_stone',
    node_dungeon = 'everness:crystal_cobble',
    node_dungeon_alt = 'everness:crystal_stone_brick',
    node_dungeon_stair = 'stairs:stair_crystal_cobble',
    y_max = y_max,
    y_min = y_min,
    heat_point = 35,
    humidity_point = 50,
})]]

--
-- Register ores
--

-- Blob ore.
-- These before scatter ores to avoid other ores in blobs.

-- Crystal sand

minetest.register_ore({
    ore_type = 'blob',
    ore = 'everness:crystal_sand',
    wherein = { 'everness:crystal_stone' },
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
    biomes = { 'everness_crystal_forest' }
})

-- Dirt

minetest.register_ore({
    ore_type = 'blob',
    ore = 'everness:crystal_dirt',
    wherein = { 'everness:crystal_stone' },
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
    biomes = { 'everness_crystal_forest' }
})

-- Scatter ores

-- Coal

minetest.register_ore({
    ore_type = 'scatter',
    ore = 'everness:crystal_stone_with_coal',
    wherein = 'everness:crystal_stone',
    clust_scarcity = 8 * 8 * 8,
    clust_num_ores = 9,
    clust_size = 3,
    y_max = y_max,
    y_min = y_min,
    biomes = { 'everness_crystal_forest' }
})

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:crystal_forest_crystal_mushrooms',
    deco_type = 'simple',
    place_on = { 'everness:dirt_with_crystal_grass' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.006,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_crystal_forest' },
    y_max = y_max,
    y_min = y_min,
    decoration = 'everness:crystal_mushrooms',
    param2 = 40
})

minetest.register_decoration({
    name = 'everness:crystal_forest_crystal_tree',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_crystal_grass' },
    place_offset_y = 0,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_crystal_forest' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_crystal_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:crystal_forest_crystal_tree_large',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_crystal_grass' },
    place_offset_y = 0,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.001,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_crystal_forest' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_crystal_tree_large.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:crystal_forest_crystal_bush',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_crystal_grass' },
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
    biomes = { 'everness_crystal_forest' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_crystal_bush.mts',
    flags = 'place_center_x, place_center_z',
})

local function register_crystal_grass_decoration(offset, scale, length)
    minetest.register_decoration({
        name = 'everness:crystal_forest_crystal_grass_' .. length,
        deco_type = 'simple',
        place_on = { 'everness:dirt_with_crystal_grass' },
        sidelen = 16,
        noise_params = {
            offset = offset,
            scale = scale,
            spread = { x = 200, y = 200, z = 200 },
            seed = 329,
            octaves = 3,
            persist = 0.6
        },
        biomes = { 'everness_crystal_forest' },
        y_max = y_max,
        y_min = y_min,
        decoration = 'everness:crystal_grass_' .. length,
    })
end

-- Crystal Grasses

register_crystal_grass_decoration(-0.03, 0.09, 3)
register_crystal_grass_decoration(-0.015, 0.075, 2)
register_crystal_grass_decoration(0, 0.06, 1)

minetest.register_decoration({
    name = 'everness:crystal_forest_sparkling_crystal_grass',
    deco_type = 'simple',
    place_on = { 'everness:dirt_with_crystal_grass' },
    biomes = { 'everness_crystal_forest' },
    sidelen = 16,
    fill_ratio = 0.4,
    y_min = 2,
    y_max = 31000,
    decoration = 'everness:sparkling_crystal_grass',
})

--
-- On Generated
--

local deco_id_coral_bones_tree = minetest.get_decoration_id('everness:coral_forest_coral_bones_tree')

local dids = {}
for decoration,size in pairs({
    ['everness:crystal_forest_crystal_tree'] = { x = 12, y = 13, z = 12 },
    ['everness:crystal_forest_crystal_tree_large'] = { x = 20, y = 14, z = 20 },
}) do
    local did = minetest.get_decoration_id(decoration)
    minetest.set_gen_notify('decoration',{ did })
    dids['decoration#' .. did] = { x = size.x / 2, y = size.y, z = size.z / 2 }
end

minetest.register_on_generated(function(minp, maxp, blockseed)
    if maxp.y > 8 then
        --
        -- Crystal trees - fix light
        --
        local gennotify = minetest.get_mapgen_object('gennotify')
        for did,size in pairs(dids) do
            for _, pos in ipairs(gennotify[did] or {}) do
                minetest.fix_light(
                    { x = pos.x - size.x, y = pos.y, z = pos.z - size.z },
                    { x = pos.x + size.x, y = pos.y + size.y, z = pos.z + size.z },
                    true
                )
            end
        end
    end
end)