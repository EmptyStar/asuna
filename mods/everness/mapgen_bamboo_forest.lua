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

local y_max = Everness.settings.biomes.everness_bamboo_forest.y_max
local y_min = Everness.settings.biomes.everness_bamboo_forest.y_min

-- Bamboo Forest

minetest.register_biome({
    name = 'everness_bamboo_forest',
    node_top = 'everness:dirt_with_grass_1',
    depth_top = 1,
    node_filler = 'everness:dirt_1',
    depth_filler = 1,
    node_riverbed = 'default:sand',
    depth_riverbed = 2,
    node_dungeon = 'everness:bamboo_wood',
    node_dungeon_alt = 'everness:bamboo_mosaic_wood',
    node_dungeon_stair = 'stairs:stair_bamboo_wood',
    y_max = y_max,
    y_min = y_min,
    heat_point = 80,
    humidity_point = 60,
})

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:bamboo_forest_small_bamboo',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_grass_1' },
    sidelen = 80,
    fill_ratio = 0.1,
    biomes = { 'everness_bamboo_forest' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_small_bamboo.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:bamboo_forest_large_bamboo',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_grass_1' },
    sidelen = 80,
    fill_ratio = 0.1,
    biomes = { 'everness_bamboo_forest' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_large_bamboo.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

-- Jungle tree and log

local jungle_tree_schem
local jungle_log_schem

if minetest.get_modpath('default') then
    jungle_tree_schem = minetest.get_modpath('default') .. '/schematics/jungle_tree.mts'
    jungle_log_schem = minetest.get_modpath('default') .. '/schematics/jungle_log.mts'
elseif minetest.get_modpath('mcl_core') then
    jungle_tree_schem = minetest.get_modpath('mcl_core') .. '/schematics/mcl_core_jungle_tree.mts'
    jungle_log_schem = {
        size = { x = 3, y = 3, z = 1 },
        data = {
            { name = 'air', prob = 0 },
            { name = 'air', prob = 0 },
            { name = 'air', prob = 0 },
            { name = 'mcl_core:jungletree', param2 = 12 },
            { name = 'mcl_core:jungletree', param2 = 12 },
            { name = 'mcl_core:jungletree', param2 = 12, prob = 127 },
            { name = 'air', prob = 0 },
            { name = 'mcl_mushrooms:mushroom_brown', prob = 50 },
            { name = 'air', prob = 0 },
        },
    }
end

if jungle_tree_schem then
    minetest.register_decoration({
        name = 'everness:bamboo_forest_jungle_tree',
        deco_type = 'schematic',
        place_on = { 'everness:dirt_with_grass_1' },
        sidelen = 16,
        noise_params = {
            offset = 0.0015,
            scale = 0.0021,
            spread = { x = 250, y = 250, z = 250 },
            seed = 2,
            octaves = 3,
            persist = 0.66
        },
        biomes = { 'everness_bamboo_forest' },
        y_max = y_max,
        y_min = y_min,
        schematic = jungle_tree_schem,
        flags = 'place_center_x, place_center_z',
        rotation = 'random',
    })
end

if jungle_log_schem then
    minetest.register_decoration({
        name = 'everness:bamboo_forest_jungle_log',
        deco_type = 'schematic',
        place_on = { 'everness:dirt_with_grass_1' },
        place_offset_y = 1,
        sidelen = 16,
        noise_params = {
            offset = 0.0015,
            scale = 0.0021,
            spread = { x = 250, y = 250, z = 250 },
            seed = 2,
            octaves = 3,
            persist = 0.66
        },
        biomes = { 'everness_bamboo_forest' },
        y_max = y_max,
        y_min = y_min,
        schematic = jungle_log_schem,
        flags = 'place_center_x',
        rotation = 'random',
        spawn_by = 'everness:dirt_with_grass_1',
        num_spawn_by = 8,
    })
end

-- Bush

if minetest.get_modpath('default') then
    minetest.register_decoration({
        name = 'everness:bamboo_forest_bush',
        deco_type = 'schematic',
        place_on = { 'everness:dirt_with_grass_1' },
        sidelen = 16,
        noise_params = {
            offset = -0.004,
            scale = 0.01,
            spread = { x = 100, y = 100, z = 100 },
            seed = 137,
            octaves = 3,
            persist = 0.7,
        },
        biomes = { 'everness_bamboo_forest' },
        y_max = y_max,
        y_min = y_min,
        schematic = minetest.get_modpath('default') .. '/schematics/bush.mts',
        flags = 'place_center_x, place_center_z',
    })

    -- Blueberry bush

    minetest.register_decoration({
        name = 'everness:bamboo_forest_blueberry_bush',
        deco_type = 'schematic',
        place_on = { 'everness:dirt_with_grass_1' },
        sidelen = 16,
        noise_params = {
            offset = -0.004,
            scale = 0.01,
            spread = { x = 100, y = 100, z = 100 },
            seed = 697,
            octaves = 3,
            persist = 0.7,
        },
        biomes = { 'everness_bamboo_forest' },
        y_max = y_max,
        y_min = y_min,
        place_offset_y = 1,
        schematic = minetest.get_modpath('default') .. '/schematics/blueberry_bush.mts',
        flags = 'place_center_x, place_center_z',
    })
end

-- Flowers
local function register_flower_decoration(offset, scale, length)
    minetest.register_decoration({
        name = 'everness:bamboo_forest_flowers_' .. length,
        deco_type = 'simple',
        place_on = { 'everness:dirt_with_grass_1' },
        sidelen = 16,
        noise_params = {
            offset = offset,
            scale = scale,
            spread = { x = 200, y = 200, z = 200 },
            seed = 329,
            octaves = 3,
            persist = 0.6
        },
        biomes = { 'everness_bamboo_forest' },
        y_max = y_max,
        y_min = y_min,
        decoration = 'everness:flowers_' .. length,
    })
end

register_flower_decoration(-0.03, 0.09, 4)
register_flower_decoration(-0.015, 0.075, 3)
register_flower_decoration(0, 0.06, 2)
register_flower_decoration(0.015, 0.045, 1)

--
-- On Generated
--

--[[minetest.register_on_generated(function(minp, maxp, blockseed)
    if maxp.y > 0 then
        --
        -- Bamboo
        --
        local bamboos_pos = minetest.find_nodes_in_area_under_air(minp, maxp, 'everness:bamboo_3')

        for _, pos in ipairs(bamboos_pos) do
            local node_below = minetest.get_node(vector.new(pos.x, pos.y - 1, pos.z))

            -- get height of the generated bamboo
            local bamboo_height = 0
            local height_offset = 1
            local bamboo_below = node_below

            while minetest.get_item_group(bamboo_below.name, 'bamboo') > 0 do
                if bamboo_height > 1 then
                    bamboo_below = minetest.get_node(vector.new(pos.x, pos.y - height_offset, pos.z))
                end

                height_offset = height_offset + 1
                bamboo_height = bamboo_height + 1
            end

            -- add top bamboo nodes with leaves based on their generated heigth
            for i = 1, 3 do
                local node_name = 'everness:bamboo_4'

                if i == 2 and bamboo_height > 4 then
                    node_name = 'everness:bamboo_5'
                elseif i == 3 then
                    node_name = 'everness:bamboo_5'
                end

                minetest.swap_node(
                    vector.new(pos.x, pos.y + (i - 1), pos.z),
                    {
                        name = node_name,
                        param2 = node_below.param2
                    }
                )
            end
        end
    end
end)
]]