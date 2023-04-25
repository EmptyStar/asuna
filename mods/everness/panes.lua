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

xpanes.register_pane('pyrite_pane', {
    description = S('Pyrite Glass Pane'),
    textures = { 'everness_pyrite_glass.png', '', 'everness_xpanes_edge_pyrite.png' },
    use_texture_alpha = 'clip',
    inventory_image = 'everness_pyrite_glass.png',
    wield_image = 'everness_pyrite_glass.png',
    sounds = Everness.node_sound_glass_defaults(),
    groups = { snappy = 2, cracky = 3, oddly_breakable_by_hand = 3 },
    recipe = {
        { 'everness:pyrite_glass', 'everness:pyrite_glass', 'everness:pyrite_glass' },
        { 'everness:pyrite_glass', 'everness:pyrite_glass', 'everness:pyrite_glass' }
    }
})
