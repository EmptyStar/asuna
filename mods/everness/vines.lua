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

-- Cave vine

minetest.register_node('everness:vine_cave', {
    description = S('Cave Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_vine_cave.png' },
    wield_image = 'everness_vine_cave.png',
    inventory_image = 'everness_vine_cave.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(pos)
        Everness:tick_vine(pos)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:vine_cave', 'everness:vine_cave_with_mese_leaves' },
            end_node_name = 'everness:vine_cave_end'
        })
    end,
})

minetest.register_node('everness:vine_cave_end', {
    description = S('Cave Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_vine_cave_end.png' },
    wield_image = 'everness_vine_cave_end.png',
    inventory_image = 'everness_vine_cave_end.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        vine_end = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:vine_cave', 'everness:vine_cave_with_mese_leaves' },
            end_node_name = 'everness:vine_cave_end'
        })
    end,
})

minetest.register_node('everness:vine_cave_with_mese_leaves', {
    description = S('Cave Vine with Mese Leaves'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_vine_cave_with_mese_leaves.png' },
    wield_image = 'everness_vine_cave_with_mese_leaves.png',
    inventory_image = 'everness_vine_cave_with_mese_leaves.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:vine_cave', 'everness:vine_cave_with_mese_leaves' },
            end_node_name = 'everness:vine_cave_end'
        })
    end,
})

-- Whispering Gourd Vine

minetest.register_node('everness:whispering_gourd_vine_1', {
    description = S('Whispering Gourd Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_whispering_gourd_vine_1.png' },
    wield_image = 'everness_whispering_gourd_vine_1.png',
    inventory_image = 'everness_whispering_gourd_vine_1.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(pos)
        Everness:tick_vine(pos)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:whispering_gourd_vine_1', 'everness:whispering_gourd_vine_2' },
            end_node_name = 'everness:whispering_gourd_vine_end'
        })
    end,
})

minetest.register_node('everness:whispering_gourd_vine_end', {
    description = S('Whispering Gourd Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_whispering_gourd_vine_end.png' },
    wield_image = 'everness_whispering_gourd_vine_end.png',
    inventory_image = 'everness_whispering_gourd_vine_end.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        vine_end = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:whispering_gourd_vine_1', 'everness:whispering_gourd_vine_2' },
            end_node_name = 'everness:whispering_gourd_vine_end'
        })
    end,
})

minetest.register_node('everness:whispering_gourd_vine_2', {
    description = S('Whispering Gourd Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_whispering_gourd_vine_2.png' },
    wield_image = 'everness_whispering_gourd_vine_2.png',
    inventory_image = 'everness_whispering_gourd_vine_2.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:whispering_gourd_vine_1', 'everness:whispering_gourd_vine_2' },
            end_node_name = 'everness:whispering_gourd_vine_end'
        })
    end,
})

-- Bulb Vine

minetest.register_node('everness:bulb_vine_1', {
    description = S('Bulb Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_bulb_vine_1.png' },
    wield_image = 'everness_bulb_vine_1.png',
    inventory_image = 'everness_bulb_vine_1.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(pos)
        Everness:tick_vine(pos)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:bulb_vine_1', 'everness:bulb_vine_2' },
            end_node_name = 'everness:bulb_vine_end'
        })
    end,
})

minetest.register_node('everness:bulb_vine_end', {
    description = S('Bulb Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_bulb_vine_end.png' },
    wield_image = 'everness_bulb_vine_end.png',
    inventory_image = 'everness_bulb_vine_end.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        vine_end = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:bulb_vine_1', 'everness:bulb_vine_2' },
            end_node_name = 'everness:bulb_vine_end'
        })
    end,
})

minetest.register_node('everness:bulb_vine_2', {
    description = S('Bulb Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_bulb_vine_2.png' },
    wield_image = 'everness_bulb_vine_2.png',
    inventory_image = 'everness_bulb_vine_2.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:bulb_vine_1', 'everness:bulb_vine_2' },
            end_node_name = 'everness:bulb_vine_end'
        })
    end,
})

-- Willow Vine

minetest.register_node('everness:willow_vine_1', {
    description = S('Willow Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_willow_vine.png' },
    wield_image = 'everness_willow_vine.png',
    inventory_image = 'everness_willow_vine.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(pos)
        Everness:tick_vine(pos)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:willow_vine_1' },
            end_node_name = 'everness:willow_vine_end'
        })
    end,
})

minetest.register_node('everness:willow_vine_end', {
    description = S('Willow Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_willow_vine_end.png' },
    wield_image = 'everness_willow_vine_end.png',
    inventory_image = 'everness_willow_vine_end.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        vine_end = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:willow_vine_1' },
            end_node_name = 'everness:willow_vine_end'
        })
    end,
})

