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

-- Dry Wood

default.register_fence('everness:fence_dry_wood', {
    description = S('Dry Wood Fence'),
    texture = 'everness_fence_dry_wood.png',
    inventory_image = 'default_fence_overlay.png^everness_dry_wood.png^' ..
        'default_fence_overlay.png^[makealpha:255,126,126',
    wield_image = 'default_fence_overlay.png^everness_dry_wood.png^' ..
        'default_fence_overlay.png^[makealpha:255,126,126',
    material = 'everness:dry_wood',
    groups = { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    sounds = Everness.node_sound_wood_defaults()
})

default.register_fence_rail('everness:fence_rail_dry_wood', {
    description = S('Dry Wood Fence Rail'),
    texture = 'everness_fence_rail_dry_wood.png',
    inventory_image = 'default_fence_rail_overlay.png^everness_dry_wood.png^' ..
        'default_fence_rail_overlay.png^[makealpha:255,126,126',
    wield_image = 'default_fence_rail_overlay.png^everness_dry_wood.png^' ..
        'default_fence_rail_overlay.png^[makealpha:255,126,126',
    material = 'everness:dry_wood',
    groups = { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    sounds = Everness.node_sound_wood_defaults()
})

default.register_mesepost('everness:mese_post_light_dry_wood', {
    description = S('Dry Wood Mese Post Light'),
    texture = 'everness_fence_dry_wood.png',
    material = 'everness:dry_wood',
})

-- Bamboo Wood

default.register_fence('everness:fence_bamboo_wood', {
    description = S('Bamboo Wood Fence'),
    texture = 'everness_fence_bamboo_wood.png',
    inventory_image = 'default_fence_overlay.png^everness_dry_bamboo_block_side.png^' ..
        'default_fence_overlay.png^[makealpha:255,126,126',
    wield_image = 'default_fence_overlay.png^everness_dry_bamboo_block_side.png^' ..
        'default_fence_overlay.png^[makealpha:255,126,126',
    material = 'everness:bamboo_wood',
    groups = { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    sounds = Everness.node_sound_wood_defaults()
})

default.register_fence_rail('everness:fence_rail_bamboo_wood', {
    description = S('Bamboo Wood Fence Rail'),
    texture = 'everness_fence_rail_bamboo_wood.png^[transformR90',
    inventory_image = 'default_fence_rail_overlay.png^everness_dry_bamboo_block_side.png^' ..
        'default_fence_rail_overlay.png^[makealpha:255,126,126',
    wield_image = 'default_fence_rail_overlay.png^everness_dry_bamboo_block_side.png^' ..
        'default_fence_rail_overlay.png^[makealpha:255,126,126',
    material = 'everness:bamboo_wood',
    groups = { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    sounds = Everness.node_sound_wood_defaults()
})

default.register_mesepost('everness:mese_post_light_bamboo_wood', {
    description = S('Bamboo Wood Mese Post Light'),
    texture = 'everness_fence_bamboo_wood.png^[transformFY',
    material = 'everness:bamboo_wood',
})

-- Crystal Wood

default.register_fence('everness:fence_crystal_wood', {
    description = S('Crystal Wood Fence'),
    texture = 'everness_fence_crystal_wood.png',
    inventory_image = 'default_fence_overlay.png^everness_crystal_wood.png^' ..
        'default_fence_overlay.png^[makealpha:255,126,126',
    wield_image = 'default_fence_overlay.png^everness_crystal_wood.png^' ..
        'default_fence_overlay.png^[makealpha:255,126,126',
    material = 'everness:crystal_wood',
    groups = { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    sounds = Everness.node_sound_wood_defaults()
})

default.register_fence_rail('everness:fence_rail_crystal_wood', {
    description = S('Crystal Wood Fence Rail'),
    texture = 'everness_fence_rail_crystal_wood.png^[transformR90',
    inventory_image = 'default_fence_rail_overlay.png^everness_crystal_wood.png^' ..
        'default_fence_rail_overlay.png^[makealpha:255,126,126',
    wield_image = 'default_fence_rail_overlay.png^everness_crystal_wood.png^' ..
        'default_fence_rail_overlay.png^[makealpha:255,126,126',
    material = 'everness:crystal_wood',
    groups = { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    sounds = Everness.node_sound_wood_defaults()
})

default.register_mesepost('everness:mese_post_light_bamboo_wood', {
    description = S('Crystal Wood Mese Post Light'),
    texture = 'everness_fence_crystal_wood.png^[transformFY',
    material = 'everness:crystal_wood',
})
