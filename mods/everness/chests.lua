--[[
    Everness. Never ending discovery in Everness mapgen.
    GNU Lesser General Public License, version 2.1
    Copyright (C) 2011-2018 celeron55, Perttu Ahola <celeron55@gmail.com>
    Copyright (C) 2011-2018 Various Minetest developers and contributors
    Copyright (C) 2022 SaKeL <juraj.vajda@gmail.com>

    This program is free software; you can redistribute it and/or modify it under the terms
    of the GNU Lesser General Public License as published by the Free Software Foundation;
    either version 2.1 of the License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
    without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
    See the GNU Lesser General Public License for more details:
    https://www.gnu.org/licenses/old-licenses/lgpl-2.1.html
--]]

Everness.chest = {}

-- support for MT game translation.
local S = minetest.get_translator(minetest.get_current_modname())

function Everness.chest.get_chest_formspec(pos)
    local spos = pos.x .. ',' .. pos.y .. ',' .. pos.z
    local hotbar_bg = ''
    local list_bg = ''
    local chest_bg = ''

    for i = 0, 7, 1 do
        hotbar_bg = hotbar_bg .. 'image[' .. 0 + i .. ', ' .. 4.85 .. ';1,1;everness_chest_ui_bg_hb_slot.png]'
    end

    for row = 0, 2, 1 do
        for i = 0, 7, 1 do
            list_bg = list_bg .. 'image[' .. 0 + i .. ',' .. 6.08 + row .. ';1,1;everness_chest_ui_bg_slot.png]'
        end
    end

    for row = 0, 3, 1 do
        for i = 0, 7, 1 do
            chest_bg = chest_bg .. 'image[' .. 0 + i .. ',' .. 0.3 + row .. ';1,1;everness_chest_ui_bg_slot.png]'
        end
    end

    local formspec =
        'size[8,9]' ..
        'listcolors[#FFFFFF00;#FFFFFF1A;#5E5957]' ..
        'background[5,5;1,1;everness_chest_ui_bg.png;true]' ..
        'list[nodemeta:' .. spos .. ';main;0,0.3;8,4;]' ..
        'list[current_player;main;0,4.85;8,1;]' ..
        'list[current_player;main;0,6.08;8,3;8]' ..
        'listring[nodemeta:' .. spos .. ';main]' ..
        'listring[current_player;main]' ..
        list_bg ..
        hotbar_bg ..
        chest_bg
    return formspec
end

function Everness.chest.chest_lid_obstructed(pos)
    local above = { x = pos.x, y = pos.y + 1, z = pos.z }
    local def = minetest.registered_nodes[minetest.get_node(above).name]

    -- allow ladders, signs, wallmounted things and torches to not obstruct
    if def and
        (def.drawtype == 'airlike' or
        def.drawtype == 'signlike' or
        def.drawtype == 'torchlike' or
        (def.drawtype == 'nodebox' and def.paramtype2 == 'wallmounted'))
    then
        return false
    end

    return true
end

function Everness.chest.chest_lid_close(pn)
    local chest_open_info = Everness.chest.open_chests[pn]
    local pos = chest_open_info.pos
    local sound = chest_open_info.sound
    local swap = chest_open_info.swap

    Everness.chest.open_chests[pn] = nil

    for _, v in pairs(Everness.chest.open_chests) do
        if v.pos.x == pos.x and v.pos.y == pos.y and v.pos.z == pos.z then
            return true
        end
    end

    local node = minetest.get_node(pos)

    minetest.after(0.2, minetest.swap_node, pos, { name = swap, param2 = node.param2 })
    minetest.sound_play(sound, { gain = 0.3, pos = pos, max_hear_distance = 10 }, true)
end

Everness.chest.open_chests = {}

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local pn = player:get_player_name()

    if formname ~= 'everness:chest' then
        if Everness.chest.open_chests[pn] then
            Everness.chest.chest_lid_close(pn)
        end

        return
    end

    if not (fields.quit and Everness.chest.open_chests[pn]) then
        return
    end

    Everness.chest.chest_lid_close(pn)

    return true
end)

