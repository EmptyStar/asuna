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

-- how often node timers for plants will tick, +/- some random value
function Everness.tick_bamboo(self, pos)
    minetest.get_node_timer(pos):start(math.random(83, 143))
end

-- how often a growth failure tick is retried (e.g. too dark)
function Everness.tick_bamboo_again(self, pos)
    minetest.get_node_timer(pos):start(math.random(40, 80))
end

--- Rotate placed bamboo based on the stem below/above
function Everness.place_bamboo(self, pos, placer, itemstack, pointed_thing)
    local node_under = minetest.get_node(vector.new(pos.x, pos.y - 1, pos.z))
    local node_above = minetest.get_node(vector.new(pos.x, pos.y + 1, pos.z))

    if minetest.get_item_group(node_under.name, 'bamboo') > 0 then
        minetest.swap_node(pos, { name = itemstack:get_name(), param2 = node_under.param2 })
        return
    elseif minetest.get_item_group(node_above.name, 'bamboo') > 0 then
        minetest.swap_node(pos, { name = itemstack:get_name(), param2 = node_above.param2 })
        return
    end

    local rand_param2 = math.random(0, 3)
    minetest.swap_node(pos, { name = itemstack:get_name(), param2 = rand_param2 })
end

--- Dig bamboo all the way up and simulate digging particles
function Everness.dig_up_bamboo(self, pos, oldnode, oldmetadata, digger)
    if digger == nil then
        return
    end

    local pos_above = { x = pos.x, y = pos.y + 1, z = pos.z }
    local pos_below = { x = pos.x, y = pos.y - 1, z = pos.z }
    local node_above = minetest.get_node(pos_above)
    local node_below = minetest.get_node(pos_below)

    if minetest.get_item_group(node_below.name, 'bamboo') > 0 then
        self:tick_bamboo(pos_below)
    end

    if minetest.get_item_group(node_above.name, 'bamboo') > 0 then
        minetest.node_dig(pos_above, node_above, digger)

        minetest.add_particlespawner({
            amount = 10,
            time = 0.5,
            minpos = { x = pos_above.x - 0.7, y = pos_above.y, z = pos_above.z - 0.7 },
            maxpos = { x = pos_above.x + 0.7, y = pos_above.y + 0.75, z = pos_above.z + 0.7 },
            minvel = { x = -0.5, y = -4, z = -0.5 },
            maxvel = { x = 0.5, y = -2, z = 0.5 },
            minacc = { x = -0.5, y = -4, z = -0.5 },
            maxacc = { x = 0.5, y = -2, z = 0.5 },
            minexptime = 0.5,
            maxexptime = 1,
            minsize = 0.5,
            maxsize = 1,
            collisiondetection = true,
            node = { name = node_above.name }
        })
    end
end

function Everness.grow_bamboo(self, pos, elapsed)

    local _pos = vector.new(pos)
    _pos.y = _pos.y - 1

    -- local name = minetest.get_node(_pos).name
    local node_below = minetest.get_node(_pos)
    local _node = minetest.get_node(pos)

    if minetest.get_item_group(node_below.name, 'soil') == 0
        and minetest.get_item_group(node_below.name, 'sand') == 0
        and minetest.get_item_group(node_below.name, 'everness_sand') == 0
    then

        if minetest.get_item_group(node_below.name, 'bamboo') > 0 then
            self:grow_bamboo(_pos, elapsed)
            return
        end

        self:tick_bamboo_again(pos)
        return
    end

    _pos.y = _pos.y + 1

    local height = 0


    while minetest.get_item_group(_node.name, 'bamboo') > 0 and height < 16 do
        height = height + 1
        _pos.y = _pos.y + 1
        _node = minetest.get_node(_pos)
    end

    -- stop growing - random height between 12 - 16 nodes
    if height > 11 and height < 16 then
        if math.random(1, 3) == 2 then
            return
        end
    end

    if height >= 16 then
        return
    end

    if _node.name ~= 'air' then
        self:tick_bamboo_again(_pos)
        return
    end


    if minetest.get_node_light(_pos) < 9 then
        self:tick_bamboo_again(pos)
        return
    end

    local height_offset = height

    -- variant appearance for this growth stages
    local rand_param2 = math.random(0, 3)

    if height < 5 then
        local next_plant_schem = self.bamboo.growth_stages[height]

        for i, v in ipairs(next_plant_schem) do
            local pos_to_swap = vector.new(_pos.x, _pos.y - height_offset, _pos.z)
            local node_to_swap = minetest.get_node(pos_to_swap)
            height_offset = height_offset - 1

            if i == 1 then
                if minetest.get_item_group(node_to_swap.name, 'seed') == 0 and node_to_swap.name ~= 'air' then
                    rand_param2 = node_to_swap.param2
                end
            end

            minetest.set_node(pos_to_swap, { name = v.name, param2 = rand_param2 })

            if i == #next_plant_schem then
                self:tick_bamboo(_pos)
                return
            end
        end
    end

    -- grow verically while keeping the top 3 nodes with leaves
    local start_pos = vector.new(_pos.x, _pos.y - 3, _pos.z)
    local prev_node = minetest.get_node(vector.new(start_pos.x, start_pos.y - 1, start_pos.z))

    minetest.set_node(start_pos, { name = 'everness:bamboo_3', param2 = prev_node.param2 })

    for k, v in ipairs(self.bamboo.top_leaves_schem) do
        minetest.set_node(
            vector.new(start_pos.x, start_pos.y + k, start_pos.z),
            { name = v.name, param2 = prev_node.param2 }
        )
    end

    self:tick_bamboo(_pos)
    return false
end
