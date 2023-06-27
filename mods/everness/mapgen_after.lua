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

-- Get the content IDs for the nodes used.
local c_air = minetest.get_content_id('air')
local c_dirt_with_grass_1 = minetest.get_content_id('everness:dirt_with_grass_1')
local c_dirt_with_rainforest_litter = minetest.get_content_id('default:dirt_with_rainforest_litter')
local c_dirt_with_cursed_grass = minetest.get_content_id('everness:dirt_with_cursed_grass')
local c_dirt_with_crystal_grass = minetest.get_content_id('everness:dirt_with_crystal_grass')
local c_crystal_sand = minetest.get_content_id('everness:crystal_sand')
local c_dry_ocean_dirt = minetest.get_content_id('everness:dry_ocean_dirt')
local c_dirt_with_snow = minetest.get_content_id('default:dirt_with_snow')
local c_dirt_with_coniferous_litter = minetest.get_content_id('default:dirt_with_coniferous_litter')
local c_forsaken_desert_sand = minetest.get_content_id('everness:forsaken_desert_sand')
local c_forsaken_desert_chiseled_stone = minetest.get_content_id('everness:forsaken_desert_chiseled_stone')
local c_forsaken_desert_brick = minetest.get_content_id('everness:forsaken_desert_brick')
local c_forsaken_desert_engraved_stone = minetest.get_content_id('everness:forsaken_desert_engraved_stone')
local c_frosted_snowblock = minetest.get_content_id('everness:frosted_snowblock')
local c_frosted_ice = minetest.get_content_id('everness:frosted_ice')

-- Localize data buffer table outside the loop, to be re-used for all
-- mapchunks, therefore minimising memory use.
local data = {}
local chance = 15
local disp = 16