-- Eye Vine

minetest.register_node('everness:eye_vine_1', {
    description = S('Eye Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_eye_vine_1.png' },
    wield_image = 'everness_eye_vine_1.png',
    inventory_image = 'everness_eye_vine_1.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(pos)
        Everness:tick_vine(pos)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:eye_vine_1', 'everness:eye_vine_2' },
            end_node_name = 'everness:eye_vine_end'
        })
    end,
})

minetest.register_node('everness:eye_vine_end', {
    description = S('Eye Vine'),
    walkable = false,
    climbable = true,
    paramtype = 'light',
    tiles = {
        'everness_eye_vine_end_top.png',
        'everness_eye_vine_end_bottom.png',
        'everness_eye_vine_end_side.png',
    },
    wield_image = 'everness_eye_vine_end_bottom.png',
    inventory_image = 'everness_eye_vine_end_bottom.png',
    drawtype = 'normal',
    groups = {
        -- MTG
        vine = 1,
        vine_end = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    drop = '',
    paramtype2 = 'facedir',
    on_place = minetest.rotate_node,
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, 'everness:eye_vine_lantern', digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:eye_vine_1', 'everness:eye_vine_2' },
            end_node_name = 'everness:eye_vine_end',
            end_node_param2 = 0
        })
    end,
})

minetest.register_node('everness:eye_vine_2', {
    description = S('Eye Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_eye_vine_2.png' },
    wield_image = 'everness_eye_vine_2.png',
    inventory_image = 'everness_eye_vine_2.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:eye_vine_1', 'everness:eye_vine_2' },
            end_node_name = 'everness:eye_vine_end'
        })
    end,
})

-- Lumabus Vine

minetest.register_node('everness:lumabus_vine_1', {
    description = S('Lumabus Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_lumabus_vine_1.png' },
    wield_image = 'everness_lumabus_vine_1.png',
    inventory_image = 'everness_lumabus_vine_1.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(pos)
        Everness:tick_vine(pos)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:lumabus_vine_1', 'everness:lumabus_vine_2' },
            end_node_name = 'everness:lumabus_vine_end'
        })
    end,
})

minetest.register_node('everness:lumabus_vine_end', {
    description = S('Lumabus Vine'),
    walkable = false,
    climbable = true,
    drawtype = 'mesh',
    mesh = 'everness_lumabus.obj',
    tiles = {
        'everness_lumabus_bulb_purple.png',
        {
            name = 'everness_lumabus_leaves.png',
            backface_culling = false
        }
    },
    use_texture_alpha = 'clip',
    paramtype = 'light',
    -- wield_image = 'everness_lumabus_vine_end_bottom.png',
    -- inventory_image = 'everness_lumabus_vine_end_bottom.png',
    groups = {
        -- MTG
        vine = 1,
        vine_end = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    drop = '',
    paramtype2 = 'wallmounted',
    selection_box = {
        type = 'fixed',
        fixed = { -1 / 2 + 3 / 16, -1 / 2, -1 / 2 + 3 / 16, 1 / 2 - 3 / 16, 1 / 2 - 6 / 16, 1 / 2 - 3 / 16 }
    },
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, 'everness:lumabus_vine_lantern', digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:lumabus_vine_1', 'everness:lumabus_vine_2' },
            end_node_name = 'everness:lumabus_vine_end'
        })
    end,
})

minetest.register_node('everness:lumabus_vine_2', {
    description = S('Lumabus Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_lumabus_vine_2.png' },
    wield_image = 'everness_lumabus_vine_2.png',
    inventory_image = 'everness_lumabus_vine_2.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:lumabus_vine_1', 'everness:lumabus_vine_2' },
            end_node_name = 'everness:lumabus_vine_end'
        })
    end,
})

-- Ivis Vine

minetest.register_node('everness:ivis_vine_1', {
    description = S('Ivis Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_ivis_vine.png' },
    wield_image = 'everness_ivis_vine.png',
    inventory_image = 'everness_ivis_vine.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(pos)
        Everness:tick_vine(pos)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:ivis_vine_1', 'everness:ivis_vine_2' },
            end_node_name = 'everness:ivis_vine_end'
        })
    end,
})

minetest.register_node('everness:ivis_vine_end', {
    description = S('Ivis Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_ivis_vine_end.png' },
    wield_image = 'everness_ivis_vine_end.png',
    inventory_image = 'everness_ivis_vine_end.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        vine_end = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:ivis_vine_1', 'everness:ivis_vine_2' },
            end_node_name = 'everness:ivis_vine_end'
        })
    end,
})

