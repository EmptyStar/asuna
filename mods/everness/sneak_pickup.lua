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

local DELAY = 0
local TIMER = 0

local function pick_dropped_items(player)
    local pos = player:get_pos()
    local inv = player:get_inventory()

    if not inv then
        return
    end

    local objects = minetest.get_objects_inside_radius(pos, 3)
    local objects_to_collect = {}

    -- filter - leave only builtin items
    for _, object in ipairs(objects) do
        if not object:is_player()
            and object:get_luaentity()
            and object:get_luaentity().name == '__builtin:item'
            and object:get_luaentity().itemstring ~= ''
        then
            table.insert(objects_to_collect, object)
        end
    end

    -- sort with the oldest objects first
    table.sort(objects_to_collect, function(a, b)
        return b:get_luaentity().age < a:get_luaentity().age
    end)

    for _, object in ipairs(objects_to_collect) do
        local itemstack = ItemStack(object:get_luaentity().itemstring)

        if inv:room_for_item('main', itemstack) and not object:get_luaentity()._being_collected
        then
            inv:add_item('main', itemstack)
            object:get_luaentity()._being_collected = true
            object:set_acceleration({ x = 0, y = 0, z = 0 })
            object:set_velocity({ x = 0, y = 0, z = 0 })
            object:get_luaentity().physical_state = false
            object:get_luaentity().object:set_properties({ physical = false })

            local pos_obj = object:get_pos()

            object:move_to(vector.new(
                (pos.x - pos_obj.x) + pos_obj.x,
                (pos.y - pos_obj.y) + pos_obj.y + 1.25,
                (pos.z - pos_obj.z) + pos_obj.z
            ))

            minetest.sound_play('everness_item_drop_pickup', {
                pos = pos,
                max_hear_distance = 16,
                gain = 0.4,
            })

            minetest.after(0.25, function(v_object)
                if v_object and v_object:get_luaentity() then
                    v_object:remove()
                end
            end, object)
        end
    end
end

minetest.register_on_joinplayer(function(player)
    local player_meta = player:get_meta()
    player_meta:set_int('everness_is_sneaking', 0)
end)

minetest.register_globalstep(function(dtime)
    TIMER = TIMER + dtime

    if DELAY > 0 then
        DELAY = DELAY - dtime
    elseif DELAY < 0 then
        DELAY = 0
    end

    if TIMER > 0.5 then
        for _, player in ipairs(minetest.get_connected_players()) do
            local player_meta = player:get_meta()
            local control = player:get_player_control()
            local player_hp = player:get_hp()
            local is_sneaking = player_meta:get_int('everness_is_sneaking') > 0

            if control.sneak and (player_hp > 0 or not minetest.settings:get_bool('enable_damage')) then
                -- [Shift + E + Q] single drop item
                -- Autopickup after DELAY
                if control.aux1 then
                    DELAY = 1.5
                end

                if DELAY == 0 then
                    pick_dropped_items(player)
                end
            end

            -- Hide nametag when sneaking
            if control.sneak ~= is_sneaking then
                if control.sneak and player_hp > 0 then
                    local nametag_tbl = player:get_nametag_attributes()
                    nametag_tbl.color.a = 0
                    player:set_nametag_attributes(nametag_tbl)
                    player:set_properties{makes_footstep_sound = false}
                else
                    local nametag_tbl = player:get_nametag_attributes()
                    nametag_tbl.color.a = 255
                    player:set_nametag_attributes(nametag_tbl)
                    player:set_properties{makes_footstep_sound = true}
                end

                player_meta:set_int('everness_is_sneaking', control.sneak and 1 or 0)
            end
        end

        TIMER = 0
    end
end)