--[[minetest.register_on_generated(function(minp, maxp, blockseed)
    local rand = PcgRandom(blockseed)

    local vm, emin, emax = minetest.get_mapgen_object('voxelmanip')
    local area = VoxelArea:new({ MinEdge = emin, MaxEdge = emax })
    -- Get the content ID data from the voxelmanip in the form of a flat array.
    -- Set the buffer parameter to use and reuse 'data' for this.
    vm:get_data(data)
    local sidelength = maxp.x - minp.x + 1

    local x_disp = rand:next(0, disp)
    local z_disp = rand:next(0, disp)

    if maxp.y > 0 then
        for y = minp.y, maxp.y do
            local vi = area:index(minp.x + sidelength / 2 + x_disp, y, minp.z + sidelength / 2 + z_disp)

            if data[vi + area.ystride] == c_air
                and (
                    data[vi] == c_dirt_with_grass_1
                    or data[vi] == c_dirt_with_rainforest_litter
                    or data[vi] == c_dirt_with_cursed_grass
                    or data[vi] == c_dirt_with_crystal_grass
                    or data[vi] == c_crystal_sand
                    or data[vi] == c_forsaken_desert_sand
                    or data[vi] == c_dry_ocean_dirt
                    or data[vi] == c_dirt_with_snow
                    or data[vi] == c_dirt_with_coniferous_litter
                    or data[vi] == c_frosted_snowblock
                    or data[vi] == c_frosted_ice
                )
            then
                local s_pos = area:position(vi)
                local biome_data = minetest.get_biome_data(s_pos)

                if not biome_data then
                    return
                end

                local biome_name = minetest.get_biome_name(biome_data.biome)

                if not biome_name then
                    return
                end

                if biome_name == 'everness_bamboo_forest' and rand:next(0, 100) < chance then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_japanese_shrine.mts'

                    --
                    -- Japanese Shrine
                    --

                    local schem_pos = vector.new(s_pos.x, s_pos.y, s_pos.z)

                    minetest.place_schematic_on_vmanip(
                        vm,
                        schem_pos,
                        schem,
                        'random',
                        nil,
                        true,
                        'place_center_x, place_center_z'
                    )

                    minetest.log('action', '[Everness] Japanese Shrine was placed at ' .. schem_pos:to_string())
                elseif biome_name == 'rainforest' and rand:next(0, 100) < chance then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_jungle_temple.mts'

                    --
                    -- Jungle Temple
                    --

                    -- add Y displacement
                    local schem_pos = vector.new(s_pos.x, s_pos.y - 3, s_pos.z)

                    minetest.place_schematic_on_vmanip(
                        vm,
                        schem_pos,
                        schem,
                        'random',
                        nil,
                        true,
                        'place_center_x, place_center_z'
                    )

                    minetest.log('action', '[Everness] Jungle Temple was placed at ' .. schem_pos:to_string())
                elseif biome_name == 'everness_cursed_lands' and rand:next(0, 100) < chance then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_haunted_house.mts'

                    --
                    -- Haunted House
                    --

                    -- add Y displacement
                    local schem_pos = vector.new(s_pos.x, s_pos.y - 1, s_pos.z)

                    minetest.place_schematic_on_vmanip(
                        vm,
                        schem_pos,
                        schem,
                        'random',
                        nil,
                        true,
                        'place_center_x, place_center_z'
                    )

                    minetest.log('action', '[Everness] Haunted House was placed at ' .. schem_pos:to_string())
                elseif biome_name == 'everness_crystal_forest' and rand:next(0, 100) < chance then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_quartz_temple.mts'

                    --
                    -- Quartz Temple
                    --

                    -- add Y displacement
                    local schem_pos = vector.new(s_pos.x, s_pos.y, s_pos.z)

                    minetest.place_schematic_on_vmanip(
                        vm,
                        schem_pos,
                        schem,
                        'random',
                        nil,
                        true,
                        'place_center_x, place_center_z'
                    )

                    minetest.log('action', '[Everness] Quartz Temple was placed at ' .. schem_pos:to_string())
                elseif (biome_name == 'everness_forsaken_desert' or biome_name == 'everness_forsaken_desert_ocean')
                    and rand:next(0, 100) < chance
                then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_forsaken_desert_temple.mts'

                    --
                    -- Forsaken Desert Temple
                    --

                    -- add Y displacement
                    local schem_pos = vector.new(s_pos.x, s_pos.y, s_pos.z)

                    minetest.place_schematic_on_vmanip(
                        vm,
                        schem_pos,
                        schem,
                        'random',
                        nil,
                        true,
                        'place_center_x, place_center_z'
                    )

                    minetest.log('action', '[Everness] Forsaken Desert Temple was placed at ' .. schem_pos:to_string())
                elseif (biome_name == 'coniferous_forest' or biome_name == 'taiga' or biome_name == 'MegaSpruceTaiga')
                    and rand:next(0, 100) < 100
                then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_giant_sequoia_tree.mts'

                    --
                    -- Giant Sequoia
                    --

                    -- add Y displacement
                    local schem_pos = vector.new(s_pos.x, s_pos.y, s_pos.z)

                    minetest.emerge_area(
                        vector.new(s_pos.x - 12, s_pos.y, s_pos.z - 12),
                        vector.new(s_pos.x + 12, s_pos.y + 75, s_pos.z + 12),
                        function(blockpos, action, calls_remaining, param)
                            Everness:emerge_area(blockpos, action, calls_remaining, param)
                        end,
                        {
                            callback = function()
                                local positions = minetest.find_nodes_in_area_under_air(
                                    vector.new(s_pos.x - 6, s_pos.y - 1, s_pos.z - 6),
                                    vector.new(s_pos.x + 6, s_pos.y + 1, s_pos.z + 6),
                                    {
                                        'default:dirt_with_snow',
                                        'default:dirt_with_coniferous_litter',
                                        'default:snow'
                                    })

                                if #positions < 137 then
                                    -- not enough space
                                    return
                                end

                                minetest.place_schematic(
                                    schem_pos,
                                    schem,
                                    'random',
                                    nil,
                                    true,
                                    'place_center_x, place_center_z'
                                )

                                minetest.log('action', '[Everness] Giant Sequoia was placed at ' .. schem_pos:to_string())
                            end
                        }
                    )
                elseif (biome_name == 'everness_frosted_icesheet' or biome_name == 'everness_frosted_icesheet_ocean')
                    and rand:next(0, 100) < chance
                then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_frosted_icesheet_igloo.mts'

                    --
                    -- Igloo
                    --

                    -- add Y displacement
                    local schem_pos = vector.new(s_pos.x, s_pos.y - 8, s_pos.z)

                    minetest.place_schematic_on_vmanip(
                        vm,
                        schem_pos,
                        schem,
                        'random',
                        nil,
                        true,
                        'place_center_x, place_center_z'
                    )

                    minetest.log('action', '[Everness] Igloo was placed at ' .. schem_pos:to_string())
                end
            end
        end

        vm:write_to_map(true)
        minetest.fix_light(minp, maxp)
    else
        -- Under
        for y = minp.y, maxp.y do
            local vi = area:index(minp.x + sidelength / 2 + x_disp, y, minp.z + sidelength / 2 + z_disp)

            if data[vi + area.ystride] == c_air
                and (
                    data[vi] == c_dirt_with_grass_1
                    or data[vi] == c_forsaken_desert_sand
                    or data[vi] == c_forsaken_desert_chiseled_stone
                    or data[vi] == c_forsaken_desert_brick
                    or data[vi] == c_forsaken_desert_engraved_stone
                )
            then
                local s_pos = area:position(vi)
                local biome_data = minetest.get_biome_data(s_pos)

                if not biome_data then
                    return
                end

                local biome_name = minetest.get_biome_name(biome_data.biome)

                if not biome_name then
                    return
                end

                if biome_name == 'everness_forsaken_desert_under' and rand:next(0, 100) < chance then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_forsaken_desert_temple_2.mts'

                    --
                    -- Forsaken Desert Temple 2
                    --

                    -- add Y displacement
                    local schem_pos = vector.new(s_pos.x, s_pos.y, s_pos.z)

                    -- find floor big enough
                    local positions = minetest.find_nodes_in_area_under_air(
                        vector.new(s_pos.x - 7, s_pos.y - 1, s_pos.z - 7),
                        vector.new(s_pos.x + 7, s_pos.y + 1, s_pos.z + 7),
                        {
                            'everness:forsaken_desert_sand',
                            'everness:forsaken_desert_chiseled_stone',
                            'everness:forsaken_desert_brick',
                            'everness:forsaken_desert_engraved_stone',
                            'default:stone',
                            'default:sand',
                            'default:gravel',
                            'default:stone_with_coal',
                            'default:stone_with_iron',
                            'default:stone_with_tin',
                            'default:stone_with_gold',
                            'default:stone_with_mese',
                            'default:stone_with_diamond',
                            'everness:cave_barrel_cactus',
                            'everness:venus_trap',
                            'everness:illumi_root',
                        })

                    if #positions < 49 then
                        -- not enough space
                        return
                    end

                    -- enough air to place structure ?
                    local air_positions = minetest.find_nodes_in_area(
                        vector.new(s_pos.x - 7, s_pos.y, s_pos.z - 7),
                        vector.new(s_pos.x + 7, s_pos.y + 17, s_pos.z + 7),
                        'air', true)

                    if air_positions.air and #air_positions.air > (16 * 15 * 16)  / 2 then
                        minetest.place_schematic_on_vmanip(
                            vm,
                            schem_pos,
                            schem,
                            'random',
                            nil,
                            true,
                            'place_center_x, place_center_z'
                        )

                        minetest.log('action', '[Everness] Forsaken Desert Temple 2 was placed at ' .. schem_pos:to_string())
                    end
                end
            end
        end

        vm:write_to_map(true)
        --minetest.fix_light(minp, maxp)
    end
end)]]

