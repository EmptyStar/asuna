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

function Everness.grow_coral_tree(pos)
    local path = minetest.get_modpath('everness') .. '/schematics/everness_coral_tree_from_sapling.mts'
    minetest.place_schematic({ x = pos.x - 14, y = pos.y, z = pos.z - 14 }, path, 'random', nil, false)
end

function Everness.coral_tree_bioluminescent(pos)
    local path = minetest.get_modpath('everness') .. '/schematics/everness_coral_tree_bioluminescent_from_sapling.mts'
    minetest.place_schematic({ x = pos.x - 7, y = pos.y, z = pos.z - 7 }, path, 'random', nil, false)
end

function Everness.grow_crystal_bush(pos)
    local path = minetest.get_modpath('everness') .. '/schematics/everness_crystal_bush.mts'
    minetest.place_schematic({ x = pos.x - 1, y = pos.y, z = pos.z - 1 },
        path, '0', nil, false)
end

function Everness.grow_cursed_bush(pos)
    local path = minetest.get_modpath('everness') .. '/schematics/everness_cursed_bush.mts'
    minetest.place_schematic({ x = pos.x - 1, y = pos.y, z = pos.z - 1 },
        path, '0', nil, false)
end

function Everness.grow_baobab_tree(pos)
    local path = minetest.get_modpath('everness') .. '/schematics/everness_baobab_tree.mts'
    minetest.place_schematic({ x = pos.x - 12, y = pos.y, z = pos.z - 12 },
        path, 'random', nil, false)
end

function Everness.grow_dry_tree(pos)
    local path = minetest.get_modpath('everness') .. '/schematics/everness_dry_tree_from_sapling.mts'
    minetest.place_schematic({ x = pos.x - 3, y = pos.y, z = pos.z - 3 },
        path, 'random', nil, false)
end

function Everness.grow_willow_tree(pos)
    local path = minetest.get_modpath('everness') .. '/schematics/everness_willow_tree_from_sapling.mts'
    minetest.place_schematic({ x = pos.x - 19, y = pos.y, z = pos.z - 19 },
        path, 'random', nil, false)

    -- trigger vines
    minetest.after(1, function(v_pos)
        local size = { x = 39, y = 27, z = 39 }
        local positions = minetest.find_nodes_in_area(
            vector.round(vector.new(v_pos.x - (size.x / 2), v_pos.y, v_pos.z - (size.z / 2))),
            vector.round(vector.new(v_pos.x + (size.x / 2), v_pos.y + size.y, v_pos.z + (size.z / 2))),
            { 'group:vine' }
        )

        for _, vine_pos in ipairs(positions) do
            Everness:tick_vine(vine_pos)
        end
    end, pos)
end

function Everness.grow_sequoia_tree(pos)
    local path = minetest.get_modpath('everness') .. '/schematics/everness_giant_sequoia_tree_from_sapling.mts'
    minetest.place_schematic({ x = pos.x - 12, y = pos.y, z = pos.z - 12 },
        path, 'random', nil, false)
end

function Everness.grow_crystal_tree(pos)
    local path = minetest.get_modpath('everness') .. '/schematics/everness_crystal_tree.mts'
    minetest.place_schematic({ x = pos.x - 6, y = pos.y, z = pos.z - 6 },
        path, 'random', nil, false)
end

function Everness.grow_crystal_large_tree(pos)
    local path = minetest.get_modpath('everness') .. '/schematics/everness_crystal_tree_large.mts'
    minetest.place_schematic({ x = pos.x - 10, y = pos.y, z = pos.z - 10 },
        path, 'random', nil, false)
end

function Everness.grow_cursed_dream_tree(pos)
    local path = minetest.get_modpath('everness') .. '/schematics/everness_cursed_dream_tree_from_sapling.mts'
    minetest.place_schematic({ x = pos.x - 8, y = pos.y, z = pos.z - 8 },
        path, 'random', nil, false)
end

function Everness.grow_mese_tree(pos)
    local path = minetest.get_modpath('everness') .. '/schematics/everness_mese_tree.mts'
    minetest.place_schematic({ x = pos.x - 3, y = pos.y, z = pos.z - 3 },
        path, 'random', nil, false)
end

function Everness.grow_sapling(pos)
    if not Everness.can_grow(pos) then
        -- try again 5 min later
        minetest.get_node_timer(pos):start(300)
        return
    end

    local node = minetest.get_node(pos)

    if node.name == 'everness:coral_tree_sapling' then
        minetest.log('action', 'A coral tree sapling grows into a tree at ' .. minetest.pos_to_string(pos))
        Everness.grow_coral_tree(pos)
    elseif node.name == 'everness:coral_tree_bioluminescent_sapling' then
        minetest.log('action', 'A coral tree bioluminescent sapling grows into a tree at ' .. minetest.pos_to_string(pos))
        Everness.coral_tree_bioluminescent(pos)
    elseif node.name == 'everness:crystal_bush_sapling' then
        minetest.log('action', 'A crystal bush sapling grows into a bush at ' .. minetest.pos_to_string(pos))
        Everness.grow_crystal_bush(pos)
    elseif node.name == 'everness:cursed_bush_sapling' then
        minetest.log('action', 'A cursed bush sapling grows into a bush at ' .. minetest.pos_to_string(pos))
        Everness.grow_cursed_bush(pos)
    elseif node.name == 'everness:baobab_sapling' then
        minetest.log('action', 'A baobab sapling grows into a bush at ' .. minetest.pos_to_string(pos))
        Everness.grow_baobab_tree(pos)
    elseif node.name == 'everness:dry_tree_sapling' then
        minetest.log('action', 'A dry tree sapling grows into a bush at ' .. minetest.pos_to_string(pos))
        Everness.grow_dry_tree(pos)
    elseif node.name == 'everness:willow_tree_sapling' then
        minetest.log('action', 'A willow tree sapling grows into a bush at ' .. minetest.pos_to_string(pos))
        Everness.grow_willow_tree(pos)
    elseif node.name == 'everness:sequoia_tree_sapling' then
        minetest.log('action', 'A sequoia tree sapling grows into a bush at ' .. minetest.pos_to_string(pos))
        Everness.grow_sequoia_tree(pos)
    elseif node.name == 'everness:crystal_tree_sapling' then
        minetest.log('action', 'A crystal tree sapling grows into a bush at ' .. minetest.pos_to_string(pos))
        Everness.grow_crystal_tree(pos)
    elseif node.name == 'everness:crystal_tree_large_sapling' then
        minetest.log('action', 'A crystal tree large sapling grows into a bush at ' .. minetest.pos_to_string(pos))
        Everness.grow_crystal_large_tree(pos)
    elseif node.name == 'everness:cursed_dream_tree_sapling' then
        minetest.log('action', 'A cursed dream tree large sapling grows into a bush at ' .. minetest.pos_to_string(pos))
        Everness.grow_cursed_dream_tree(pos)
    elseif node.name == 'everness:mese_tree_sapling' then
        minetest.log('action', 'A mese tree large sapling grows into a bush at ' .. minetest.pos_to_string(pos))
        Everness.grow_mese_tree(pos)
    end
end
