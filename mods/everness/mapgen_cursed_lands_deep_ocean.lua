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

local y_max = Everness.settings.biomes.everness_cursed_lands_deep_ocean.y_max
local y_min = Everness.settings.biomes.everness_cursed_lands_deep_ocean.y_min

-- Cursed Lands Deep Ocean

--[[minetest.register_biome({
    name = 'everness_cursed_lands_deep_ocean',
    node_top = 'everness:cursed_lands_deep_ocean_sand',
    depth_top = 1,
    node_filler = 'everness:cursed_lands_deep_ocean_sand',
    depth_filler = 3,
    node_riverbed = 'everness:cursed_lands_deep_ocean_sand',
    depth_riverbed = 2,
    node_cave_liquid = 'default:water_source',
    node_dungeon = 'everness:cursed_lands_deep_ocean_sandstone_block',
    node_dungeon_alt = 'everness:cursed_lands_deep_ocean_sandstone_brick',
    node_dungeon_stair = 'stairs:stair_cursed_lands_deep_ocean_sandstone_block',
    y_max = y_max,
    y_min = y_min,
    heat_point = 45,
    humidity_point = 85,
})]]

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:forsaken_lands_deep_ocean_coral_alcyonacea',
    deco_type = 'schematic',
    place_on = { 'everness:cursed_lands_deep_ocean_sand' },
    spawn_by = 'default:water_source',
    num_spawn_by = 8,
    sidelen = 16,
    fill_ratio = 0.002,
    biomes = asuna.features.ocean.cursed_lands, --{ 'everness_cursed_lands_ocean' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_forsaken_lands_deep_ocean_coral_alcyonacea.mts',
    flags = 'place_center_x, place_center_z, force_placement',
})