minetest.register_node('everness:ivis_vine_2', {
    description = S('Ivis Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_ivis_vine.png' },
    wield_image = 'everness_ivis_vine.png',
    inventory_image = 'everness_ivis_vine.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:ivis_vine_1', 'everness:ivis_vine_2' },
            end_node_name = 'everness:ivis_vine_end'
        })
    end,
})

-- Flowered vine

minetest.register_node('everness:flowered_vine_1', {
    description = S('Flowered Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_flowered_vine_1.png' },
    wield_image = 'everness_flowered_vine_1.png',
    inventory_image = 'everness_flowered_vine_1.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(pos)
        Everness:tick_vine(pos)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:flowered_vine_1', 'everness:flowered_vine_2' },
            end_node_name = 'everness:flowered_vine_end'
        })
    end,
})

minetest.register_node('everness:flowered_vine_end', {
    description = S('Flowered Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_flowered_vine_end.png' },
    wield_image = 'everness_flowered_vine_end.png',
    inventory_image = 'everness_flowered_vine_end.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        vine_end = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:flowered_vine_1', 'everness:flowered_vine_2' },
            end_node_name = 'everness:flowered_vine_end'
        })
    end,
})

minetest.register_node('everness:flowered_vine_2', {
    description = S('Flowered Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_flowered_vine_2.png' },
    wield_image = 'everness_flowered_vine_2.png',
    inventory_image = 'everness_flowered_vine_2.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:flowered_vine_1', 'everness:flowered_vine_2' },
            end_node_name = 'everness:flowered_vine_end'
        })
    end,
})

-- Reeds vine

minetest.register_node('everness:reeds_vine_1', {
    description = S('Reeds Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_reeds_vine_1.png' },
    wield_image = 'everness_reeds_vine_1.png',
    inventory_image = 'everness_reeds_vine_1.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(pos)
        Everness:tick_vine(pos)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:reeds_vine_1', 'everness:reeds_vine_2' },
            end_node_name = 'everness:reeds_vine_end'
        })
    end,
})

minetest.register_node('everness:reeds_vine_end', {
    description = S('Reeds Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_reeds_vine_end.png' },
    wield_image = 'everness_reeds_vine_end.png',
    inventory_image = 'everness_reeds_vine_end.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        vine_end = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:reeds_vine_1', 'everness:reeds_vine_2' },
            end_node_name = 'everness:reeds_vine_end'
        })
    end,
})

minetest.register_node('everness:reeds_vine_2', {
    description = S('Reeds Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_reeds_vine_2.png' },
    wield_image = 'everness_reeds_vine_2.png',
    inventory_image = 'everness_reeds_vine_2.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:reeds_vine_1', 'everness:reeds_vine_2' },
            end_node_name = 'everness:reeds_vine_end'
        })
    end,
})

-- Tenanea Flowers vine

minetest.register_node('everness:tenanea_flowers_vine_1', {
    description = S('Flowered Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_tenanea_flowers_vine_2.png' },
    wield_image = 'everness_tenanea_flowers_vine_2.png',
    inventory_image = 'everness_tenanea_flowers_vine_2.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(pos)
        Everness:tick_vine(pos)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:tenanea_flowers_vine_1', 'everness:tenanea_flowers_vine_2' },
            end_node_name = 'everness:tenanea_flowers_vine_end'
        })
    end,
})

minetest.register_node('everness:tenanea_flowers_vine_end', {
    description = S('Flowered Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_tenanea_flowers_vine_end.png' },
    wield_image = 'everness_tenanea_flowers_vine_end.png',
    inventory_image = 'everness_tenanea_flowers_vine_end.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        vine_end = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:tenanea_flowers_vine_1', 'everness:tenanea_flowers_vine_2' },
            end_node_name = 'everness:tenanea_flowers_vine_end'
        })
    end,
})

minetest.register_node('everness:tenanea_flowers_vine_2', {
    description = S('Flowered Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_tenanea_flowers_vine_1.png' },
    wield_image = 'everness_tenanea_flowers_vine_1.png',
    inventory_image = 'everness_tenanea_flowers_vine_1.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:tenanea_flowers_vine_1', 'everness:tenanea_flowers_vine_2' },
            end_node_name = 'everness:tenanea_flowers_vine_end'
        })
    end,
})

-- Twisted vine

minetest.register_node('everness:twisted_vine_1', {
    description = S('Twisted Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_twisted_vine_1.png' },
    wield_image = 'everness_twisted_vine_1.png',
    inventory_image = 'everness_twisted_vine_1.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(pos)
        Everness:tick_vine(pos)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:twisted_vine_1', 'everness:twisted_vine_2' },
            end_node_name = 'everness:twisted_vine_end'
        })
    end,
})

