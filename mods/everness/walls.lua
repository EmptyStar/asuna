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

walls.register(
    'everness:coral_desert_cobble_wall',
    S('Coral Cobblestone Wall'),
    { 'everness_coral_desert_cobble.png' },
    'everness:coral_desert_cobble',
    Everness.node_sound_stone_defaults()
)

walls.register(
    'everness:coral_desert_mossy_cobble_wall',
    S('Coral Mossy Cobblestone Wall'),
    { 'everness_coral_desert_mossy_cobble.png' },
    'everness:coral_desert_mossy_cobble',
    Everness.node_sound_stone_defaults()
)

walls.register(
    'everness:cursed_brick_wall',
    S('Cursed Brick Wall'),
    { 'everness_cursed_brick.png' },
    'everness:cursed_brick',
    Everness.node_sound_stone_defaults()
)

walls.register(
    'everness:cursed_brick_with_growth_wall',
    S('Cursed Brick with Growth Wall'),
    { 'everness_cursed_brick_with_growth.png' },
    'everness:cursed_brick_with_growth',
    Everness.node_sound_stone_defaults()
)

walls.register(
    'everness:forsaken_tundra_cobble_wall',
    S('Forsaken Tundra Cobblestone Wall'),
    { 'everness_forsaken_tundra_cobblestone.png' },
    'everness:forsaken_tundra_cobble',
    Everness.node_sound_stone_defaults()
)

walls.register(
    'everness:forsaken_tundra_stone_wall',
    S('Forsaken Tundra Stone Wall'),
    { 'everness_forsaken_tundra_stone.png' },
    'everness:forsaken_tundra_stone',
    Everness.node_sound_stone_defaults()
)

walls.register(
    'everness:forsaken_tundra_brick_wall',
    S('Forsaken Tundra Brick Wall'),
    { 'everness_forsaken_tundra_brick.png' },
    'everness:forsaken_tundra_brick',
    Everness.node_sound_stone_defaults()
)

walls.register(
    'everness:magmacobble_wall',
    S('Magma Cobblestone Wall'),
    {
        {
            name = 'everness_magmacobble_animated.png',
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 3.0,
            },
        },
    },
    'everness:magmacobble',
    Everness.node_sound_stone_defaults()
)

walls.register(
    'everness:volcanic_rock_wall',
    S('Volcanic Rock Wall'),
    { 'everness_volcanic_rock.png' },
    'everness:volcanic_rock',
    Everness.node_sound_stone_defaults()
)

walls.register(
    'everness:volcanic_rock_with_magma_wall',
    S('Volcanic Rock with Magma Wall'),
    {
        {
            name = 'everness_volcanic_rock_with_magma_animated.png',
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 3.0,
            },
        },
    },
    'everness:volcanic_rock_with_magma',
    Everness.node_sound_stone_defaults()
)
