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

local S = minetest.get_translator(minetest.get_current_modname())

--- Base class
---@class Everness
---@field bamboo {['growth_stages']: table<number, table>, ['top_leaves_schem']: table}
---@field loot_chest {['default']: table[]}
Everness = {
    bamboo = {
        -- based on height
        growth_stages = {
            --height
            [1] = {
                -- next plant
                { name = 'everness:bamboo_1' },
                { name = 'everness:bamboo_2' },
            },
            [2] = {
                { name = 'everness:bamboo_1' },
                { name = 'everness:bamboo_2' },
                { name = 'everness:bamboo_2' },
            },
            [3] = {
                { name = 'everness:bamboo_3' },
                { name = 'everness:bamboo_4' },
                { name = 'everness:bamboo_4' },
                { name = 'everness:bamboo_5' },
            },
            [4] = {
                { name = 'everness:bamboo_3' },
                { name = 'everness:bamboo_3' },
                { name = 'everness:bamboo_4' },
                { name = 'everness:bamboo_5' },
                { name = 'everness:bamboo_5' },
            },
        },
        top_leaves_schem = {
            { name = 'everness:bamboo_4' },
            { name = 'everness:bamboo_5' },
            { name = 'everness:bamboo_5' },
        }
    },
    loot_chest = {
        default = {},
    },
    settings = {
        biomes = {
            everness_coral_forest = {
                enabled = minetest.settings:get_bool('everness_coral_forest', true),
                y_max = tonumber(minetest.settings:get('everness_coral_forest_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_coral_forest_y_min')) or 4,
            },
            everness_coral_forest_dunes = {
                enabled = minetest.settings:get_bool('everness_coral_forest_dunes', false),
                y_max = tonumber(minetest.settings:get('everness_coral_forest_dunes_y_max')) or 5,
                y_min = tonumber(minetest.settings:get('everness_coral_forest_dunes_y_min')) or 4,
            },
            everness_coral_forest_ocean = {
                enabled = minetest.settings:get_bool('everness_coral_forest_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_coral_forest_ocean_y_max')) or -2,
                y_min = tonumber(minetest.settings:get('everness_coral_forest_ocean_y_min')) or -10,
            },
            everness_coral_forest_deep_ocean = {
                enabled = minetest.settings:get_bool('everness_coral_forest_deep_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_coral_forest_deep_ocean_y_max')) or -11,
                y_min = tonumber(minetest.settings:get('everness_coral_forest_deep_ocean_y_min')) or -36,
            },
            everness_coral_forest_under = {
                enabled = minetest.settings:get_bool('everness_coral_forest_under', true),
                y_max = tonumber(minetest.settings:get('everness_coral_forest_under_y_max')) or 0,
                y_min = tonumber(minetest.settings:get('everness_coral_forest_under_y_min')) or -31000,
            },
            everness_frosted_icesheet = {
                enabled = minetest.settings:get_bool('everness_frosted_icesheet', true),
                y_max = tonumber(minetest.settings:get('everness_frosted_icesheet_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_frosted_icesheet_y_min')) or -9,
            },
            everness_frosted_icesheet_ocean = {
                enabled = minetest.settings:get_bool('everness_frosted_icesheet_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_frosted_icesheet_ocean_y_max')) or -9,
                y_min = tonumber(minetest.settings:get('everness_frosted_icesheet_ocean_y_min')) or -36,
            },
            everness_frosted_icesheet_under = {
                enabled = minetest.settings:get_bool('everness_frosted_icesheet_under', true),
                y_max = tonumber(minetest.settings:get('everness_frosted_icesheet_under_y_max')) or 0,
                y_min = tonumber(minetest.settings:get('everness_frosted_icesheet_under_y_min')) or -31000,
            },
            everness_cursed_lands = {
                enabled = minetest.settings:get_bool('everness_cursed_lands', true),
                y_max = tonumber(minetest.settings:get('everness_cursed_lands_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_cursed_lands_y_min')) or 3,
            },
            everness_cursed_lands_dunes = {
                enabled = minetest.settings:get_bool('everness_cursed_lands_dunes', false),
                y_max = tonumber(minetest.settings:get('everness_cursed_lands_dunes_y_max')) or 5,
                y_min = tonumber(minetest.settings:get('everness_cursed_lands_dunes_y_min')) or 1,
            },
            everness_cursed_lands_swamp = {
                enabled = minetest.settings:get_bool('everness_cursed_lands_swamp', true),
                y_max = tonumber(minetest.settings:get('everness_cursed_lands_swamp_y_max')) or 0,
                y_min = tonumber(minetest.settings:get('everness_cursed_lands_swamp_y_min')) or -1,
            },
            everness_cursed_lands_ocean = {
                enabled = minetest.settings:get_bool('everness_cursed_lands_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_cursed_lands_ocean_y_max')) or -2,
                y_min = tonumber(minetest.settings:get('everness_cursed_lands_ocean_y_min')) or -10,
            },
            everness_cursed_lands_deep_ocean = {
                enabled = minetest.settings:get_bool('everness_cursed_lands_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_cursed_lands_deep_ocean_y_max')) or -11,
                y_min = tonumber(minetest.settings:get('everness_cursed_lands_deep_ocean_y_min')) or -36,
            },
            everness_cursed_lands_under = {
                enabled = minetest.settings:get_bool('everness_cursed_lands_under', true),
                y_max = tonumber(minetest.settings:get('everness_cursed_lands_under_y_max')) or 0,
                y_min = tonumber(minetest.settings:get('everness_cursed_lands_under_y_min')) or -31000,
            },
            everness_crystal_forest = {
                enabled = minetest.settings:get_bool('everness_crystal_forest', true),
                y_max = tonumber(minetest.settings:get('everness_crystal_forest_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_crystal_forest_y_min')) or 4,
            },
            everness_crystal_forest_dunes = {
                enabled = minetest.settings:get_bool('everness_crystal_forest_dunes', false),
                y_max = tonumber(minetest.settings:get('everness_crystal_forest_dunes_y_max')) or 5,
                y_min = tonumber(minetest.settings:get('everness_crystal_forest_dunes_y_min')) or 1,
            },
            everness_crystal_forest_shore = {
                enabled = minetest.settings:get_bool('everness_crystal_forest_shore', true),
                y_max = tonumber(minetest.settings:get('everness_crystal_forest_shore_y_max')) or 3,
                y_min = tonumber(minetest.settings:get('everness_crystal_forest_shore_y_min')) or -1,
            },
            everness_crystal_forest_ocean = {
                enabled = minetest.settings:get_bool('everness_crystal_forest_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_crystal_forest_ocean_y_max')) or -2,
                y_min = tonumber(minetest.settings:get('everness_crystal_forest_ocean_y_min')) or -10,
            },
            everness_crystal_forest_deep_ocean = {
                enabled = minetest.settings:get_bool('everness_crystal_forest_deep_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_crystal_forest_deep_ocean_y_max')) or -11,
                y_min = tonumber(minetest.settings:get('everness_crystal_forest_deep_ocean_y_min')) or -36,
            },
            everness_crystal_forest_under = {
                enabled = minetest.settings:get_bool('everness_crystal_forest_under', true),
                y_max = tonumber(minetest.settings:get('everness_crystal_forest_under_y_max')) or 0,
                y_min = tonumber(minetest.settings:get('everness_crystal_forest_under_y_min')) or -31000,
            },
            everness_bamboo_forest = {
                enabled = minetest.settings:get_bool('everness_bamboo_forest', false),
                y_max = tonumber(minetest.settings:get('everness_bamboo_forest_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_bamboo_forest_y_min')) or 1,
            },
            everness_bamboo_forest_under = {
                enabled = minetest.settings:get_bool('everness_bamboo_forest_under', true),
                y_max = tonumber(minetest.settings:get('everness_bamboo_forest_under_y_max')) or 0,
                y_min = tonumber(minetest.settings:get('everness_bamboo_forest_under_y_min')) or -31000,
            },
            everness_forsaken_desert = {
                enabled = minetest.settings:get_bool('everness_forsaken_desert', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_desert_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_forsaken_desert_y_min')) or 4,
            },
            everness_forsaken_desert_ocean = {
                enabled = minetest.settings:get_bool('everness_forsaken_desert_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_desert_ocean_y_max')) or -2,
                y_min = tonumber(minetest.settings:get('everness_forsaken_desert_ocean_y_min')) or -36,
            },
            everness_forsaken_desert_under = {
                enabled = minetest.settings:get_bool('everness_forsaken_desert_under', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_desert_under_y_max')) or 0,
                y_min = tonumber(minetest.settings:get('everness_forsaken_desert_under_y_min')) or -31000,
            },
            everness_baobab_savanna = {
                enabled = minetest.settings:get_bool('everness_baobab_savanna', false),
                y_max = tonumber(minetest.settings:get('everness_baobab_savanna_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_baobab_savanna_y_min')) or 4,
            },
            everness_forsaken_tundra = {
                enabled = minetest.settings:get_bool('everness_forsaken_tundra', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_tundra_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_forsaken_tundra_y_min')) or 4,
            },
            everness_forsaken_tundra_beach = {
                enabled = minetest.settings:get_bool('everness_forsaken_tundra_beach', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_tundra_beach_y_max')) or 1,
                y_min = tonumber(minetest.settings:get('everness_forsaken_tundra_beach_y_min')) or -3,
            },
            everness_forsaken_tundra_ocean = {
                enabled = minetest.settings:get_bool('everness_forsaken_tundra_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_tundra_ocean_y_max')) or -2,
                y_min = tonumber(minetest.settings:get('everness_forsaken_tundra_ocean_y_min')) or -36,
            },
            everness_forsaken_tundra_under = {
                enabled = minetest.settings:get_bool('everness_forsaken_tundra_under', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_tundra_under_y_max')) or 0,
                y_min = tonumber(minetest.settings:get('everness_forsaken_tundra_under_y_min')) or -31000,
            },
        },
        features = {
            everness_feature_sneak_pickup = minetest.settings:get_bool('everness_feature_sneak_pickup', false),
            everness_feature_skybox = minetest.settings:get_bool('everness_feature_skybox', false),
        }
    },
}