local mpath = minetest.get_modpath('everness')

--
-- Japanese Shrine
--

local schem_japanese_shrine = mpath .. '/schematics/everness_japanese_shrine.mts'

minetest.register_decoration({
    deco_type = 'schematic',
    place_on = {
        'everness:dirt_with_grass_1',
        'bambooforest:dirt_with_bamboo',
        'japaneseforest:japanese_dirt_with_grass',
        'ethereal:bamboo_dirt',
    },
    spawn_by = {
        'everness:dirt_with_grass_1',
        'bambooforest:dirt_with_bamboo',
        'japaneseforest:japanese_dirt_with_grass',
        'ethereal:bamboo_dirt',
    },
    num_spawn_by = 8,
    sidelen = 80,
    fill_ratio = 0.000015,
    biomes = {
        'everness_bamboo_forest',
        'bambooforest',
        'japaneseforest',
        'sakura',
    },
    y_max = 31000,
    y_min = 8,
    schematic = schem_japanese_shrine,
    rotation = "random",
    replacements = {
        ['default:stone'] = 'default:stonebrick',
        ['default:goldblock'] = 'too_many_stones:granite_yellow_brick',
    },
    flags = 'place_center_x,place_center_z,force_placement',
})

--
-- Jungle Temple
--

local schem_jungle_temple = mpath .. '/schematics/everness_jungle_temple.mts'

