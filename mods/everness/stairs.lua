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

stairs = stairs --[[@as MtgStairs]]

stairs.register_stair_and_slab(
    'coral_desert_stone',
    'everness:coral_desert_stone',
    { cracky = 3 },
    { 'everness_coral_desert_stone.png' },
    'Coral Desert Stone Stair',
    'Coral Desert Stone Slab',
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_desert_cobble',
    'everness:coral_desert_cobble',
    { cracky = 3 },
    { 'everness_coral_desert_cobble.png' },
    'Coral Desert Cobblestone Stair',
    'Coral Desert Cobblestone Slab',
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_desert_mossy_cobble',
    'everness:coral_desert_mossy_cobble',
    { cracky = 3 },
    { 'everness_coral_desert_mossy_cobble.png' },
    'Coral Mossy Cobblestone Stair',
    'Coral Mossy Cobblestone Slab',
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'cursed_brick',
    'everness:cursed_brick',
    { cracky = 2 },
    { 'everness_cursed_brick.png' },
    'Cursed Brick Stair',
    'Cursed Brick Slab',
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'cursed_brick_with_growth',
    'everness:cursed_brick_with_growth',
    { cracky = 2 },
    { 'everness_cursed_brick_with_growth.png' },
    'Cursed Brick with Growth Stair',
    'Cursed Brick with Growth Slab',
    Everness.node_sound_stone_defaults(),
    true
)

-- Quartz