function Everness.grow_cactus(self, pos, node, params)
    local node_copy = table.copy(node)

    if node.param2 >= 4 then
        return
    end

    pos.y = pos.y - 1

    if minetest.get_item_group(minetest.get_node(pos).name, 'sand') == 0
        and minetest.get_item_group(minetest.get_node(pos).name, 'everness_sand') == 0
    then
        return
    end

    pos.y = pos.y + 1

    local height = 0

    while (node.name == 'everness:cactus_orange' or node.name == 'everness:cactus_blue') and height < 5 do
        height = height + 1
        pos.y = pos.y + 1
        node = minetest.get_node(pos)
    end

    if height == 5 or node.name ~= 'air' then
        return
    end

    if minetest.get_node_light(pos) < 13 then
        return
    end

    minetest.set_node(pos, { name = node_copy.name })

    return true
end

function Everness.emerge_area(self, blockpos, action, calls_remaining, param)
    if not param.total then
        param.total = calls_remaining + 1
        param.current = 0
    end

    param.current = param.current + 1

    if param.total == param.current then
        param.callback(param.data)
    end
end

-- how often node timers for plants will tick, +/- some random value
function Everness.tick_vine(self, pos)
    minetest.get_node_timer(pos):start(math.random(5, 10))
end

-- how often a growth failure tick is retried (e.g. too dark)
function Everness.tick_vine_again(self, pos)
    minetest.get_node_timer(pos):start(math.random(40, 80))
