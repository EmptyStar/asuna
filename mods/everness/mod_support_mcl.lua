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

---
-- Fence / Gates
---

-- Dry Wood

mcl_fences.register_fence_and_fence_gate(
    'fence_dry_wood',
    S('Dry Wood Fence'),
    S('Dry Wood Fence Gate'),
    'everness_fence_dry_wood.png',
    { handy = 1, axey = 1, flammable = 2, fence_wood = 1, fire_encouragement = 5, fire_flammability = 20 },
    2,
    15,
    { 'group:fence_wood' },
    Everness.node_sound_wood_defaults()
)

-- Bamboo Wood

mcl_fences.register_fence_and_fence_gate(
    'fence_bamboo_wood',
    S('Bamboo Wood Fence'),
    S('Bamboo Wood Fence Gate'),
    'everness_fence_bamboo_wood.png',
    { handy = 1, axey = 1, flammable = 2, fence_wood = 1, fire_encouragement = 5, fire_flammability = 20 },
    2,
    15,
    { 'group:fence_wood' },
    Everness.node_sound_wood_defaults()
)

mcl_fences.register_fence_and_fence_gate(
    'gate_crystal_wood',
    S('Crystal Wood Fence'),
    S('Crystal Wood Fence Gate'),
    'everness_crystal_wood.png',
    { handy = 1, axey = 1, flammable = 2, fence_wood = 1, fire_encouragement = 5, fire_flammability = 20 },
    2,
    15,
    { 'group:fence_wood' },
    Everness.node_sound_wood_defaults()
)

---
-- Walls
---

mcl_walls.register_wall(
    'everness:coraldesertcobblewall',
    S('Coral Cobblestone Wall'),
    'everness:coral_desert_cobble',
    { 'everness_coral_desert_cobble.png' },
    nil,
    nil,
    Everness.node_sound_stone_defaults()
)

mcl_walls.register_wall(
    'everness:coraldesertmossycobblewall',
    S('Coral Mossy Cobblestone Wall'),
    'everness:coral_desert_mossy_cobble',
    { 'everness_coral_desert_mossy_cobble.png' },
    nil,
    nil,
    Everness.node_sound_stone_defaults()
)

mcl_walls.register_wall(
    'everness:cursedbrickwall',
    S('Cursed Brick Wall'),
    'everness:cursed_brick',
    { 'everness_cursed_brick.png' },
    nil,
    nil,
    Everness.node_sound_stone_defaults()
)

mcl_walls.register_wall(
    'everness:cursedbrickwithgrowthwall',
    S('Cursed Brick with Growth Wall'),
    'everness:cursed_brick_with_growth',
    { 'everness_cursed_brick_with_growth.png' },
    nil,
    nil,
    Everness.node_sound_stone_defaults()
)

mcl_walls.register_wall(
    'everness:forsakentundracobblewall',
    S('Forsaken Tundra Cobblestone Wall'),
    'everness:forsaken_tundra_cobble',
    { 'everness_forsaken_tundra_cobblestone.png' },
    nil,
    nil,
    Everness.node_sound_stone_defaults()
)

mcl_walls.register_wall(
    'everness:forsakentundrastonewall',
    S('Forsaken Tundra Stone Wall'),
    'everness:forsaken_tundra_stone',
    { 'everness_forsaken_tundra_stone.png' },
    nil,
    nil,
    Everness.node_sound_stone_defaults()
)

mcl_walls.register_wall(
    'everness:forsakentundrabrickwall',
    S('Forsaken Tundra Brick Wall'),
    'everness:forsaken_tundra_brick',
    { 'everness_forsaken_tundra_brick.png' },
    nil,
    nil,
    Everness.node_sound_stone_defaults()
)

mcl_walls.register_wall(
    'everness:magmacobblewall',
    S('Magma Cobblestone Wall'),
    'everness:magmacobble',
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
    nil,
    nil,
    Everness.node_sound_stone_defaults()
)

mcl_walls.register_wall(
    'everness:volcanicrockwall',
    S('Volcanic Rock Wall'),
    'everness:volcanic_rock',
    { 'everness_volcanic_rock.png' },
    nil,
    nil,
    Everness.node_sound_stone_defaults()
)