minetest.register_on_leaveplayer(function(player)
    local pn = player:get_player_name()

    if Everness.chest.open_chests[pn] then
        Everness.chest.chest_lid_close(pn)
    end
end)

function Everness.chest.register_chest(prefixed_name, d)
    local name = prefixed_name:sub(1, 1) == ':' and prefixed_name:sub(2, -1) or prefixed_name
    local def = table.copy(d)
    def.drawtype = 'mesh'
    def.visual = 'mesh'
    def.paramtype = 'light'
    def.paramtype2 = 'facedir'
    def.legacy_facedir_simple = true
    def.is_ground_content = false

    if def.protected then
        -- Locked chest
        def.on_construct = function(pos)
            local meta = minetest.get_meta(pos)
            meta:set_string('infotext', S('Locked Chest'))
            meta:set_string('owner', '')
            local inv = meta:get_inventory()
            inv:set_size('main', 8 * 4)
        end

        def.after_place_node = function(pos, placer)
            local meta = minetest.get_meta(pos)
            meta:set_string('owner', placer:get_player_name() or '')
            meta:set_string('infotext', S('Locked Chest (owned by @1)', meta:get_string('owner')))
        end

        def.can_dig = function(pos,player)
            local meta = minetest.get_meta(pos);
            local inv = meta:get_inventory()
            return inv:is_empty('main') and Everness.can_interact_with_node(player, pos)
        end

        def.allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
            if not Everness.can_interact_with_node(player, pos) then
                return 0
            end

            return count
        end

        def.allow_metadata_inventory_put = function(pos, listname, index, stack, player)
            if not Everness.can_interact_with_node(player, pos) then
                return 0
            end

            return stack:get_count()
        end

        def.allow_metadata_inventory_take = function(pos, listname, index, stack, player)
            if not Everness.can_interact_with_node(player, pos) then
                return 0
            end

            return stack:get_count()
        end

        def.on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
            if not Everness.can_interact_with_node(clicker, pos) then
                return itemstack
            end

            local cn = clicker:get_player_name()

            if Everness.chest.open_chests[cn] then
                Everness.chest.chest_lid_close(cn)
            end

            minetest.sound_play(def.sound_open, { gain = 0.3, pos = pos, max_hear_distance = 10 }, true)

            if not Everness.chest.chest_lid_obstructed(pos) then
                minetest.swap_node(pos, { name = name .. '_open', param2 = node.param2 })
            end

            minetest.after(
                0.2,
                minetest.show_formspec,
                cn,
                'everness:chest',
                Everness.chest.get_chest_formspec(pos)
            )
            Everness.chest.open_chests[cn] = { pos = pos, sound = def.sound_close, swap = name }
        end

        def.on_blast = function() end

        def.on_key_use = function(pos, player)
            local secret = minetest.get_meta(pos):get_string('key_lock_secret')
            local itemstack = player:get_wielded_item()
            local key_meta = itemstack:get_meta()

            if itemstack:get_metadata() == '' then
                return
            end

            if key_meta:get_string('secret') == '' then
                key_meta:set_string('secret', minetest.parse_json(itemstack:get_metadata()).secret)
                itemstack:set_metadata('')
            end

            if secret ~= key_meta:get_string('secret') then
                return
            end

            minetest.show_formspec(
                player:get_player_name(),
                'everness:chest_locked',
                Everness.chest.get_chest_formspec(pos)
            )
        end

        def.on_skeleton_key_use = function(pos, player, newsecret)
            local meta = minetest.get_meta(pos)
            local owner = meta:get_string('owner')
            local pn = player:get_player_name()

            -- verify placer is owner of lockable chest
            if owner ~= pn then
                minetest.record_protection_violation(pos, pn)
                minetest.chat_send_player(pn, S('You do not own this chest.'))
                return nil
            end

            local secret = meta:get_string('key_lock_secret')
            if secret == '' then
                secret = newsecret
                meta:set_string('key_lock_secret', secret)
            end

            return secret, S('a locked chest'), owner
        end
    else
        -- Public (unlocked) chest
        def.on_construct = function(pos)
            local meta = minetest.get_meta(pos)
            meta:set_string('infotext', S('Chest'))
            local inv = meta:get_inventory()
            inv:set_size('main', 8 * 4)
        end

        def.can_dig = function(pos,player)
            local meta = minetest.get_meta(pos);
            local inv = meta:get_inventory()
            return inv:is_empty('main')
        end

        def.on_rightclick = function(pos, node, clicker)
            minetest.sound_play(def.sound_open, { gain = 0.3, pos = pos, max_hear_distance = 10 }, true)

            if not Everness.chest.chest_lid_obstructed(pos) then
                minetest.swap_node(pos, { name = name .. '_open', param2 = node.param2 })
            end

            minetest.after(0.2, minetest.show_formspec, clicker:get_player_name(), 'everness:chest', Everness.chest.get_chest_formspec(pos))
            Everness.chest.open_chests[clicker:get_player_name()] = { pos = pos, sound = def.sound_close, swap = name }
        end

        def.on_blast = function(pos)
            local drops = {}
            Everness.get_inventory_drops(pos, 'main', drops)
            drops[#drops + 1] = name
            minetest.remove_node(pos)
            return drops
        end
    end

    Everness.set_inventory_action_loggers(def, 'chest')

    local def_opened = table.copy(def)
    local def_closed = table.copy(def)

    def_opened.mesh = 'everness_chest_open.obj'

    for i = 1, #def_opened.tiles do
        if type(def_opened.tiles[i]) == 'string' then
            def_opened.tiles[i] = { name = def_opened.tiles[i], backface_culling = true }
        elseif def_opened.tiles[i].backface_culling == nil then
            def_opened.tiles[i].backface_culling = true
        end
    end

    def_opened.drop = name
    def_opened.groups.not_in_creative_inventory = 1
    def_opened.selection_box = {
        type = 'fixed',
        fixed = { -1 / 2, -1 / 2, -1 / 2, 1 / 2, 3 / 16, 1 / 2 },
    }
    def_opened.can_dig = function()
        return false
    end
    def_opened.on_blast = function() end

    def_closed.mesh = nil
    def_closed.drawtype = nil
    def_closed.tiles[6] = def.tiles[5] -- swap textures around for 'normal'
    def_closed.tiles[5] = def.tiles[3] -- drawtype to make them match the mesh
    def_closed.tiles[3] = def.tiles[3] .. '^[transformFX'

    minetest.register_node(prefixed_name, def_closed)
    minetest.register_node(prefixed_name .. '_open', def_opened)

    -- close opened chests on load
    minetest.register_lbm({
        label = 'Everness close opened chests on load',
        name = 'everness:close_' .. prefixed_name:gsub(':', '_') .. '_open',
        nodenames = { prefixed_name .. '_open' },
        run_at_every_load = true,
        action = function(pos, node)
            node.name = prefixed_name
            minetest.swap_node(pos, node)
        end
    })
end

Everness.chest.register_chest('everness:chest', {
    description = S('Chest'),
    tiles = {
        'everness_chest_top.png',
        'everness_chest_top.png',
        'everness_chest_side.png',
        'everness_chest_side.png',
        'everness_chest_front.png',
        'everness_chest_inside.png'
    },
    sounds = Everness.node_sound_wood_defaults(),
    sound_open = 'everness_chest_open',
    sound_close = 'everness_chest_close',
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 2,
        -- MCL
        handy = 1,
        axey = 1,
        container = 2,
        deco_block = 1,
        material_wood = 1,
        flammable = -1,
    },
    _mcl_blast_resistance = 2.5,
    _mcl_hardness = 2.5,
})

minetest.register_craft({
    output = 'everness:chest',
    recipe = {
        { 'group:everness_wood', 'group:everness_wood', 'group:everness_wood' },
        { 'group:everness_wood', '', 'group:everness_wood' },
        { 'group:everness_wood', 'group:everness_wood', 'group:everness_wood' },
    }
})

minetest.register_craft({
    type = 'fuel',
    recipe = 'everness:chest',
    burntime = 30,
})