minetest.register_decoration({
    deco_type = 'schematic',
    place_on = {
        'default:dirt_with_rainforest_litter',
        'livingjungle:jungleground',
        'livingjungle:leafyjungleground',
    },
    spawn_by = {
        'default:dirt_with_rainforest_litter',
        'livingjungle:jungleground',
        'livingjungle:leafyjungleground',
    },
    num_spawn_by = 8,
    sidelen = 80,
    fill_ratio = 0.00007125,
    biomes = {
        'junglee',
        'livingjungle',
    },
    y_max = 31000,
    y_min = 8,
    place_offset_y = -3,
    schematic = schem_jungle_temple,
    rotation = "random",
    flags = 'place_center_x,place_center_z,force_placement',
})

--
-- Haunted House
--

local schem_haunted_house = mpath .. '/schematics/everness_haunted_house.mts'

minetest.register_decoration({
    deco_type = 'schematic',
    place_on = {
        "everness:dirt_with_cursed_grass",
        "badland:badland_grass",
    },
    spawn_by = {
        "everness:dirt_with_cursed_grass",
        "badland:badland_grass",
    },
    num_spawn_by = 8,
    sidelen = 80,
    fill_ratio = 0.000015,
    biomes = {
        "everness_cursed_lands",
        "badland",
    },
    y_max = 31000,
    y_min = 6,
    place_offset_y = -1,
    schematic = schem_haunted_house,
    rotation = "random",
    flags = 'place_center_x,place_center_z,force_placement',
})

--
-- Quartz Temple
--

local schem_quartz_temple = mpath .. '/schematics/everness_quartz_temple.mts'

minetest.register_decoration({
    deco_type = 'schematic',
    place_on = {
        'everness:dirt_with_crystal_grass',
        'everness:crystal_sand',
    },
    spawn_by = {
        'everness:dirt_with_crystal_grass',
        'everness:crystal_sand',
    },
    num_spawn_by = 8,
    sidelen = 80,
    fill_ratio = 0.000045,
    biomes = {
        'everness_crystal_forest',
    },
    y_max = 31000,
    y_min = 4,
    schematic = schem_quartz_temple,
    rotation = "random",
    flags = 'place_center_x,place_center_z,force_placement',
})

--
-- Forsaken Desert Temple
--

local schem_forsaken_desert_temple = mpath .. '/schematics/everness_forsaken_desert_temple.mts'

