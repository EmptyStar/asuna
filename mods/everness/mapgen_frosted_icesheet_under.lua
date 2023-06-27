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

local y_max = Everness.settings.biomes.everness_frosted_icesheet_under.y_max
local y_min = Everness.settings.biomes.everness_frosted_icesheet_under.y_min

-- Frosted Icesheet Under

--[[minetest.register_biome({
    name = 'everness_frosted_icesheet_under',
    node_cave_liquid = { 'default:water_source', 'default:lava_source' },
    node_dungeon = 'everness:icecobble',
    node_dungeon_alt = 'everness:snowcobble',
    node_dungeon_stair = 'stairs:stair_ice',
    y_max = y_max,
    y_min = y_min,
    heat_point = 0,
    humidity_point = 93,
})]]

--
-- Register ores
--

-- Blob ore.
-- These before scatter ores to avoid other ores in blobs.

minetest.register_ore({
    ore_type = 'blob',
    ore = 'everness:bone',
    wherein = { 'default:stone' },
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
    biomes = asuna.features.cave.frosted_icesheet, --{ 'everness_frosted_icesheet_under' },
})

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:frosted_icesheet_under_floors',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    place_offset_y = -1,
    sidelen = 16,
    fill_ratio = 10,
    biomes = asuna.features.cave.frosted_icesheet, --{ 'everness_frosted_icesheet_under' },
    y_max = y_max,
    y_min = y_min,
    flags = 'all_floors, force_placement',
    decoration = {
        'everness:ancient_emerald_ice',
        'everness:dense_emerald_ice',
        'everness:emerald_ice',
        'everness:frosted_ice',
        'everness:frosted_ice_translucent',
    },
})

minetest.register_decoration({
    name = 'everness:frosted_icesheet_under_ceilings',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    fill_ratio = 0.4,
    biomes = asuna.features.cave.frosted_icesheet, --{ 'everness_frosted_icesheet_under' },
    y_max = y_max,
    y_min = y_min,
    flags = 'all_ceilings',
    decoration = {
        'everness:ancient_emerald_ice',
        'everness:dense_emerald_ice',
        'everness:emerald_ice',
        'everness:frosted_ice',
        'everness:frosted_ice_translucent',
    },
})

minetest.register_decoration({
    name = 'everness:frosted_icesheet_under_illuminating_floors',
    deco_type = 'simple',
    place_on = {
        'everness:ancient_emerald_ice',
        'everness:dense_emerald_ice',
        'everness:emerald_ice',
        'everness:frosted_ice',
        'everness:frosted_ice_translucent',
    },
    sidelen = 16,
    place_offset_y = -1,
    fill_ratio = 0.01,
    biomes = asuna.features.cave.frosted_icesheet, --{ 'everness_frosted_icesheet_under' },
    y_max = y_max,
    y_min = y_min,
    decoration = { 'everness:frosted_cave_ice_illuminating' },
    flags = 'all_floors, force_placement'
})

minetest.register_decoration({
    name = 'everness:frosted_icesheet_under_illuminating_ceilings',
    deco_type = 'simple',
    place_on = {
        'everness:ancient_emerald_ice',
        'everness:dense_emerald_ice',
        'everness:emerald_ice',
        'everness:frosted_ice',
        'everness:frosted_ice_translucent',
    },
    sidelen = 16,
    place_offset_y = -1,
    fill_ratio = 0.01,
    biomes = asuna.features.cave.frosted_icesheet, --{ 'everness_frosted_icesheet_under' },
    y_max = y_max,
    y_min = y_min,
    decoration = { 'everness:frosted_cave_ice_illuminating' },
    flags = 'all_ceilings, force_placement'
})

minetest.register_decoration({
    name = 'everness:frosted_icesheet_under_amaranita_lantern',
    deco_type = 'simple',
    place_on = {
        'everness:ancient_emerald_ice',
        'everness:dense_emerald_ice',
        'everness:emerald_ice',
        'everness:frosted_ice',
        'everness:frosted_ice_translucent',
    },
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    biomes = asuna.features.cave.frosted_icesheet, --{ 'everness_frosted_icesheet_under' },
    y_max = y_max - 500 > y_min and y_max - 500 or y_max,
    y_min = y_min,
    decoration = { 'everness:amaranita_lantern' },
    flags = 'all_floors',
})

minetest.register_decoration({
    name = 'everness:frosted_icesheet_under_vines',
    deco_type = 'simple',
    place_on = {
        'everness:ancient_emerald_ice',
        'everness:dense_emerald_ice',
        'everness:emerald_ice',
        'everness:frosted_ice',
        'everness:frosted_ice_translucent',
    },
    sidelen = 16,
    fill_ratio = 0.05,
    biomes = asuna.features.cave.frosted_icesheet, --{ 'everness_frosted_icesheet_under' },
    param2 = 8,
    decoration = {
        'everness:tenanea_flowers_vine_1',
        'everness:tenanea_flowers_vine_2',
        'everness:reeds_vine_1',
        'everness:reeds_vine_2'
    },
    y_max = y_max,
    y_min = y_min,
    flags = 'all_ceilings',
    spawn_by = 'air',
    num_spawn_by = 8
})