minetest.register_decoration({
    name = 'everness:forsaken_lands_deep_ocean_coral_ostracod',
    deco_type = 'schematic',
    place_on = { 'everness:cursed_lands_deep_ocean_sand' },
    spawn_by = 'default:water_source',
    num_spawn_by = 8,
    sidelen = 16,
    fill_ratio = 0.002,
    biomes = asuna.features.ocean.cursed_lands, --{ 'everness_cursed_lands_ocean' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_forsaken_lands_deep_ocean_coral_ostracod.mts',
    flags = 'place_center_x, place_center_z, force_placement',
})

minetest.register_decoration({
    name = 'everness:forsaken_lands_deep_ocean_coral_octocurse',
    deco_type = 'schematic',
    place_on = { 'everness:cursed_lands_deep_ocean_sand' },
    spawn_by = 'default:water_source',
    num_spawn_by = 8,
    sidelen = 16,
    fill_ratio = 0.002,
    biomes = asuna.features.ocean.cursed_lands, --{ 'everness_cursed_lands_ocean' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_forsaken_lands_deep_ocean_coral_octocurse.mts',
    flags = 'place_center_x, place_center_z, force_placement',
})

minetest.register_decoration({
    name = 'everness:cursed_lands_deep_ocean_mud',
    deco_type = 'simple',
    place_on = { 'everness:cursed_lands_deep_ocean_sand' },
    place_offset_y = -1,
    sidelen = 4,
    fill_ratio = 0.002,
    biomes = asuna.features.ocean.cursed_lands, --{ 'everness_cursed_lands_ocean' },
    y_max = y_max,
    y_min = y_min,
    flags = 'force_placement',
    decoration = { 'everness:cursed_lands_deep_ocean_sand_with_crack' },
    spawn_by = 'default:water_source',
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:cursed_lands_deep_ocean_plants_1',
    deco_type = 'simple',
    place_on = { 'everness:cursed_lands_deep_ocean_sand' },
    place_offset_y = -1,
    sidelen = 4,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = asuna.features.ocean.cursed_lands, --{ 'everness_cursed_lands_ocean' },
    y_max = y_max,
    y_min = y_min,
    flags = 'force_placement',
    decoration = { 'everness:cursed_lands_deep_ocean_coral_plant_anemone' },
    spawn_by = 'default:water_source',
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:cursed_lands_deep_ocean_plants_2',
    deco_type = 'simple',
    place_on = { 'everness:cursed_lands_deep_ocean_sand' },
    place_offset_y = -1,
    sidelen = 4,
    noise_params = {
        offset = -0.02,
        scale = 0.04,
        spread = { x = 200, y = 200, z = 200 },
        seed = 436,
        octaves = 3,
        persist = 0.6
    },
    biomes = asuna.features.ocean.cursed_lands, --{ 'everness_cursed_lands_ocean' },
    y_max = y_max,
    y_min = y_min,
    flags = 'force_placement',
    decoration = { 'everness:cursed_lands_deep_ocean_coral_plant_darkilluma' },
    spawn_by = 'default:water_source',
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:cursed_lands_deep_ocean_plants_3',
    deco_type = 'simple',
    place_on = { 'everness:cursed_lands_deep_ocean_sand' },
    place_offset_y = -1,
    sidelen = 4,
    noise_params = {
        offset = -0.02,
        scale = 0.04,
        spread = { x = 200, y = 200, z = 200 },
        seed = 19822,
        octaves = 3,
        persist = 0.6
    },
    biomes = asuna.features.ocean.cursed_lands, --{ 'everness_cursed_lands_ocean' },
    y_max = y_max,
    y_min = y_min,
    flags = 'force_placement',
    decoration = { 'everness:cursed_lands_deep_ocean_coral_plant_demon' },
    spawn_by = 'default:water_source',
    num_spawn_by = 8,
})

--
-- On Generated
--

local c_water_source = minetest.get_content_id('default:water_source')
local c_cursed_lands_deep_ocean_sand = minetest.get_content_id('everness:cursed_lands_deep_ocean_sand')

-- Localize data buffer table outside the loop, to be re-used for all
-- mapchunks, therefore minimising memory use.
local data = {}
local chance = 25

local skull_size = { x = 10, y = 11, z = 11 }
local skull_volume = skull_size.x * skull_size.z * skull_size.y
local skull_schem = minetest.get_modpath('everness') .. '/schematics/everness_cursed_lands_deep_ocean_skull.mts'

minetest.register_decoration({
    deco_type = 'schematic',
    place_on = 'everness:cursed_lands_deep_ocean_sand',
    spawn_by = 'everness:cursed_lands_deep_ocean_sand',
    num_spawn_by = 8,
    sidelen = 80,
    fill_ratio = 0.0001,
    biomes = asuna.features.ocean.cursed_lands,
    y_max = -12,
    y_min = -36,
    flags = 'place_center_x,place_center_z,force_placement',
    schematic = skull_schem,
})

--[[minetest.register_on_generated(function(minp, maxp, blockseed)
    local rand = PcgRandom(blockseed)
    local vm, emin, emax = minetest.get_mapgen_object('voxelmanip')
    local area = VoxelArea:new({ MinEdge = emin, MaxEdge = emax })
    -- Get the content ID data from the voxelmanip in the form of a flat array.
    -- Set the buffer parameter to use and reuse 'data' for this.
    vm:get_data(data)

    if y_min < maxp.y and maxp.y < y_max then
        local already_placed = false
        -- Process the content IDs in 'data'.
        -- The most useful order is a ZYX loop because:
        -- 1. This matches the order of the 3D noise flat array.
        -- 2. This allows a simple +1 incrementing of the voxelmanip index along x
        -- rows.
        for z = minp.z, maxp.z do
            if already_placed then
                break
            end

            for y = minp.y, maxp.y do
                if already_placed then
                    break
                end

                for x = minp.x, maxp.x do
                    if already_placed then
                        break
                    end

                    -- Voxelmanip index for the flat array of content IDs.
                    -- Initialise to first node in this x row.
                    local vi = area:index(x, y, z)

                    if data[vi + area.ystride] == c_water_source and data[vi] == c_cursed_lands_deep_ocean_sand then
                        local s_pos = area:position(vi)
                        local biome_data = minetest.get_biome_data(s_pos)

                        if not biome_data then
                            return
                        end

                        local biome_name = minetest.get_biome_name(biome_data.biome)

                        if not biome_name then
                            return
                        end

                        if biome_name == 'everness_cursed_lands_deep_ocean' and rand:next(0, 100) < chance then
                            --
                            -- Skull
                            --

                            local schem_pos = vector.new(s_pos.x, s_pos.y, s_pos.z)
                            local water_source_positions = minetest.find_nodes_in_area(
                                vector.new(s_pos.x - 5, s_pos.y, s_pos.z - 5),
                                vector.new(s_pos.x + 5, s_pos.y + 11, s_pos.z + 5),
                                { 'default:water_source' }
                            )

                            if #water_source_positions > skull_volume / 3 then
                                minetest.place_schematic_on_vmanip(
                                    vm,
                                    schem_pos,
                                    skull_schem,
                                    'random',
                                    nil,
                                    true,
                                    'place_center_x, place_center_z'
                                )

                                minetest.log('action', '[Everness] Cursed Lands Deep Ocean Skull was placed at ' .. schem_pos:to_string())

                                already_placed = true
                            end
                        end
                    end
                end
            end
        end

        vm:write_to_map(true)
        --minetest.fix_light(minp, maxp)
    end
end)]]