minetest.register_decoration({
    deco_type = 'schematic',
    place_on = {
        'everness:forsaken_desert_sand',
        'everness:forsaken_desert_chiseled_stone',
        'everness:forsaken_desert_brick',
        'everness:forsaken_desert_engraved_stone',
    },
    spawn_by = {
        'everness:forsaken_desert_sand',
        'everness:forsaken_desert_chiseled_stone',
        'everness:forsaken_desert_brick',
        'everness:forsaken_desert_engraved_stone',
    },
    num_spawn_by = 8,
    sidelen = 80,
    fill_ratio = 0.000025,
    biomes = {
        'everness_forsaken_desert',
    },
    y_max = 31000,
    y_min = 5,
    schematic = schem_forsaken_desert_temple,
    rotation = "random",
    flags = 'place_center_x,place_center_z,force_placement',
})

--
-- Giant Sequoia Tree
--

local sequoia_tree_schem = minetest.get_modpath('everness') .. '/schematics/everness_giant_sequoia_tree.mts'

abdecor.register_advanced_decoration('everness_giant_sequoia_tree',{
    target = {
        place_on = {
            'default:dirt_with_coniferous_litter',
            'default:dirt_with_snow',
            'default:dirt_with_dry_grass',
        },
        spawn_by = {
            'default:dirt_with_coniferous_litter',
            'default:dirt_with_snow',
            'default:dirt_with_dry_grass',
        },
        num_spawn_by = 8,
        sidelen = 80,
        fill_ratio = 0.000095,
        y_max = 31000,
        y_min = 8,
        biomes = {
            'mesa',
            'taiga',
            'coniferous_forest',
        },
    },
    fn = function(mapgen)
        -- Get provided values
        local pos = mapgen.pos
        local va = mapgen.voxelarea
        local vdata = mapgen.data
        local ystride = va.ystride
        local zstride = va.zstride

        -- Check that there is likely enough space to place a tree
        local vpos = va:index(pos.x,pos.y,pos.z)
        for i = 2, 20 do -- y
            if vdata[vpos + ystride * i] ~= minetest.CONTENT_AIR then
                return -- not enough ceiling clearance
            end
        end
        for i = -6, 6 do -- x
            if vdata[vpos + i] == minetest.CONTENT_AIR then
                return -- not enough space in the x dimension
            end
        end
        for i = -6, 6 do -- z
            if vdata[vpos + i * zstride] == minetest.CONTENT_AIR then
                return -- not enough space in the z dimension
            end
        end

        -- Roughly enough space, emerge mapchunks and place a sequoia tree
        minetest.emerge_area(
            vector.new(pos.x - 12, pos.y, pos.z - 12),
            vector.new(pos.x + 12, pos.y + 75, pos.z + 12),
            function(blockpos, action, calls_remaining, param)
                Everness:emerge_area(blockpos, action, calls_remaining, param)
            end,
            {
                callback = function()
                    -- Place sequoia tree
                    minetest.place_schematic(
                        pos,
                        sequoia_tree_schem,
                        'random',
                        nil,
                        true,
                        'place_center_x, place_center_z'
                    )

                    -- Fix lighting
                    minetest.fix_light(
                        { x = pos.x - 12, y = pos.y, z = pos.z - 12},
                        { x = pos.x + 12, y = pos.y + 75, z = pos.z + 12},
                        true
                    )
                end
            }
        )
    end,
})

--
-- Igloo
--

local schem_frosted_icesheet_igloo = mpath .. '/schematics/everness_frosted_icesheet_igloo.mts'

minetest.register_decoration({
    deco_type = 'schematic',
    place_on = {
        'everness:frosted_snowblock',
        'everness:frosted_ice',
        'default:snowblock',
    },
    spawn_by = {
        'everness:frosted_snowblock',
        'everness:frosted_ice',
        'default:snowblock',
    },
    num_spawn_by = 8,
    sidelen = 80,
    fill_ratio = 0.00005,
    biomes = {
        'everness_frosted_icesheet',
        'glacier',
    },
    y_max = 31000,
    y_min = 6,
    place_offset_y = -8,
    schematic = schem_frosted_icesheet_igloo,
    rotation = 'random',
    flags = 'place_center_x,place_center_z,force_placement',
})

