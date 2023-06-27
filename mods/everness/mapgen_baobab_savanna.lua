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

local y_max = Everness.settings.biomes.everness_baobab_savanna.y_max
local y_min = Everness.settings.biomes.everness_baobab_savanna.y_min

-- Baobab Savanna

--[[minetest.register_biome({
    name = 'everness_baobab_savanna',
    node_top = 'everness:dry_dirt_with_dry_grass',
    depth_top = 1,
    node_filler = 'everness:dry_dirt',
    depth_filler = 1,
    node_riverbed = 'default:sand',
    depth_riverbed = 2,
    node_dungeon = 'default:cobble',
    node_dungeon_alt = 'default:mossycobble',
    node_dungeon_stair = 'stairs:stair_cobble',
    y_max = y_max,
    y_min = y_min,
    heat_point = 80,
    humidity_point = 30,
})]]

--
-- Register decorations
--

-- Savanna bare dirt patches.
-- Must come before all savanna decorations that are placed on dry grass.
-- Noise is similar to long dry grass noise, but scale inverted, to appear
-- where long dry grass is least dense and shortest.

minetest.register_decoration({
    name = 'everness:baobab_savanna_dry_dirt_with_dry_grass',
    deco_type = 'simple',
    place_on = { 'everness:dry_dirt_with_dry_grass' },
    sidelen = 4,
    noise_params = {
        offset = -1.5,
        scale = -1.5,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 4,
        persist = 1.0
    },
    biomes = { 'everness_baobab_savanna' },
    y_max = y_max,
    y_min = y_min,
    decoration = 'everness:dry_dirt',
    place_offset_y = -1,
    flags = 'force_placement',
})

minetest.register_decoration({
    name = 'everness:baobab_savanna_baobab_tree_1',
    deco_type = 'schematic',
    place_on = { 'everness:dry_dirt_with_dry_grass', 'everness:dry_dirt' },
    spawn_by = { 'everness:dry_dirt_with_dry_grass', 'everness:dry_dirt' },
    num_spawn_by = 8,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_baobab_savanna' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_baobab_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:baobab_savanna_baobab_tree_2',
    deco_type = 'schematic',
    place_on = { 'everness:dry_dirt_with_dry_grass', 'everness:dry_dirt' },
    spawn_by = { 'everness:dry_dirt_with_dry_grass', 'everness:dry_dirt' },
    num_spawn_by = 8,
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 90155,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_baobab_savanna' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_baobab_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:baobab_savanna_baobab_tree_3',
    deco_type = 'schematic',
    place_on = {
        'everness:dry_dirt_with_dry_grass',
        'everness:dry_dirt',
        'naturalbiomes:savannalitter',
    },
    spawn_by = {
        'everness:dry_dirt_with_dry_grass',
        'everness:dry_dirt',
        'naturalbiomes:savannalitter',
    },
    num_spawn_by = 8,
    sidelen = 16,
    fill_ratio = 0.0001,
    biomes = {
        'everness_baobab_savanna',
        'savanna',
    },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_baobab_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:baobab_savanna_baobab_log',
    deco_type = 'schematic',
    place_on = { 'everness:dry_dirt_with_dry_grass' },
    sidelen = 16,
    place_offset_y = 1,
    noise_params = {
        offset = 0,
        scale = 0.001,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_baobab_savanna' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_baobab_log.mts',
    flags = 'place_center_x',
    rotation = 'random',
    spawn_by = 'everness:dry_dirt_with_dry_grass',
    num_spawn_by = 8,
})

-- Dry grasses

local function register_dry_grass_decoration(offset, scale, length)
    minetest.register_decoration({
        name = 'everness:dry_grass_' .. length,
        deco_type = 'simple',
        place_on = { 'everness:dry_dirt_with_dry_grass' },
        sidelen = 16,
        noise_params = {
            offset = offset,
            scale = scale,
            spread = { x = 200, y = 200, z = 200 },
            seed = 329,
            octaves = 3,
            persist = 0.6
        },
        biomes = { 'everness_baobab_savanna' },
        y_max = y_max,
        y_min = y_min,
        decoration = 'everness:dry_grass_' .. length,
    })
end

register_dry_grass_decoration(0.01, 0.05, 4)
register_dry_grass_decoration(0.03, 0.03, 3)
register_dry_grass_decoration(0.05, 0.01, 2)
register_dry_grass_decoration(0.07, -0.01, 1)

--
-- On Generated
--

local deco_ids_baobab = {
    minetest.get_decoration_id('everness:baobab_savanna_baobab_tree_1'),
    minetest.get_decoration_id('everness:baobab_savanna_baobab_tree_2'),
    minetest.get_decoration_id('everness:baobab_savanna_baobab_tree_3'),
}

if #deco_ids_baobab > 1 then
    minetest.set_gen_notify('decoration', deco_ids_baobab)
end

local did_baobab = 'decoration#' .. minetest.get_decoration_id('everness:baobab_savanna_baobab_tree_3')

minetest.register_on_generated(function(minp, maxp, blockseed)
    if maxp.y > 0 then
        --
        -- Baobab Tree - fix light
        --
        local gennotify = minetest.get_mapgen_object('gennotify')
        for _, pos in ipairs(gennotify[did_baobab] or {}) do
            minetest.fix_light(vector.offset(pos, -1, -1, -1), vector.offset(pos, 24, 39, 24))
        end
    end
end)