mcl_walls.register_wall(
    'everness:volcanicrockwithmagmawall',
    S('Volcanic Rock with Magma Wall'),
    'everness:volcanic_rock_with_magma',
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
    nil,
    nil,
    Everness.node_sound_stone_defaults()
)

---
-- Stairs and Slabs
---

mcl_stairs.register_stair_and_slab(
    'coral_desert_stone',
    'everness:coral_desert_stone',
    { pickaxey = 3 },
    { 'everness_coral_desert_stone.png' },
    S('Coral Desert Stone Stair'),
    S('Coral Desert Stone Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Coral Desert Stone Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'coral_desert_cobble',
    'everness:coral_desert_cobble',
    { pickaxey = 3 },
    { 'everness_coral_desert_cobble.png' },
    S('Coral Desert Cobblestone Stair'),
    S('Coral Desert Cobblestone Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Coral Desert Cobblestone Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'coral_desert_mossy_cobble',
    'everness:coral_desert_mossy_cobble',
    { pickaxey = 3 },
    { 'everness_coral_desert_mossy_cobble.png' },
    S('Coral Mossy Cobblestone Stair'),
    S('Coral Mossy Cobblestone Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Coral Mossy Cobblestone Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'cursed_brick',
    'everness:cursed_brick',
    { pickaxey = 1 },
    { 'everness_cursed_brick.png' },
    S('Cursed Brick Stair'),
    S('Cursed Brick Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Cursed Brick Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'cursed_brick_with_growth',
    'everness:cursed_brick_with_growth',
    { pickaxey = 1 },
    { 'everness_cursed_brick_with_growth.png' },
    S('Cursed Brick with Growth Stair'),
    S('Cursed Brick with Growth Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Cursed Brick with Growth Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'coral_bones_block',
    'everness:coral_bones_block',
    { pickaxey = 1 },
    { 'everness_coral_bones_block.png' },
    S('Coral Bones Block Stair'),
    S('Coral Bones Block Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Coral Bones Block Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'coral_bones_brick',
    'everness:coral_bones_brick',
    { pickaxey = 1 },
    { 'everness_coral_bones_brick.png' },
    S('Coral Bones Brick Stair'),
    S('Coral Bones Brick Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Coral Bones Brick Slab'),
    nil
)

-- Quartz

mcl_stairs.register_stair_and_slab(
    'quartz_block',
    'everness:quartz_block',
    { pickaxey = 2 },
    {
        'everness_quartz_block_top.png',
        'everness_quartz_block_bottom.png',
        'everness_quartz_block_side.png',
    },
    S('Quartz Block Stair'),
    S('Quartz Block Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Quartz Block Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'quartz_chiseled',
    'everness:quartz_chiseled',
    { pickaxey = 2 },
    {
        'everness_quartz_block_chiseled_top.png',
        'everness_quartz_block_chiseled_top.png',
        'everness_quartz_block_chiseled.png',
    },
    S('Quartz Chiseled Stair'),
    S('Quartz Chiseled Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Quartz Chiseled Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'quartz_pillar',
    'everness:quartz_pillar',
    { pickaxey = 2 },
    {
        'everness_quartz_block_lines_top.png',
        'everness_quartz_block_lines_top.png',
        'everness_quartz_block_lines.png',
    },
    S('Quartz Pillar Stair'),
    S('Quartz Pillar Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Quartz Pillar Slab'),
    nil
)

-- Dry Wood

mcl_stairs.register_stair_and_slab(
    'dry_wood',
    'everness:dry_wood',
    { handy = 1, axey = 1, building_block = 1, material_wood = 1, fire_encouragement = 5, fire_flammability = 20, flammable = 3, wood = 1, },
    { 'everness_dry_wood.png' },
    S('Dry Wood Stair'),
    S('Dry Wood Slab'),
    Everness.node_sound_wood_defaults(),
    6,
    2,
    S('Double Dry Wood Slab'),
    nil
)

-- Coral Wood

mcl_stairs.register_stair_and_slab(
    'coral_wood',
    'everness:coral_wood',
    { handy = 1, axey = 1, building_block = 1, material_wood = 1, fire_encouragement = 5, fire_flammability = 20, flammable = 3, wood = 1, },
    { 'everness_coral_wood.png' },
    S('Coral Wood Stair'),
    S('Coral Wood Slab'),
    Everness.node_sound_wood_defaults(),
    6,
    2,
    S('Double Coral Wood Slab'),
    nil
)

-- Bamboo Wood

mcl_stairs.register_stair_and_slab(
    'bamboo_wood',
    'everness:bamboo_wood',
    { handy = 1, axey = 1, building_block = 1, material_wood = 1, fire_encouragement = 5, fire_flammability = 20, flammable = 3, wood = 1, },
    { 'everness_dry_bamboo_block_side.png' },
    S('Bamboo Wood Stair'),
    S('Bamboo Wood Slab'),
    Everness.node_sound_wood_defaults(),
    6,
    2,
    S('Double Bamboo Wood Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'bamboo_mosaic_wood',
    'everness:bamboo_mosaic_wood',
    { handy = 1, axey = 1, building_block = 1, material_wood = 1, fire_encouragement = 5, fire_flammability = 20, flammable = 3, wood = 1, },
    { 'everness_bamboo_mosaic.png' },
    S('Bamboo Mosaic Wood Stair'),
    S('Bamboo Mosaic Wood Slab'),
    Everness.node_sound_wood_defaults(),
    6,
    2,
    S('Double Bamboo Mosaic Wood Slab'),
    nil
)

-- Forsaken stone

mcl_stairs.register_stair_and_slab(
    'forsaken_desert_brick',
    'everness:forsaken_desert_brick',
    { pickaxey = 2, stone = 1 },
    { 'everness_forsaken_desert_brick.png' },
    S('Forsaken Desert Brick Stair'),
    S('Forsaken Desert Brick Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Forsaken Desert Brick Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'forsaken_desert_brick_red',
    'everness:forsaken_desert_brick_red',
    { pickaxey = 2, stone = 1 },
    { 'everness_forsaken_desert_brick_red.png' },
    S('Forsaken Desert Brick Red Stair'),
    S('Forsaken Desert Brick Red Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Forsaken Desert Brick Red Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'forsaken_desert_chiseled_stone',
    'everness:forsaken_desert_chiseled_stone',
    { pickaxey = 2, stone = 1 },
    { 'everness_forsaken_desert_chiseled_stone_side.png' },
    S('Forsaken Desert Chiseled Stone Stair'),
    S('Forsaken Desert Chiseled Stone Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Forsaken Desert Chiseled Stone Slab'),
    nil
)

-- Baobab Wood

mcl_stairs.register_stair_and_slab(
    'baobab_wood',
    'everness:baobab_wood',
    { handy = 1, axey = 1, building_block = 1, material_wood = 1, fire_encouragement = 5, fire_flammability = 20, flammable = 3, wood = 1, },
    { 'everness_baobab_wood.png' },
    S('Baobab Wood Stair'),
    S('Baobab Wood Slab'),
    Everness.node_sound_wood_defaults(),
    6,
    2,
    S('Double Baobab Wood Slab'),
    nil
)

-- Sequoia Wood

mcl_stairs.register_stair_and_slab(
    'sequoia_wood',
    'everness:sequoia_wood',
    { handy = 1, axey = 1, building_block = 1, material_wood = 1, fire_encouragement = 5, fire_flammability = 20, flammable = 3, wood = 1, },
    { 'everness_sequoia_wood.png' },
    S('Sequoia Wood Stair'),
    S('Sequoia Wood Slab'),
    Everness.node_sound_wood_defaults(),
    6,
    2,
    S('Double Sequoia Wood Slab'),
    nil
)

-- Forsaken Tundra

mcl_stairs.register_stair_and_slab(
    'forsaken_tundra_cobble',
    'everness:forsaken_tundra_cobble',
    { pickaxey = 3, stone = 2 },
    { 'everness_forsaken_tundra_cobblestone.png' },
    S('Forsaken Tundra Cobblestone Stair'),
    S('Forsaken Tundra Cobblestone Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Forsaken Tundra Cobblestone Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'forsaken_tundra_stone',
    'everness:forsaken_tundra_stone',
    { pickaxey = 3, stone = 1 },
    { 'everness_forsaken_tundra_stone.png' },
    S('Forsaken Tundra Stone Stair'),
    S('Forsaken Tundra Stone Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Forsaken Tundra Stone Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'forsaken_tundra_brick',
    'everness:forsaken_tundra_brick',
    { pickaxey = 2, stone = 1 },
    { 'everness_forsaken_tundra_brick.png' },
    S('Forsaken Tundra Brick Stair'),
    S('Forsaken Tundra Brick Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Forsaken Tundra Brick Slab'),
    nil
)

-- Willow Wood

mcl_stairs.register_stair_and_slab(
    'willow_wood',
    'everness:willow_wood',
    { handy = 1, axey = 1, building_block = 1, material_wood = 1, fire_encouragement = 5, fire_flammability = 20, flammable = 3, wood = 1, },
    { 'everness_willow_wood.png' },
    S('Willow Wood Stair'),
    S('Willow Wood Slab'),
    Everness.node_sound_wood_defaults(),
    6,
    2,
    S('Double Willow Wood Slab'),
    nil
)


-- Magma Cobble

mcl_stairs.register_stair_and_slab(
    'magmacobble',
    'everness:magmacobble',
    { pickaxey = 3, stone = 1 },
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
    6,
    2,
    S('Double Magma Cobblestone Slab'),
    nil
)

-- Volcanic rock

mcl_stairs.register_stair_and_slab(
    'volcanic_rock',
    'everness:volcanic_rock',
    { pickaxey = 1, stone = 2 },
    { 'everness_volcanic_rock.png' },
    S('Volcanic Rock Stair'),
    S('Volcanic Rock Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Volcanic Rock Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'volcanic_rock_with_magma',
    'everness:volcanic_rock_with_magma',
    { pickaxey = 1, stone = 2 },
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
    6,
    2,
    S('Double Volcanic Rock with Magma Slab'),
    nil
)

-- Coral Forest Deep Ocean

mcl_stairs.register_stair_and_slab(
    'coral_deep_ocean_sandstone_block',
    'everness:coral_deep_ocean_sandstone_block',
    { pickaxey = 2 },
    { 'everness_deep_ocean_sandstone_block.png' },
    S('Coral Depp Ocean Sandstone Block Stair'),
    S('Coral Depp Ocean Sandstone Block Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Coral Depp Ocean Sandstone Block Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'coral_deep_ocean_sandstone_brick',
    'everness:coral_deep_ocean_sandstone_brick',
    { pickaxey = 2 },
    { 'everness_deep_ocean_sandstone_brick.png' },
    S('Coral Depp Ocean Sandstone Brick Stair'),
    S('Coral Depp Ocean Sandstone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Coral Depp Ocean Sandstone Brick Slab'),
    nil
)

-- Coral White Sandstone

mcl_stairs.register_stair_and_slab(
    'coral_white_sandstone',
    'everness:coral_white_sandstone',
    { pickaxey = 2 },
    { 'everness_coral_white_sandstone.png' },
    S('Coral White Sandstone Stair'),
    S('Coral White Sandstone Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Coral White Sandstone Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'coral_white_sandstone_pillar',
    'everness:coral_white_sandstone_pillar',
    { pickaxey = 2 },
    {
        'everness_coral_white_sandstone.png',
        'everness_coral_white_sandstone.png',
        'everness_coral_white_sandstone_pillar.png',
    },
    S('Coral White Sandstone Pillar Stair'),
    S('Coral White Sandstone Pillar Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Coral White Sandstone Pillar Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'coral_white_sandstone_brick',
    'everness:coral_white_sandstone_brick',
    { pickaxey = 2 },
    { 'everness_coral_white_sandstone_brick.png' },
    S('Coral White Sandstone Brick Stair'),
    S('Coral White Sandstone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Coral White Sandstone Brick Slab'),
    nil
)

-- Coral Desert Stone

mcl_stairs.register_stair_and_slab(
    'coral_desert_stone_block',
    'everness:coral_desert_stone_block',
    { pickaxey = 2 },
    { 'everness_coral_desert_stone_block.png' },
    S('Coral Desert Stone Block Stair'),
    S('Coral Desert Stone Block Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Coral Desert Stone Block Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'coral_desert_stone_brick',
    'everness:coral_desert_stone_brick',
    { pickaxey = 2 },
    { 'everness_coral_desert_stone_brick.png' },
    S('Coral Desert Stone Brick Stair'),
    S('Coral Desert Stone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Coral Desert Stone Brick Slab'),
    nil
)

-- Coral Sandstone

mcl_stairs.register_stair_and_slab(
    'coral_sandstone',
    'everness:coral_sandstone',
    { pickaxey = 2 },
    { 'everness_coral_sandstone.png' },
    S('Coral Sandstone Stair'),
    S('Coral Sandstone Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Coral Sandstone Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'coral_sandstone_brick',
    'everness:coral_sandstone_brick',
    { pickaxey = 2 },
    { 'everness_coral_sandstone_brick.png' },
    S('Coral Sandstone Brick Stair'),
    S('Coral Sandstone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Coral Sandstone Brick Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'coral_sandstone_chiseled',
    'everness:coral_sandstone_chiseled',
    { pickaxey = 2 },
    { 'everness_coral_sandstone_chiseled.png' },
    S('Coral Sandstone Chiseled Stair'),
    S('Coral Sandstone Chiseled Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Coral Sandstone Chiseled Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'coral_sandstone_carved_1',
    'everness:coral_sandstone_carved_1',
    { pickaxey = 2 },
    { 'everness_coral_sandstone_carved_1.png' },
    S('Coral Sandstone Carved Stair'),
    S('Coral Sandstone Carved Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Coral Sandstone Carved Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'cursed_lands_deep_ocean_sandstone_block',
    'everness:cursed_lands_deep_ocean_sandstone_block',
    { pickaxey = 2 },
    { 'everness_cursed_lands_deep_ocean_sandblock.png' },
    S('Cursed Lands Deep Ocean Sandstone Block Stair'),
    S('Cursed Lands Deep Ocean Sandstone Block Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Cursed Lands Deep Ocean Sandstone Block Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'cursed_lands_deep_ocean_sandstone_brick',
    'everness:cursed_lands_deep_ocean_sandstone_brick',
    { pickaxey = 2 },
    { 'everness_cursed_lands_deep_ocean_sand_brick.png' },
    S('Cursed Lands Deep Ocean Sandstone Brick Stair'),
    S('Cursed Lands Deep Ocean Sandstone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Cursed Lands Deep Ocean Sandstone Brick Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'crystal_forest_deep_ocean_sandstone_block',
    'everness:crystal_forest_deep_ocean_sandstone_block',
    { pickaxey = 2 },
    { 'everness_crystal_forest_deep_ocean_sandstone_block.png' },
    S('Crystal Forest Deep Ocean Sandstone Block Stair'),
    S('Crystal Forest Deep Ocean Sandstone Block Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Crystal Forest Deep Ocean Sandstone Block Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'crystal_forest_deep_ocean_sandstone_brick',
    'everness:crystal_forest_deep_ocean_sandstone_brick',
    { pickaxey = 2 },
    { 'everness_crystal_forest_deep_ocean_sandstone_brick.png' },
    S('Crystal Forest Deep Ocean Sandstone Brick Stair'),
    S('Crystal Forest Deep Ocean Sandstone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Crystal Forest Deep Ocean Sandstone Brick Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'crystal_cobble',
    'everness:crystal_cobble',
    { pickaxey = 2 },
    { 'everness_crystal_cobble.png' },
    S('Crystal Cobblestone Stair'),
    S('Crystal Cobblestone Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Crystal Cobblestone Slab'),
    nil
)

mcl_stairs.register_stair_and_slab(
    'crystal_stone_brick',
    'everness:crystal_stone_brick',
    { pickaxey = 2 },
    { 'everness_crystal_stone_brick.png' },
    S('Crystal Stone Brick Stair'),
    S('Crystal Stone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    6,
    2,
    S('Double Crystal Stone Brick Slab'),
    nil
)

-- Crystal Wood

mcl_stairs.register_stair_and_slab(
    'crystal_wood',
    'everness:crystal_wood',
    { handy = 1, axey = 1, building_block = 1, material_wood = 1, fire_encouragement = 5, fire_flammability = 20, flammable = 3, wood = 1, },
    { 'everness_crystal_wood.png' },
    S('Crystal Wood Stair'),
    S('Crystal Wood Slab'),
    Everness.node_sound_wood_defaults(),
    6,
    2,
    S('Double Crystal Wood Slab'),
    nil
)

-- Mese Wood

mcl_stairs.register_stair_and_slab(
    'mese_wood',
    'everness:mese_wood',
    { handy = 1, axey = 1, building_block = 1, material_wood = 1, fire_encouragement = 5, fire_flammability = 20, flammable = 3, wood = 1, },
    { 'everness_mese_wood.png' },
    S('Mese Wood Stair'),
    S('Mese Wood Slab'),
    Everness.node_sound_wood_defaults(),
    6,
    2,
    S('Double Mese Wood Slab'),
    nil
)

---
-- Doors
---

mcl_doors:register_door('everness:door_bamboo', {
    description = S('Bamboo Door'),
    inventory_image = 'everness_door_bamboo_item.png',
    groups = { handy = 1, axey = 1, material_wood = 1, flammable = -1 },
    tiles_bottom = { 'everness_mcl_doors_door_bamboo_lower.png', 'everness_mcl_doors_door_bamboo_side_upper.png' },
    tiles_top = { 'everness_mcl_doors_door_bamboo_upper.png', 'everness_mcl_doors_door_bamboo_side_upper.png' },
    sounds = Everness.node_sound_bamboo_defaults({
        dug = { name = 'everness_bamboo_hit', gain = 1.25 }
    }),
    sound_open = 'everness_door_bamboo_open',
    sound_close = 'everness_door_bamboo_open',
    _mcl_hardness = 3,
    _mcl_blast_resistance = 3,
})

minetest.register_craft({
    output = 'everness:door_bamboo 3',
    recipe = {
        { 'everness:bamboo_wood', 'everness:bamboo_wood' },
        { 'everness:bamboo_wood', 'everness:bamboo_wood' },
        { 'everness:bamboo_wood', 'everness:bamboo_wood' }
    }
})

mcl_doors:register_trapdoor('everness:trapdoor_bamboo', {
    description = S('Bamboo Trapdoor'),
    tile_front = 'everness_door_trapdoor_bamboo.png',
    tile_side = 'everness_mcl_doors_trapdoor_bamboo_side.png',
    wield_image = 'everness_door_trapdoor_bamboo.png',
    groups = { handy = 1, axey = 1, material_wood = 1, flammable = -1 },
    sounds = Everness.node_sound_bamboo_defaults({
        dug = { name = 'everness_bamboo_hit', gain = 1.25 }
    }),
    sound_open = 'everness_door_bamboo_open',
    sound_close = 'everness_door_bamboo_open',
    _mcl_hardness = 3,
    _mcl_blast_resistance = 3,
})

minetest.register_craft({
    output = 'everness:trapdoor_bamboo',
    recipe = {
        { 'everness:bamboo_wood', 'everness:bamboo_wood' },
        { 'everness:bamboo_wood', 'everness:bamboo_wood' },
    }
})

mcl_doors:register_door('everness:door_bone_pyrite', {
    description = S('Bone Pyrit Door'),
    inventory_image = 'everness_door_bone_pyrite_item.png',
    groups = { handy = 1, axey = 1, material_wood = 1, flammable = -1 },
    tiles_bottom = { 'everness_mcl_doors_door_bone_pyrite_lower.png', 'everness_mcl_doors_door_bone_pyrite_side_upper.png' },
    tiles_top = { 'everness_mcl_doors_door_bone_pyrite_upper.png', 'everness_mcl_doors_door_bone_pyrite_side_upper.png' },
    sounds = Everness.node_sound_wood_defaults(),
    _mcl_hardness = 3,
    _mcl_blast_resistance = 3,
})

minetest.register_craft({
    output = 'everness:door_bone_pyrite 3',
    recipe = {
        { 'everness:pyrite_ingot', 'everness:bone' },
        { 'everness:pyrite_ingot', 'everness:bone' },
        { 'everness:pyrite_ingot', 'everness:bone' }
    }
})

mcl_doors:register_door('everness:door_willow', {
    description = S('Willow Door'),
    inventory_image = 'everness_door_willow_item.png',
    groups = { handy = 1, axey = 1, material_wood = 1, flammable = -1 },
    tiles_bottom = { 'everness_mcl_doors_door_willow_lower.png', 'everness_mcl_doors_door_willow_side_lower.png' },
    tiles_top = { 'everness_mcl_doors_door_willow_upper.png', 'everness_mcl_doors_door_willow_side_upper.png' },
    sounds = Everness.node_sound_wood_defaults(),
    _mcl_hardness = 3,
    _mcl_blast_resistance = 3,
})

minetest.register_craft({
    output = 'everness:door_willow 3',
    recipe = {
        { 'everness:willow_wood', 'everness:willow_wood' },
        { 'everness:willow_wood', 'everness:willow_wood' },
        { 'everness:willow_wood', 'everness:willow_wood' }
    }
})

mcl_doors:register_door('everness:door_crystal_wood', {
    description = S('Crystal Wood Door'),
    inventory_image = 'everness_door_crystal_wood_item.png',
    groups = { handy = 1, axey = 1, material_wood = 1, flammable = -1 },
    tiles_bottom = { 'everness_mcl_doors_door_crystal_wood_lower.png', 'everness_mcl_doors_door_crystal_wood_side_lower.png' },
    tiles_top = { 'everness_mcl_doors_door_crystal_wood_upper.png', 'everness_mcl_doors_door_crystal_wood_side_upper.png' },
    sounds = Everness.node_sound_glass_defaults(),
    sound_open = 'everness_door_glass_open',
    sound_close = 'everness_door_glass_close',
    _mcl_hardness = 3,
    _mcl_blast_resistance = 3,
})

minetest.register_craft({
    output = 'everness:door_crystal_wood 3',
    recipe = {
        { 'everness:crystal_wood', 'everness:crystal_wood' },
        { 'everness:crystal_wood', 'everness:crystal_wood' },
        { 'everness:crystal_wood', 'everness:crystal_wood' }
    }
})

mcl_doors:register_trapdoor('everness:trapdoor_crystal_wood', {
    description = S('Crystal Wood Trapdoor'),
    tile_front = 'everness_door_trapdoor_crystal_wood.png',
    tile_side = 'everness_mcl_doors_trapdoor_crystal_wood_side.png',
    wield_image = 'everness_door_trapdoor_crystal_wood.png',
    groups = { handy = 1, axey = 1, material_wood = 1, flammable = -1 },
    sounds = Everness.node_sound_glass_defaults(),
    sound_open = 'everness_door_glass_open',
    sound_close = 'everness_door_glass_close',
    _mcl_hardness = 3,
    _mcl_blast_resistance = 3,
})

minetest.register_craft({
    output = 'everness:trapdoor_crystal_wood',
    recipe = {
        { 'everness:crystal_wood', 'everness:crystal_wood' },
        { 'everness:crystal_wood', 'everness:crystal_wood' },
    }
})

mcl_doors:register_door('everness:door_cursed_wood', {
    description = S('Cursed Wood Door'),
    inventory_image = 'everness_door_cursed_wood_item.png',
    groups = { handy = 1, axey = 1, material_wood = 1, flammable = -1 },
    tiles_bottom = { 'everness_mcl_doors_door_cursed_wood_lower.png', 'everness_mcl_doors_door_cursed_wood_side_upper.png' },
    tiles_top = { 'everness_mcl_doors_door_cursed_wood_upper.png', 'everness_mcl_doors_door_cursed_wood_side_upper.png' },
    sounds = Everness.node_sound_wood_defaults(),
    sound_open = 'everness_creaky_door_open',
    sound_close = 'everness_creaky_door_close',
    _mcl_hardness = 3,
    _mcl_blast_resistance = 3,
})

minetest.register_craft({
    output = 'everness:door_cursed_wood 3',
    recipe = {
        { 'everness:dry_wood', 'everness:dry_wood' },
        { 'everness:dry_wood', 'everness:dry_wood' },
        { 'everness:dry_wood', 'everness:dry_wood' }
    }
})

mcl_doors:register_trapdoor('everness:trapdoor_cursed_wood', {
    description = S('Cursed Wood Trapdoor'),
    tile_front = 'everness_door_trapdoor_cursed_wood.png',
    tile_side = 'everness_mcl_doors_trapdoor_cursed_wood_side.png',
    wield_image = 'everness_door_trapdoor_cursed_wood.png',
    groups = { handy = 1, axey = 1, material_wood = 1, flammable = -1 },
    sounds = Everness.node_sound_wood_defaults(),
    sound_open = 'everness_creaky_door_open',
    sound_close = 'everness_creaky_door_close',
    _mcl_hardness = 3,
    _mcl_blast_resistance = 3,
})

minetest.register_craft({
    output = 'everness:trapdoor_cursed_wood',
    recipe = {
        { 'everness:dry_wood', 'everness:dry_wood' },
        { 'everness:dry_wood', 'everness:dry_wood' },
    }
})