--
-- Forsaken Desert Temple Underground
--

local schem_forsaken_desert_temple_2 = mpath .. '/schematics/everness_forsaken_desert_temple_2.mts'

abdecor.register_advanced_decoration("everness_forsaken_desert_temple_2",{
    target = {
        place_on = {
            'everness:forsaken_desert_sand',
            'everness:forsaken_desert_chiseled_stone',
            'everness:forsaken_desert_brick',
            'everness:forsaken_desert_engraved_stone',
        },
        sidelen = 80,
        fill_ratio = 0.00005,
        biomes = asuna.features.cave.forsaken_desert,
        y_max = -60,
        y_min = -31000,
        flags = 'all_floors',
    },
    fn = function(mapgen)
        -- Get provided values
        local pos = mapgen.pos
        local va = mapgen.voxelarea
        local vdata = mapgen.data
        local ystride = va.ystride
        local zstride = va.zstride

        -- Check that there is likely enough space to place a temple
        local vpos = va:index(pos.x,pos.y,pos.z)
        for i = 2, 17 do -- y
            if vdata[vpos + ystride * i] ~= minetest.CONTENT_AIR then
                return -- not enough ceiling clearance
            end
        end
        vpos = vpos + ystride * 8
        for i = -7, 7 do -- x
            if vdata[vpos + i] ~= minetest.CONTENT_AIR then
                return -- not enough space in the x dimension
            end
        end
        for i = -7, 7 do -- z
            if vdata[vpos + i * zstride] ~= minetest.CONTENT_AIR then
                return -- not enough space in the z dimension
            end
        end

        -- Roughly enough space, place a temple
        mapgen.place_schematic({
            pos = pos,
            schematic = schem_forsaken_desert_temple_2,
            flags = 'place_center_x,place_center_z',
        })

        -- Fix light
        mapgen.calc_lighting(
            { x = pos.x - 7, y = pos.y, z = pos.z - 7 },
            { x = pos.x + 7, y = pos.y + 17, z = pos.z + 7 },
            true
        )
    end,
    flags = {
        schematic = true,
    },
})

--
-- Underground Mese Tree
--

local mese_tree_schem = minetest.get_modpath('everness') .. '/schematics/everness_mese_tree.mts'

abdecor.register_advanced_decoration('everness_mese_tree_underground',{
    target = {
        place_on = 'everness:moss_block',
        sidelen = 80,
        fill_ratio = 0.0001,
        y_max = -300,
        y_min = -31000,
        biomes = asuna.features.cave.bamboo,
        flags = 'all_floors',
    },
    fn = function(mapgen)
        -- Get provided values
        local pos = mapgen.pos
        local va = mapgen.voxelarea
        local vdata = mapgen.data
        local ystride = va.ystride
        local zstride = va.zstride

        -- Check that there is likely enough space to place a tree
        local vpos = va:index(pos.x,pos.y,pos.z)
        for i = 2, 10 do -- y
            if vdata[vpos + ystride * i] ~= minetest.CONTENT_AIR then
                return -- not enough ceiling clearance
            end
        end
        vpos = vpos + ystride * 5
        for i = -3, 3 do -- x
            if vdata[vpos + i] ~= minetest.CONTENT_AIR then
                return -- not enough space in the x dimension
            end
        end
        for i = -3, 3 do -- z
            if vdata[vpos + i * zstride] ~= minetest.CONTENT_AIR then
                return -- not enough space in the z dimension
            end
        end

        -- Roughly enough space, place a mese tree
        mapgen.place_schematic({
            pos = pos,
            schematic = mese_tree_schem,
            flags = 'place_center_x,place_center_z',
        })

        -- Fix lighting
        mapgen.calc_lighting(
            { x = pos.x - 3, y = pos.y, z = pos.z - 3 },
            { x = pos.x + 3, y = pos.y + 10, z = pos.z + 3 },
            true
        )
    end,
    flags = {
        schematic = true,
    }
})