minetest.register_node('everness:twisted_vine_end', {
    description = S('Twisted Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_twisted_vine_end.png' },
    wield_image = 'everness_twisted_vine_end.png',
    inventory_image = 'everness_twisted_vine_end.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        vine_end = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:twisted_vine_1', 'everness:twisted_vine_2' },
            end_node_name = 'everness:twisted_vine_end'
        })
    end,
})

minetest.register_node('everness:twisted_vine_2', {
    description = S('Twisted Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_twisted_vine_2.png' },
    wield_image = 'everness_twisted_vine_2.png',
    inventory_image = 'everness_twisted_vine_2.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:twisted_vine_1', 'everness:twisted_vine_2' },
            end_node_name = 'everness:twisted_vine_end'
        })
    end,
})

-- Golden vine

minetest.register_node('everness:golden_vine_1', {
    description = S('Golden Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_golden_vine_1.png' },
    wield_image = 'everness_golden_vine_1.png',
    inventory_image = 'everness_golden_vine_1.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(pos)
        Everness:tick_vine(pos)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:golden_vine_1', 'everness:golden_vine_2' },
            end_node_name = 'everness:golden_vine_end'
        })
    end,
})

minetest.register_node('everness:golden_vine_end', {
    description = S('Golden Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_golden_vine_end.png' },
    wield_image = 'everness_golden_vine_end.png',
    inventory_image = 'everness_golden_vine_end.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        vine_end = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:golden_vine_1', 'everness:golden_vine_2' },
            end_node_name = 'everness:golden_vine_end'
        })
    end,
})

minetest.register_node('everness:golden_vine_2', {
    description = S('Golden Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_golden_vine_2.png' },
    wield_image = 'everness_golden_vine_2.png',
    inventory_image = 'everness_golden_vine_2.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:golden_vine_1', 'everness:golden_vine_2' },
            end_node_name = 'everness:golden_vine_end'
        })
    end,
})

-- Dense vine

minetest.register_node('everness:dense_vine_1', {
    description = S('Dense Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_dense_vine_1.png' },
    wield_image = 'everness_dense_vine_1.png',
    inventory_image = 'everness_dense_vine_1.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(pos)
        Everness:tick_vine(pos)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:dense_vine_1', 'everness:dense_vine_2' },
            end_node_name = 'everness:dense_vine_end'
        })
    end,
})

minetest.register_node('everness:dense_vine_end', {
    description = S('Dense Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_dense_vine_end.png' },
    wield_image = 'everness_dense_vine_end.png',
    inventory_image = 'everness_dense_vine_end.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        vine_end = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 12,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:dense_vine_1', 'everness:dense_vine_2' },
            end_node_name = 'everness:dense_vine_end'
        })
    end,
})

minetest.register_node('everness:dense_vine_2', {
    description = S('Dense Vine'),
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = 'light',
    buildable_to = false,
    tiles = { 'everness_dense_vine_2.png' },
    wield_image = 'everness_dense_vine_2.png',
    inventory_image = 'everness_dense_vine_2.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    groups = {
        -- MTG
        vine = 1,
        snappy = 3,
        falling_vines = 1,
        -- MCL
        handy = 1,
        axey = 1,
        shearsy = 1,
        swordy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 50,
        fire_encouragement = 15,
        fire_flammability = 100,
        -- ALL
        flammable = 2,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    on_rotate = function()
        return false
    end,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7,
    waving = 2,
    drop = '',
    on_destruct = function(pos)
        local pos_below = vector.new(pos.x, pos.y - 1, pos.z)
        local node_below = minetest.get_node(pos_below)

        if minetest.get_item_group(node_below.name, 'vine') > 0 then
            minetest.remove_node(pos_below)
        end
    end,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local pos_above = vector.new(pos.x, pos.y + 1, pos.z)

        Everness:dig_vine(pos, oldnode.name, digger)
        Everness:tick_vine(pos_above)
    end,
    on_construct = function(...)
        Everness:tick_vine(...)
    end,
    on_timer = function(pos, elapsed)
        Everness:grow_vine(pos, elapsed, {
            node_names = { 'everness:dense_vine_1', 'everness:dense_vine_2' },
            end_node_name = 'everness:dense_vine_end'
        })
    end,
})

-- LBMs

minetest.register_lbm({
    label = 'everness:vines',
    name = 'everness:vines',
    nodenames = 'group:vine',
    run_at_every_load = true,
    action = function(pos, node)
        Everness:tick_vine(pos)
    end,
})