minetest.register_decoration({
    name = 'everness:frosted_icicle_large_ceiling',
    deco_type = 'schematic',
    place_on = {
        'everness:ancient_emerald_ice',
        'everness:dense_emerald_ice',
        'everness:emerald_ice',
        'everness:frosted_ice',
        'everness:frosted_ice_translucent',
    },
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    biomes = asuna.features.cave.frosted_icesheet, --{ 'everness_frosted_icesheet_under' },
    y_max = y_max - 24,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_frosted_icicle_large_ceiling.mts',
    flags = 'place_center_x, place_center_z, all_ceilings',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:frosted_icicle_large_floor',
    deco_type = 'schematic',
    place_on = {
        'everness:ancient_emerald_ice',
        'everness:dense_emerald_ice',
        'everness:emerald_ice',
        'everness:frosted_ice',
        'everness:frosted_ice_translucent',
    },
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    biomes = asuna.features.cave.frosted_icesheet, --{ 'everness_frosted_icesheet_under' },
    y_max = y_max - 24,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_frosted_icicle_large_floor.mts',
    flags = 'place_center_x, place_center_z, all_floors',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:frosted_icesheet_under_plants',
    deco_type = 'simple',
    place_on = {
        'everness:ancient_emerald_ice',
        'everness:dense_emerald_ice',
        'everness:emerald_ice',
        'everness:frosted_ice',
        'everness:frosted_ice_translucent',
    },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    param2 = 8,
    biomes = asuna.features.cave.frosted_icesheet, --{ 'everness_frosted_icesheet_under' },
    y_max = y_max,
    y_min = y_min,
    decoration = {
        'everness:blooming_cooksonia',
        'everness:frosted_icicle_floor',
    },
    flags = 'all_floors',
})

minetest.register_decoration({
    name = 'everness:frosted_icesheet_under_plants_2',
    deco_type = 'simple',
    place_on = {
        'everness:ancient_emerald_ice',
        'everness:dense_emerald_ice',
        'everness:emerald_ice',
        'everness:frosted_ice',
        'everness:frosted_ice_translucent',
    },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = asuna.features.cave.frosted_icesheet, --{ 'everness_frosted_icesheet_under' },
    y_max = y_max,
    y_min = y_min,
    decoration = { 'everness:creeping_moss_spores' },
    flags = 'all_floors',
    param2 = 26
})

--
-- On Generated
--

--[[local deco_id_frosted_icicle_large_ceiling = minetest.get_decoration_id('everness:frosted_icicle_large_ceiling')
local deco_id_frosted_icicle_large_floor = minetest.get_decoration_id('everness:frosted_icicle_large_floor')

minetest.set_gen_notify('decoration', { deco_id_frosted_icicle_large_ceiling, deco_id_frosted_icicle_large_floor })

minetest.register_on_generated(function(minp, maxp, blockseed)
    if y_min < maxp.y and maxp.y < y_max then
        --
        -- Frosted Large Icicle Ceiling
        --
        local gennotify = minetest.get_mapgen_object('gennotify')
        for _, pos in ipairs(gennotify['decoration#' .. deco_id_frosted_icicle_large_ceiling] or {}) do
            local markers = minetest.find_nodes_in_area(
                vector.new(pos.x - 1, pos.y - 18, pos.z - 1),
                vector.new(pos.x + 1, pos.y - 20, pos.z + 1),
                {'everness:frosted_icicle_large_ceiling_marker'}
            )

            if #markers > 0 then
                local pos_marker = markers[1]

                local air_below = minetest.find_nodes_in_area(
                    vector.new(pos_marker.x, pos_marker.y, pos_marker.z),
                    vector.new(pos_marker.x, pos_marker.y - 7, pos_marker.z),
                    {'air'}
                )

                -- Replace marker
                minetest.set_node(pos_marker, { name = 'everness:frosted_cave_ice_illuminating' })

                if #air_below == 7 then
                    local incrementer = 1
                    local pos_below = vector.new(pos_marker.x, pos_marker.y - incrementer, pos_marker.z)
                    local node_below = minetest.get_node(pos_below)

                    Everness.stack_icicle_recursive(node_below, pos_below, incrementer, pos_marker, 'down')
                end
            end
        end

        --
        -- Frosted Large Icicle Floor
        --
        for _, pos in ipairs(gennotify['decoration#' .. deco_id_frosted_icicle_large_floor] or {}) do
            local markers = minetest.find_nodes_in_area(
                vector.new(pos.x - 1, pos.y + 18, pos.z - 1),
                vector.new(pos.x + 1, pos.y + 20, pos.z + 1),
                {'everness:frosted_icicle_large_floor_marker'}
            )

            if #markers > 0 then
                local pos_marker = markers[1]

                local air_above = minetest.find_nodes_in_area(
                    vector.new(pos_marker.x, pos_marker.y, pos_marker.z),
                    vector.new(pos_marker.x, pos_marker.y + 7, pos_marker.z),
                    {'air'}
                )

                minetest.set_node(pos_marker, { name = 'everness:frosted_cave_ice_illuminating' })

                -- Make sure we have some space
                if #air_above == 7 then
                    local incrementer = 1
                    local pos_above = vector.new(pos_marker.x, pos_marker.y + incrementer, pos_marker.z)
                    local node_above = minetest.get_node(pos_above)

                    Everness.stack_icicle_recursive(node_above, pos_above, incrementer, pos_marker, 'up')
                end
            end
        end
    end
end)]]