end

-- how often node timers for plants will tick, +/- some random value
function Everness.tick_sulfur_stone(self, pos)
    minetest.get_node_timer(pos):start(math.random(5, 10))
end

-- how often a growth failure tick is retried (e.g. too dark)
function Everness.tick_sulfur_stone_again(self, pos)
    minetest.get_node_timer(pos):start(math.random(40, 80))
end

function Everness.grow_vine(self, pos, elapsed, params)
    local node = minetest.get_node(pos)
    local pos_under = vector.new(pos.x, pos.y - 1, pos.z)
    local node_under = minetest.get_node(pos_under)
    local node_names = params.node_names
    local end_node_name = params.end_node_name
    local end_node_param2 = params.end_node_param2

    -- get length
    local length = 0
    local temp_node = node

    while minetest.get_item_group(temp_node.name, 'vine') > 0 and length < 16 do
        length = length + 1
        temp_node = minetest.get_node(vector.new(pos.x, pos.y + length, pos.z))
    end

    -- stop growing - random height between 12 - 16 nodes
    if length > 11 and length < 16 then
        if math.random(1, 3) == 2 then
            return
        end
    end

    if length >= 16 then
        return
    end

    if minetest.get_item_group(node_under.name, 'vine') > 0 then
        -- stop timer for gown vine
        return
    end

    if node_under.name ~= 'air' then
        Everness:tick_vine_again(pos)
        return
    end

    local new_node_name = node_names[math.random(1, #node_names)]

    minetest.set_node(pos, { name = new_node_name, param2 = node.param2 })
    -- last hanging vine
    minetest.set_node(pos_under, { name = end_node_name, param2 = end_node_param2 and end_node_param2 or node.param2 })

    Everness:tick_vine(pos_under)
end

function Everness.dig_vine(self, pos, node_name, digger)
    --only dig give the vine if shears are used
    if not digger then
        return
    end

    local wielded_item = digger:get_wielded_item()

    if 'everness:vine_shears' == wielded_item:get_name() then
        local inv = digger:get_inventory()

        if inv then
            inv:add_item('main', ItemStack(node_name))
        end
    end
end

--
-- Sounds
--

function Everness.node_sound_frosted_snow_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_frosted_snow_footstep', gain = 0.2 }
    table.dig = table.dig or { name = 'everness_frosted_snow_hit', gain = 0.2 }
    table.dug = table.dug or { name = 'everness_frosted_snow_footstep', gain = 0.3 }
    table.place = table.place or { name = 'everness_frosted_snow_place', gain = 0.25 }
    return table
end

function Everness.node_sound_crystal_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_crystal_chime', gain = 0.2 }
    table.dig = table.dig or { name = 'everness_crystal_chime', gain = 0.3 }
    table.dug = table.dug or { name = 'everness_stone_footstep', gain = 0.3 }
    table.place = table.place or { name = 'everness_crystal_chime', gain = 1.0 }
    return table
end

function Everness.node_sound_bamboo_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_bamboo_hit', gain = 0.2 }
    table.dig = table.dig or { name = 'everness_bamboo_hit', gain = 0.3 }
    table.dug = table.dug or { name = 'everness_bamboo_dug', gain = 0.1 }
    table.place = table.place or { name = 'everness_bamboo_hit', gain = 1.0 }
    return table
end

function Everness.node_sound_mud_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_mud_footstep', gain = 0.2 }
    table.dig = table.dig or { name = 'everness_mud_footstep', gain = 0.3 }
    table.dug = table.dug or { name = 'everness_mud_footstep', gain = 0.1 }
    table.place = table.place or { name = 'everness_mud_footstep', gain = 1.0 }
    return table
end

function Everness.node_sound_grass_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_grass_footstep', gain = 0.4 }
    table.dig = table.dig or { name = 'everness_grass_hit', gain = 1.2 }
    table.dug = table.dug or { name = 'everness_dirt_hit', gain = 1.0 }
    table.place = table.place or { name = 'everness_dirt_hit', gain = 1.0 }
    return table
end

function Everness.node_sound_dirt_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_dirt_footstep', gain = 0.15 }
    table.dig = table.dig or { name = 'everness_dirt_hit', gain = 0.4 }
    table.dug = table.dug or { name = 'everness_dirt_hit', gain = 1.0 }
    table.place = table.place or { name = 'everness_dirt_hit', gain = 1.0 }
    return table
end

function Everness.node_sound_ice_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_ice_footstep', gain = 0.2 }
    table.dig = table.dig or { name = 'everness_ice_hit', gain = 0.4 }
    table.dug = table.dug or { name = 'everness_ice_hit', gain = 1.0 }
    table.place = table.place or { name = 'everness_ice_hit', gain = 1.0 }
    return table
end

function Everness.node_sound_stone_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_stone_footstep', gain = 0.2 }
    table.dig = table.dig or { name = 'everness_stone_hit', gain = 1.0 }
    table.dug = table.dug or { name = 'everness_stone_dug', gain = 0.6 }
    table.place = table.place or { name = 'everness_stone_place', gain = 1.0 }
    return table
end

function Everness.node_sound_leaves_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_leaves_footstep', gain = 0.1 }
    table.dig = table.dig or { name = 'everness_leaves_hit', gain = 0.25 }
    table.dug = table.dug or { name = 'everness_leaves_dug', gain = 0.5 }
    table.place = table.place or { name = 'everness_leaves_place', gain = 0.4 }
    return table
end

function Everness.node_sound_wood_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_wood_footstep', gain = 0.15 }
    table.dig = table.dig or { name = 'everness_wood_hit', gain = 0.5 }
    table.dug = table.dug or { name = 'everness_wood_place', gain = 0.1 }
    table.place = table.place or { name = 'everness_wood_place', gain = 0.15 }
    return table
end

function Everness.node_sound_sand_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_sand_footstep', gain = 0.1 }
    table.dig = table.dig or { name = 'everness_sand_hit', gain = 0.5 }
    table.dug = table.dug or { name = 'everness_sand_dug', gain = 0.1 }
    table.place = table.place or { name = 'everness_sand_place', gain = 0.15 }
    return table
end

function Everness.node_sound_metal_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_metal_footstep', gain = 0.1 }
    table.dig = table.dig or { name = 'everness_metal_hit', gain = 0.5 }
    table.dug = table.dug or { name = 'everness_metal_dug', gain = 0.1 }
    table.place = table.place or { name = 'everness_metal_place', gain = 0.15 }
    return table
end

function Everness.node_sound_glass_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_glass_footstep', gain = 0.02 }
    table.dig = table.dig or { name = 'everness_glass_footstep', gain = 0.05 }
    table.dug = table.dug or { name = 'everness_glass_dug', gain = 0.4 }
    table.place = table.place or { name = 'everness_glass_place', gain = 0.2 }
    return table
end

function Everness.node_sound_thin_glass_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_thin_glass_footstep', gain = 0.3 }
    table.dig = table.dig or { name = 'everness_thin_glass_footstep', gain = 0.5 }
    table.dug = table.dug or { name = 'everness_break_thin_glass', gain = 1.0 }
    table.place = table.place or { name = 'everness_glass_place', gain = 0.2 }
    return table
end

function Everness.node_sound_snow_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_snow_footstep', gain = 0.1 }
    table.dig = table.dig or { name = 'everness_snow_hit', gain = 0.2 }
    table.dug = table.dug or { name = 'everness_snow_footstep', gain = 0.2 }
    table.place = table.place or { name = 'everness_snow_place', gain = 0.3 }
    return table
end

--
-- Forsted Cave Icicles
--

function Everness.stack_icicle_recursive(node, pos_node, incrementer, pos_marker, direction)
    local nb = node
    local pos = pos_node
    local inc = incrementer
    local m_pos = pos_marker

    while nb.name == 'air' or nb.name == 'ignore' do
        if nb.name == 'ignore' then
            Everness.emerge_icicle_area_recursive(pos, inc, m_pos, direction)
            break
        else
            minetest.set_node(pos, { name = 'everness:frosted_cave_ice_illuminating' })
            -- Shift 1 down
            inc = inc + 1
            local y_offset = (direction == 'down') and (m_pos.y - inc) or (m_pos.y + inc)
            pos = vector.new(m_pos.x, y_offset, m_pos.z)
            nb = minetest.get_node(pos)
        end
    end
end

function Everness.emerge_icicle_area_recursive(pos_node, incrementer, pos_marker, direction)
    local y_offset = (direction == 'down') and (pos_node.y - 16) or (pos_node.y + 16)

    minetest.emerge_area(
        vector.new(pos_node.x - 1, pos_node.y, pos_node.z - 1),
        vector.new(pos_node.x + 1, y_offset, pos_node.z + 1),
        function(blockpos, action, calls_remaining, param)
            Everness:emerge_area(blockpos, action, calls_remaining, param)
        end,
        {
            callback = function(data)
                local incrementer_cllbck = data.incrementer
                local pos_node_cllbck = data.pos_node
                local node_cllbck = minetest.get_node(pos_node_cllbck)

                Everness.stack_icicle_recursive(node_cllbck, pos_node_cllbck, incrementer_cllbck, pos_marker, direction)
            end,
            data = {
                incrementer = incrementer,
                pos_node = pos_node
            }
        }
    )
end

function Everness.use_shell_of_underwater_breathing(self, itemstack, user, pointed_thing)
    if not user then
        return
    end

    local pos_player = user:get_pos()

    if pointed_thing.type == 'node' then
        local pos_pt = minetest.get_pointed_thing_position(pointed_thing)

        if not pos_pt then
            return itemstack
        end

        local pointed_node = minetest.get_node(pos_pt)
        local pointed_node_def = minetest.registered_nodes[pointed_node.name]

        if not pointed_node or not pointed_node_def then
            return itemstack
        end

        if pointed_node_def.on_rightclick then
            return pointed_node_def.on_rightclick(pos_pt, pointed_node, user, itemstack, pointed_thing)
        end
    end

    local node_head = minetest.get_node(
        vector.new(
            math.floor(pos_player.x + 0.5),
            math.ceil(pos_player.y + 1),
            math.floor(pos_player.z + 0.5)
        )
    )
    local breath = user:get_breath()

    if minetest.get_item_group(node_head.name, 'water') > 0 and breath < 9 then
        -- Under water
        user:set_breath(9)

        if not minetest.settings:get_bool('creative_mode')
            or not minetest.check_player_privs(user:get_player_name(), { creative = true })
        then
            itemstack:add_wear(65535 / 20)
        end

        minetest.sound_play('everness_underwater_bubbles', {
            object = user,
            gain = 1.0,
            max_hear_distance = 16
        })

        minetest.add_particlespawner({
            amount = 20,
            time = 0.1,
            pos = {
                min = vector.new(pos_player.x - 0.25, pos_player.y + 1.25, pos_player.z - 0.25),
                max = vector.new(pos_player.x + 0.25, pos_player.y + 1.5, pos_player.z + 0.25)
            },
            vel = {
                min = vector.new(-0.5, 0, -0.5),
                max = vector.new(0.5, 0, 0.5)
            },
            acc = {
                min = vector.new(-0.5, 4, -0.5),
                max = vector.new(0.5, 1, 0.5),
            },
            exptime = {
                min = 1,
                max = 2
            },
            size = {
                min = 0.5,
                max = 2
            },
            texture = {
                name = 'everness_bubble.png',
                alpha_tween = {
                    1, 0,
                    start = 0.75
                }
            }
        })
    end

    return itemstack
end

--
-- Sapling 'on place' function to check protection of node and resulting tree volume
-- copy from MTG
--
function Everness.sapling_on_place(self, itemstack, placer, pointed_thing, props)
    if minetest.get_modpath('mcl_util') and minetest.global_exists('mcl_util') then
        local on_place_func = mcl_util.generate_on_place_plant_function(function(pos, node)
            local node_below = minetest.get_node_or_nil({ x = pos.x, y = pos.y - 1, z = pos.z })

            if not node_below then
                return false
            end

            local nn = node_below.name

            return minetest.get_item_group(nn, 'grass_block') == 1
                or nn == 'mcl_core:podzol'
                or nn == 'mcl_core:podzol_snow'
                or nn == 'mcl_core:dirt'
                or nn == 'mcl_core:mycelium'
                or nn == 'mcl_core:coarse_dirt'
        end)

        return on_place_func(itemstack, placer, pointed_thing)
    else
        local _props = props or {}
        local sapling_name = _props.sapling_name
        -- minp, maxp to be checked, relative to sapling pos
        -- minp_relative.y = 1 because sapling pos has been checked
        local minp_relative = _props.minp_relative
        local maxp_relative = _props.maxp_relative
        -- maximum interval of interior volume check
        local interval = _props.interval

        -- Position of sapling
        local pos = pointed_thing.under
        local node = minetest.get_node_or_nil(pos)
        local pdef = node and minetest.registered_nodes[node.name]

        if pdef and node and pdef.on_rightclick
            and not (placer and placer:is_player()
            and placer:get_player_control().sneak)
        then
            return pdef.on_rightclick(pos, node, placer, itemstack, pointed_thing)
        end

        if not pdef or not pdef.buildable_to then
            pos = pointed_thing.above
            node = minetest.get_node_or_nil(pos)
            pdef = node and minetest.registered_nodes[node.name]

            if not pdef or not pdef.buildable_to then
                return itemstack
            end
        end

        local player_name = placer and placer:get_player_name() or ''

        -- Check sapling position for protection
        if minetest.is_protected(pos, player_name) then
            minetest.record_protection_violation(pos, player_name)
            return itemstack
        end

        -- Check tree volume for protection
        if minetest.is_area_protected(
                vector.add(pos, minp_relative),
                vector.add(pos, maxp_relative),
                player_name,
                interval
            )
        then
            minetest.record_protection_violation(pos, player_name)
            minetest.chat_send_player(
                player_name,
                S('@1 will intersect protection on growth.', itemstack:get_definition().description)
            )

            return itemstack
        end

        Everness.log_player_action(placer, 'places node', sapling_name, 'at', pos)

        local take_item = not minetest.is_creative_enabled(player_name)
        local newnode = { name = sapling_name }
        local ndef = minetest.registered_nodes[sapling_name]

        minetest.set_node(pos, newnode)

        -- Run callback
        if ndef and ndef.after_place_node then
            -- Deepcopy place_to and pointed_thing because callback can modify it
            if ndef.after_place_node(table.copy(pos), placer,
                    itemstack, table.copy(pointed_thing)) then
                take_item = false
            end
        end

        -- Run script hook
        for _, callback in ipairs(minetest.registered_on_placenodes or {}) do
            -- Deepcopy pos, node and pointed_thing because callback can modify them
            if callback(table.copy(pos), table.copy(newnode),
                    placer, table.copy(node or {}),
                    itemstack, table.copy(pointed_thing)) then
                take_item = false
            end
        end

        if take_item then
            itemstack:take_item()
        end

        return itemstack
    end
end

--
-- Leafdecay - taken from MTG
--

-- Prevent decay of placed leaves

Everness.after_place_leaves = function(self, pos, placer, itemstack, pointed_thing)
    if placer and placer:is_player() then
        local node = minetest.get_node(pos)
        node.param2 = 1
        minetest.set_node(pos, node)
    end
end

-- Leafdecay
local function leafdecay_after_destruct(pos, oldnode, def)
    for _, v in pairs(minetest.find_nodes_in_area(vector.subtract(pos, def.radius),
        vector.add(pos, def.radius), def.leaves))
    do
        local node = minetest.get_node(v)
        local timer = minetest.get_node_timer(v)
        if node.param2 ~= 1
            and minetest.get_meta(v):get_int('everness_prevent_leafdecay') ~= 1
            and not timer:is_started()
        then
            timer:start(math.random(20, 120) / 10)
        end
    end
end

local movement_gravity = tonumber(minetest.settings:get('movement_gravity')) or 9.81

local function leafdecay_on_timer(pos, def)
    if minetest.find_node_near(pos, def.radius, def.trunks) then
        return false
    end

    local node = minetest.get_node(pos)
    local drops = minetest.get_node_drops(node.name)

    for _, item in ipairs(drops) do
        local is_leaf
        for _, v in pairs(def.leaves) do
            if v == item then
                is_leaf = true
            end
        end
        if minetest.get_item_group(item, 'leafdecay_drop') ~= 0
            or not is_leaf
        then
            minetest.add_item({
                x = pos.x - 0.5 + math.random(),
                y = pos.y - 0.5 + math.random(),
                z = pos.z - 0.5 + math.random(),
            }, item)
        end
    end

    minetest.remove_node(pos)
    minetest.check_for_falling(pos)

    -- spawn a few particles for the removed node
    minetest.add_particlespawner({
        amount = 8,
        time = 0.001,
        minpos = vector.subtract(pos, { x = 0.5, y = 0.5, z = 0.5 }),
        maxpos = vector.add(pos, { x = 0.5, y = 0.5, z = 0.5 }),
        minvel = vector.new(-0.5, -1, -0.5),
        maxvel = vector.new(0.5, 0, 0.5),
        minacc = vector.new(0, -movement_gravity, 0),
        maxacc = vector.new(0, -movement_gravity, 0),
        minsize = 0,
        maxsize = 0,
        node = node,
    })
end

function Everness.register_leafdecay(self, def)
    assert(def.leaves)
    assert(def.trunks)
    assert(def.radius)

    for _, v in pairs(def.trunks) do
        minetest.override_item(v, {
            after_destruct = function(pos, oldnode)
                leafdecay_after_destruct(pos, oldnode, def)
            end,
        })
    end

    for _, v in pairs(def.leaves) do
        minetest.override_item(v, {
            on_timer = function(pos)
                leafdecay_on_timer(pos, def)
            end,
        })
    end
end

function Everness.register_node(self, name, def, props)
    local _def = table.copy(def)
    local _name = name

    minetest.register_node(_name, _def)
end

--
-- Log API / helpers - copy from MTG
--

local log_non_player_actions = minetest.settings:get_bool('log_non_player_actions', false)

local is_pos = function(v)
    return type(v) == 'table'
        and type(v.x) == 'number'
        and type(v.y) == 'number'
        and type(v.z) == 'number'
end

function Everness.log_player_action(player, ...)
    local msg = player:get_player_name()
    if player.is_fake_player or not player:is_player() then
        if not log_non_player_actions then
            return
        end

        msg = msg .. '(' .. (type(player.is_fake_player) == 'string'
            and player.is_fake_player or '*') .. ')'
    end
    for _, v in ipairs({ ... }) do
        -- translate pos
        local part = is_pos(v) and minetest.pos_to_string(v) or v
        -- no leading spaces before punctuation marks
        msg = msg .. (string.match(part, '^[;,.]') and '' or ' ') .. part
    end

    minetest.log('action', msg)
end

function Everness.set_inventory_action_loggers(def, name)
    def.on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
        Everness.log_player_action(player, 'moves stuff in', name, 'at', pos)
    end
    def.on_metadata_inventory_put = function(pos, listname, index, stack, player)
        Everness.log_player_action(player, 'moves', stack:get_name(), 'to', name, 'at', pos)
    end
    def.on_metadata_inventory_take = function(pos, listname, index, stack, player)
        Everness.log_player_action(player, 'takes', stack:get_name(), 'from', name, 'at', pos)
    end
end

-- 'can grow' function - copy from MTG

function Everness.can_grow(pos)
    local node_under = minetest.get_node_or_nil({ x = pos.x, y = pos.y - 1, z = pos.z })

    if not node_under then
        return false
    end

    if minetest.get_item_group(node_under.name, 'soil') == 0 then
        return false
    end

    local light_level = minetest.get_node_light(pos)

    if not light_level or light_level < 13 then
        return false
    end

    return true
end

--
-- This method may change in future.
-- Copy from MTG
--

function Everness.can_interact_with_node(player, pos)
    if player and player:is_player() then
        if minetest.check_player_privs(player, 'protection_bypass') then
            return true
        end
    else
        return false
    end

    local meta = minetest.get_meta(pos)
    local owner = meta:get_string('owner')

    if not owner or owner == '' or owner == player:get_player_name() then
        return true
    end

    -- Is player wielding the right key?
    local item = player:get_wielded_item()

    if minetest.get_item_group(item:get_name(), 'key') == 1 then
        local key_meta = item:get_meta()

        if key_meta:get_string('secret') == '' then
            local key_oldmeta = item:get_metadata()

            if key_oldmeta == '' or not minetest.parse_json(key_oldmeta) then
                return false
            end

            key_meta:set_string('secret', minetest.parse_json(key_oldmeta).secret)
            item:set_metadata('')
        end

        return meta:get_string('key_lock_secret') == key_meta:get_string('secret')
    end

    return false
end

--
-- Optimized helper to put all items in an inventory into a drops list
-- copy from MTG
--

function Everness.get_inventory_drops(pos, inventory, drops)
    local inv = minetest.get_meta(pos):get_inventory()
    local n = #drops
    for i = 1, inv:get_size(inventory) do
        local stack = inv:get_stack(inventory, i)
        if stack:get_count() > 0 then
            drops[n + 1] = stack:to_table()
            n = n + 1
        end
    end
end

function Everness.set_loot_chest_items()
    local loot_items = {}

    for name, def in pairs(minetest.registered_items) do
        if def.groups
            and next(def.groups)
            and (not def.groups.not_in_creative_inventory or def.groups.not_in_creative_inventory == 0)
        then
            table.insert(loot_items, {
                name = name,
                max_count = 10,
                chance = 25
            })
        end
    end

    Everness.loot_chest.default = table.copy(loot_items)
end