stairs.register_stair_and_slab(
    'quartz_block',
    'everness:quartz_block',
    { cracky = 2 },
    {
        'everness_quartz_block_top.png',
        'everness_quartz_block_bottom.png',
        'everness_quartz_block_side.png',
    },
    S('Quartz Block Stair'),
    S('Quartz Block Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'quartz_chiseled',
    'everness:quartz_chiseled',
    { cracky = 2 },
    {
        'everness_quartz_block_chiseled_top.png',
        'everness_quartz_block_chiseled_top.png',
        'everness_quartz_block_chiseled.png',
    },
    S('Quartz Chiseled Stair'),
    S('Quartz Chiseled Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'quartz_pillar',
    'everness:quartz_pillar',
    { cracky = 2 },
    {
        'everness_quartz_block_lines_top.png',
        'everness_quartz_block_lines_top.png',
        'everness_quartz_block_lines.png',
    },
    S('Quartz Pillar Stair'),
    S('Quartz Pillar Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

-- Dry Wood

stairs.register_stair_and_slab(
    'dry_wood',
    'everness:dry_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    { 'everness_dry_wood.png' },
    S('Dry Wood Stair'),
    S('Dry Wood Slab'),
    Everness.node_sound_wood_defaults(),
    true
)

-- Coral Wood

stairs.register_stair_and_slab(
    'coral_wood',
    'everness:coral_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 3 },
    { 'everness_coral_wood.png' },
    S('Coral Wood Stair'),
    S('Coral Wood Slab'),
    Everness.node_sound_wood_defaults(),
    true
)

-- Bamboo Wood

stairs.register_stair_and_slab(
    'bamboo_wood',
    'everness:bamboo_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    { 'everness_dry_bamboo_block_side.png' },
    S('Bamboo Wood Stair'),
    S('Bamboo Wood Slab'),
    Everness.node_sound_wood_defaults(),
    true
)

stairs.register_stair_and_slab(
    'bamboo_mosaic_wood',
    'everness:bamboo_mosaic_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    { 'everness_bamboo_mosaic.png' },
    S('Bamboo Mosaic Wood Stair'),
    S('Bamboo Mosaic Wood Slab'),
    Everness.node_sound_wood_defaults(),
    true
)

-- Forsaken stone

stairs.register_stair_and_slab(
    'forsaken_desert_brick',
    'everness:forsaken_desert_brick',
    { cracky = 2, stone = 1 },
    { 'everness_forsaken_desert_brick.png' },
    S('Forsaken Desert Brick Stair'),
    S('Forsaken Desert Brick Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'forsaken_desert_brick_red',
    'everness:forsaken_desert_brick_red',
    { cracky = 2, stone = 1 },
    { 'everness_forsaken_desert_brick_red.png' },
    S('Forsaken Desert Brick Red Stair'),
    S('Forsaken Desert Brick Red Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'forsaken_desert_chiseled_stone',
    'everness:forsaken_desert_chiseled_stone',
    { cracky = 2, stone = 1 },
    { 'everness_forsaken_desert_chiseled_stone_side.png' },
    S('Forsaken Desert Chiseled Stone Stair'),
    S('Forsaken Desert Chiseled Stone Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

-- Baobab Wood

stairs.register_stair_and_slab(
    'baobab_wood',
    'everness:baobab_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    { 'everness_baobab_wood.png' },
    S('Baobab Wood Stair'),
    S('Baobab Wood Slab'),
    Everness.node_sound_wood_defaults(),
    true
)

-- Sequoia Wood

stairs.register_stair_and_slab(
    'sequoia_wood',
    'everness:sequoia_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    { 'everness_sequoia_wood.png' },
    S('Sequoia Wood Stair'),
    S('Sequoia Wood Slab'),
    Everness.node_sound_wood_defaults(),
    true
)

-- Forsaken Tundra

stairs.register_stair_and_slab(
    'forsaken_tundra_cobble',
    'everness:forsaken_tundra_cobble',
    { cracky = 3, stone = 2 },
    { 'everness_forsaken_tundra_cobblestone.png' },
    S('Forsaken Tundra Cobblestone Stair'),
    S('Forsaken Tundra Cobblestone Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'forsaken_tundra_stone',
    'everness:forsaken_tundra_stone',
    { cracky = 3, stone = 1 },
    { 'everness_forsaken_tundra_stone.png' },
    S('Forsaken Tundra Stone Stair'),
    S('Forsaken Tundra Stone Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'forsaken_tundra_brick',
    'everness:forsaken_tundra_brick',
    { cracky = 2, stone = 1 },
    { 'everness_forsaken_tundra_brick.png' },
    S('Forsaken Tundra Brick Stair'),
    S('Forsaken Tundra Brick Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

-- Willow Wood

stairs.register_stair_and_slab(
    'willow_wood',
    'everness:willow_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    { 'everness_willow_wood.png' },
    S('Willow Wood Stair'),
    S('Willow Wood Slab'),
    Everness.node_sound_wood_defaults(),
    true
)

-- Crystal Wood

stairs.register_stair_and_slab(
    'crystal_wood',
    'everness:crystal_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    { 'everness_crystal_wood.png' },
    S('Crystal Wood Stair'),
    S('Crystal Wood Slab'),
    Everness.node_sound_wood_defaults(),
    true
)

-- Mese Wood

stairs.register_stair_and_slab(
    'mese_wood',
    'everness:mese_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    { 'everness_mese_wood.png' },
    S('Mese Wood Stair'),
    S('Mese Wood Slab'),
    Everness.node_sound_wood_defaults(),
    true
)

-- Magma Cobble

stairs.register_stair_and_slab(
    'magmacobble',
    'everness:magmacobble',
    { cracky = 3, stone = 1 },
    {
        {
            name = 'everness_magmacobble_animated.png',
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 3.0,
            },
        }
    },
    S('Magma Cobblestone Stair'),
    S('Magma Cobblestone Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

-- Volcanic rock

stairs.register_stair_and_slab(
    'volcanic_rock',
    'everness:volcanic_rock',
    { cracky = 1, stone = 2 },
    { 'everness_volcanic_rock.png' },
    S('Volcanic Rock Stair'),
    S('Volcanic Rock Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'volcanic_rock_with_magma',
    'everness:volcanic_rock_with_magma',
    { cracky = 1, stone = 2 },
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
    S('Volcanic Rock with Magma Stair'),
    S('Volcanic Rock with Magma Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

-- Coral Forest Deep Ocean

stairs.register_stair_and_slab(
    'coral_deep_ocean_sandstone_block',
    'everness:coral_deep_ocean_sandstone_block',
    { cracky = 2 },
    { 'everness_deep_ocean_sandstone_block.png' },
    S('Coral Depp Ocean Sandstone Block Stair'),
    S('Coral Depp Ocean Sandstone Block Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_deep_ocean_sandstone_brick',
    'everness:coral_deep_ocean_sandstone_brick',
    { cracky = 2 },
    { 'everness_deep_ocean_sandstone_brick.png' },
    S('Coral Depp Ocean Sandstone Brick Stair'),
    S('Coral Depp Ocean Sandstone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

-- Coral White Sandstone

stairs.register_stair_and_slab(
    'coral_white_sandstone',
    'everness:coral_white_sandstone',
    { cracky = 2 },
    { 'everness_coral_white_sandstone.png' },
    S('Coral White Sandstone Stair'),
    S('Coral White Sandstone Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_white_sandstone_pillar',
    'everness:coral_white_sandstone_pillar',
    { cracky = 2 },
    {
        'everness_coral_white_sandstone.png',
        'everness_coral_white_sandstone.png',
        'everness_coral_white_sandstone_pillar.png',
    },
    S('Coral White Sandstone Pillar Stair'),
    S('Coral White Sandstone Pillar Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_white_sandstone_brick',
    'everness:coral_white_sandstone_brick',
    { cracky = 2 },
    { 'everness_coral_white_sandstone_brick.png' },
    S('Coral White Sandstone Brick Stair'),
    S('Coral White Sandstone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

-- Coral Desert Stone

stairs.register_stair_and_slab(
    'coral_desert_stone_block',
    'everness:coral_desert_stone_block',
    { cracky = 2 },
    { 'everness_coral_desert_stone_block.png' },
    S('Coral Desert Stone Block Stair'),
    S('Coral Desert Stone Block Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_desert_stone_brick',
    'everness:coral_desert_stone_brick',
    { cracky = 2 },
    { 'everness_coral_desert_stone_brick.png' },
    S('Coral Desert Stone Brick Stair'),
    S('Coral Desert Stone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

-- Coral Sandstone

stairs.register_stair_and_slab(
    'coral_sandstone',
    'everness:coral_sandstone',
    { cracky = 2 },
    { 'everness_coral_sandstone.png' },
    S('Coral Sandstone Stair'),
    S('Coral Sandstone Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_sandstone_brick',
    'everness:coral_sandstone_brick',
    { cracky = 2 },
    { 'everness_coral_sandstone_brick.png' },
    S('Coral Sandstone Brick Stair'),
    S('Coral Sandstone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_sandstone_chiseled',
    'everness:coral_sandstone_chiseled',
    { cracky = 2 },
    { 'everness_coral_sandstone_chiseled.png' },
    S('Coral Sandstone Chiseled Stair'),
    S('Coral Sandstone Chiseled Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_sandstone_carved_1',
    'everness:coral_sandstone_carved_1',
    { cracky = 2 },
    { 'everness_coral_sandstone_carved_1.png' },
    S('Coral Sandstone Carved Stair'),
    S('Coral Sandstone Carved Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'cursed_lands_deep_ocean_sandstone_block',
    'everness:cursed_lands_deep_ocean_sandstone_block',
    { cracky = 2 },
    { 'everness_cursed_lands_deep_ocean_sandblock.png' },
    S('Cursed Lands Deep Ocean Sandstone Block Stair'),
    S('Cursed Lands Deep Ocean Sandstone Block Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'cursed_lands_deep_ocean_sandstone_brick',
    'everness:cursed_lands_deep_ocean_sandstone_brick',
    { cracky = 2 },
    { 'everness_cursed_lands_deep_ocean_sand_brick.png' },
    S('Cursed Lands Deep Ocean Sandstone Brick Stair'),
    S('Cursed Lands Deep Ocean Sandstone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

-- Crystal
stairs.register_stair_and_slab(
    'crystal_forest_deep_ocean_sandstone_block',
    'everness:crystal_forest_deep_ocean_sandstone_block',
    { cracky = 2 },
    { 'everness_crystal_forest_deep_ocean_sandstone_block.png' },
    S('Crystal Forest Deep Ocean Sandstone Block Stair'),
    S('Crystal Forest Deep Ocean Sandstone Block Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'crystal_forest_deep_ocean_sandstone_brick',
    'everness:crystal_forest_deep_ocean_sandstone_brick',
    { cracky = 2 },
    { 'everness_crystal_forest_deep_ocean_sandstone_brick.png' },
    S('Crystal Forest Deep Ocean Sandstone Brick Stair'),
    S('Crystal Forest Deep Ocean Sandstone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'crystal_cobble',
    'everness:crystal_cobble',
    { cracky = 2 },
    { 'everness_crystal_cobble.png' },
    S('Crystal Cobblestone Stair'),
    S('Crystal Cobblestone Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'crystal_stone_brick',
    'everness:crystal_stone_brick',
    { cracky = 2 },
    { 'everness_crystal_stone_brick.png' },
    S('Crystal Stone Brick Stair'),
    S('Crystal Stone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'everness_glass',
    'everness:glass',
    { cracky = 3, oddly_breakable_by_hand = 3 },
    { 'everness_glass.png' },
    S('Everness Glass Stair'),
    S('Everness Glass Slab'),
    Everness.node_sound_glass_defaults(),
    true
)

-- Coral Bones

stairs.register_stair_and_slab(
    'coral_bones_block',
    'everness:coral_bones_block',
    { cracky = 2, stone = 1 },
    { 'everness_coral_bones_block.png' },
    S('Coral Bones Block Stair'),
    S('Coral Bones Block Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_bones_brick',
    'everness:coral_bones_brick',
    { cracky = 2, stone = 1 },
    { 'everness_coral_bones_brick.png' },
    S('Coral Bones Brick Stair'),
    S('Coral Bones Brick Slab'),
    Everness.node_sound_stone_defaults(),
    true
)
