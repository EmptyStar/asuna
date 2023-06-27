--[[
    Everness. Never ending discovery in Everness mapgen.
    Copyright (C) 2022 SaKeL <juraj.vajda@gmail.com>

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

minetest = minetest --[[@as Minetest]]

local S = minetest.get_translator(minetest.get_current_modname())

--
-- Ores
--

minetest.register_node('everness:coral_desert_stone_with_coal', {
    description = S('Coal Ore'),
    tiles = { 'everness_coral_desert_stone.png^everness_mineral_coal.png' },
    groups = { cracky = 3 },
    drop = 'default:coal_lump',
    sounds = Everness.node_sound_stone_defaults(),
})

minetest.register_node('everness:crystal_stone_with_coal', {
    description = S('Coal Ore'),
    tiles = { 'everness_crystal_stone.png^[sheet:2x2:1,1^everness_mineral_coal.png' },
    groups = { cracky = 3 },
    drop = 'default:coal_lump',
    sounds = Everness.node_sound_stone_defaults(),
})

minetest.register_node('everness:cursed_stone_carved_with_coal', {
    description = S('Coal Ore'),
    tiles = { 'everness_cursed_stone_carved.png^[sheet:2x2:1,1^everness_mineral_coal.png' },
    groups = { cracky = 3 },
    drop = 'default:coal_lump',
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:stone_with_pyrite', {
    description = S('Pyrite Ore'),
    tiles = { 'everness_stone.png^everness_mineral_pyrite.png' },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 4,
        building_block = 1,
        material_stone = 1,
        blast_furnace_smeltable = 1
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 3,
    _mcl_silk_touch_drop = true,
    -- _mcl_fortune_drop = mcl_core.fortune_drop_ore,
    drop = 'everness:pyrite_lump',
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:pyriteblock', {
    description = S('Pyrite Block'),
    tiles = { 'everness_pyrite_block.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 4,
        building_block = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 3,
    sounds = Everness.node_sound_metal_defaults(),
})

Everness:register_node('everness:pyriteblock_forged', {
    description = S('Forged Pyrite Block'),
    tiles = { 'everness_pyrite_block_forged.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 4,
        building_block = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 3,
    sounds = Everness.node_sound_metal_defaults(),
})

Everness:register_node('everness:pyriteblock_brick', {
    description = S('Pyrite Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_pyriteblock_brick.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 4,
        building_block = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 3,
    sounds = Everness.node_sound_metal_defaults(),
})

Everness:register_node('everness:pyriteblock_slab_brick', {
    description = S('Pyrite Slab Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_pyrite_block_slab_brick.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 4,
        building_block = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 3,
    sounds = Everness.node_sound_metal_defaults(),
})

Everness:register_node('everness:pyriteblock_spiral', {
    description = S('Pyrite Spiral'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_pyrite_block_spiral.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 4,
        building_block = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 3,
    sounds = Everness.node_sound_metal_defaults(),
})

Everness:register_node('everness:pyrite_pillar_bottom', {
    description = S('Pyrite Pillar Bottom'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_pyrite_pillar_bottom.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 4,
        building_block = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 3,
    sounds = Everness.node_sound_metal_defaults(),
})

Everness:register_node('everness:pyrite_pillar_middle', {
    description = S('Pyrite Pillar Middle'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_pyrite_pillar_middle.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 4,
        building_block = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 3,
    sounds = Everness.node_sound_metal_defaults(),
})

Everness:register_node('everness:pyrite_pillar_top', {
    description = S('Pyrite Pillar Top'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_pyrite_pillar_top.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 4,
        building_block = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 3,
    sounds = Everness.node_sound_metal_defaults(),
})

Everness:register_node('everness:pyrite_pillar_small', {
    description = S('Pyrite Pillar Small'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_pyrite_pillar_small.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 4,
        building_block = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 3,
    sounds = Everness.node_sound_metal_defaults(),
})

Everness:register_node('everness:pyriteblock_polished', {
    description = S('Polished Pyrite Block'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_pyrite_block_polished.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 4,
        building_block = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 3,
    sounds = Everness.node_sound_metal_defaults(),
})

Everness:register_node('everness:quartz_ore', {
    description = S('Quartz Ore'),
    tiles = { 'everness_stone.png^everness_quartz_ore.png' },
    groups = {
        -- MTG
        cracky = 3,
        stone = 1,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        xp = 3
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 3,
    _mcl_silk_touch_drop = true,
    -- _mcl_fortune_drop = mcl_core.fortune_drop_ore,
    drop = 'everness:quartz_crystal',
    sounds = Everness.node_sound_stone_defaults(),
})

--
-- Stone
--

Everness:register_node('everness:coral_desert_stone', {
    description = S('Coral Desert Stone'),
    tiles = { 'everness_coral_desert_stone.png' },
    drop = 'everness:coral_desert_cobble',
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:crystal_stone', {
    description = S('Crystal Stone'),
    tiles = {
        {
            name = 'everness_crystal_stone.png',
            align_style = 'world',
            scale = 2
        }
    },
    drop = 'everness:crystal_cobble',
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_sandstone', {
    description = S('Coral Sandstone'),
    tiles = { 'everness_coral_sandstone.png' },
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_sandstone_brick', {
    description = S('Coral Sandstone Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_coral_sandstone_brick.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_sandstone_chiseled', {
    description = S('Coral Sandstone Chiseled Block'),
    tiles = { 'everness_coral_sandstone_chiseled.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_sandstone_carved_1', {
    description = S('Coral Sandstone Carved Block'),
    tiles = { 'everness_coral_sandstone_carved_1.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_white_sandstone', {
    description = S('Coral White Sandstone'),
    tiles = { 'everness_coral_white_sandstone.png' },
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_white_sandstone_brick', {
    description = S('Coral White Sandstone Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_coral_white_sandstone_brick.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_white_sandstone_pillar', {
    description = S('Coral White Sandstone Pillar'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = {
        'everness_coral_white_sandstone.png',
        'everness_coral_white_sandstone.png',
        'everness_coral_white_sandstone_pillar.png',
    },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_desert_stone_block', {
    description = S('Coral Desert Stone Block'),
    tiles = { 'everness_coral_desert_stone_block.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_desert_stone_brick', {
    description = S('Coral Desert Stone Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_coral_desert_stone_brick.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_bones', {
    description = S('Coral Bones'),
    tiles = { 'everness_coral_bones.png' },
    groups = {
        -- MTG
        cracky = 3,
        stone = 1,
        -- MCL
        pickaxey = 1,
        building_block = 1
    },
    _mcl_hardness = 1.5,
    _mcl_blast_resistance = 6,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_bones_block', {
    description = S('Coral Bones Block'),
    tiles = { 'everness_coral_bones_block.png' },
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_hardness = 1.5,
    _mcl_blast_resistance = 6,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_bones_brick', {
    description = S('Coral Bones Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_coral_bones_brick.png' },
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_hardness = 1.5,
    _mcl_blast_resistance = 6,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:crystal_cobble', {
    description = S('Crystal Cobblestone'),
    tiles = { 'everness_crystal_cobble.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        stone = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:crystal_stone_brick', {
    description = S('Crystal Stone Brick'),
    paramtype2 = 'facedir',
    drawtype = 'allfaces',
    place_param2 = 0,
    tiles = { 'everness_crystal_stone_brick.png' },
    use_texture_alpha = 'blend',
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_desert_cobble', {
    description = S('Coral Desert Cobblestone'),
    tiles = { 'everness_coral_desert_cobble.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        stone = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_desert_mossy_cobble', {
    description = S('Coral Mossy Cobblestone'),
    tiles = { 'everness_coral_desert_mossy_cobble.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        stone = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_desert_stone_with_moss', {
    description = S('Coral Desert Stone with Moss'),
    tiles = {
        'everness_coral_stone_with_moss_top.png',
        'everness_coral_desert_stone.png',
        {
            name = 'everness_coral_desert_stone.png^everness_coral_stone_with_moss_side.png',
            tileable_vertical = false
        }
    },
    groups = {
        -- MTG
        cracky = 3,
        -- Everness
        everness_spreading_dirt_type_under = 1,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    drop = 'everness:coral_desert_cobble',
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_deep_ocean_sandstone_block', {
    description = S('Coral Deep Ocean Sandstone Block'),
    tiles = { 'everness_deep_ocean_sandstone_block.png' },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_deep_ocean_sandstone_brick', {
    description = S('Coral Deep Ocean Sandstone Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_deep_ocean_sandstone_brick.png' },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:cursed_lands_deep_ocean_sandstone_block', {
    description = S('Cursed Lands Deep Ocean Sandstone Block'),
    tiles = { 'everness_cursed_lands_deep_ocean_sandblock.png' },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:cursed_lands_deep_ocean_sandstone_brick', {
    description = S('Cursed Lands Deep Ocean Sandstone Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_cursed_lands_deep_ocean_sand_brick.png' },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:crystal_forest_deep_ocean_sandstone_block', {
    description = S('Crystal Forest Deep Ocean Sandstone Block'),
    tiles = { 'everness_crystal_forest_deep_ocean_sandstone_block.png' },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:crystal_forest_deep_ocean_sandstone_brick', {
    description = S('Crystal Forest Deep Ocean Sandstone Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_crystal_forest_deep_ocean_sandstone_brick.png' },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:forsaken_desert_stone', {
    description = S('Forsaken Desert Stone'),
    tiles = { 'everness_forsaken_desert_stone.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    drop = 'everness:forsaken_desert_cobble_red',
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:forsaken_desert_cobble_red', {
    description = S('Forsaken Desert Cobblestone Red'),
    tiles = { 'everness_forsaken_desert_cobble_red.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        stone = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:forsaken_desert_cobble', {
    description = S('Forsaken Desert Cobblestone'),
    tiles = { 'everness_forsaken_desert_cobble.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        stone = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:volcanic_rock', {
    description = S('Volcanic Rock'),
    tiles = { 'everness_volcanic_rock.png' },
    sounds = Everness.node_sound_stone_defaults(),
    groups = {
        -- MTG
        cracky = 1,
        level = 2,
        stone = 1,
        -- MCL
        pickaxey = 5,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 1200,
    _mcl_hardness = 50,
    is_ground_content = false,
})

Everness:register_node('everness:volcanic_rock_with_magma', {
    description = S('Volcanic Rock with Magma'),
    tiles = {
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
    sounds = Everness.node_sound_stone_defaults(),
    groups = {
        -- MTG
        cracky = 1,
        level = 2,
        stone = 1,
        -- MCL
        pickaxey = 5,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 1200,
    _mcl_hardness = 50,
    paramtype = 'light',
    light_source = 3,
})

Everness:register_node('everness:magmacobble', {
    description = 'Magma Cobblestone',
    groups = {
        -- MTG
        cracky = 3,
        stone = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_stone_defaults(),
    tiles = {
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
    special_tiles = {
        -- New-style lava source material (mostly unused)
        {
            name = 'everness_magmacobble_animated.png',
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 3.0,
            },
            backface_culling = false,
        },
    },
    paramtype = 'light',
    light_source = 3,
})

Everness:register_node('everness:cursed_stone', {
    description = S('Cursed Stone'),
    tiles = {
        { name = 'everness_cursed_stone.png' }
    },
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults()
})

Everness:register_node('everness:cursed_stone_carved', {
    description = S('Cursed Stone Carved'),
    tiles = {
        {
            name = 'everness_cursed_stone_carved.png',
            align_style = 'world',
            scale = 2
        }
    },
    drop = 'everness:cursed_stone',
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults()
})

Everness:register_node('everness:cursed_brick', {
    description = S('Cursed Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_cursed_brick.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        stonebrick = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:cursed_brick_with_growth', {
    description = S('Cursed Brick with Growth'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_cursed_brick_with_growth.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        stonebrick = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:cursed_brick_mixed', {
    description = S('Cursed Brick Mixed'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_cursed_brick_mixed.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        stonebrick = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:cursed_brick_carved', {
    description = S('Cursed Brick Carved'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_cursed_brick_carved.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        stonebrick = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:volcanic_sulfur', {
    description = S('Volcanic Sulfur Stone'),
    tiles = { 'everness_volcanic_sulfur_stone.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        stonebrick = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:sulfur_stone', {
    description = S('Sulfur Stone'),
    tiles = { 'everness_sulfur_stone.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
    on_construct = function(pos)
        Everness:tick_sulfur_stone(pos)
    end,
    on_timer = function(pos, elapsed)
        local _, node_counts = minetest.find_nodes_in_area(
            vector.offset(pos, -1, 1, -1),
            vector.offset(pos, 1, 1, 1),
            'everness:volcanic_sulfur',
            false
        )

        if node_counts['everness:volcanic_sulfur'] < 4
            or minetest.get_node(vector.new(pos.x, pos.y + 1, pos.z)).name ~= 'air'
        then
            -- stop timer, to restart timer: dig/place again
            -- Everness:tick_sulfur_stone_again(pos)
            return
        end

        local particlespawner_def = {
            amount = 1,
            time = 4,
            minpos = vector.new({ x = pos.x - 0.25, y = pos.y + 0.6, z = pos.z - 0.25 }),
            maxpos = vector.new({ x = pos.x + 0.25, y = pos.y + 0.6, z = pos.z + 0.25 }),
            minvel = vector.new({ x = -0.1, y = 0.25, z = -0.1 }),
            maxvel = vector.new({ x = 0.1, y = 0.5, z = 0.1 }),
            minacc = vector.new({ x = -0.1, y = 0.25, z = -0.1 }),
            maxacc = vector.new({ x = 0.1, y = 0.5, z = 0.1 }),
            minexptime = 7.5,
            maxexptime = 7.5,
            minsize = 16,
            maxsize = 24,
            texture = 'everness_smoke_cloud_particle_static.png',
        }

        if minetest.has_feature({ dynamic_add_media_table = true, particlespawner_tweenable = true }) then
            particlespawner_def = {
                amount = 1,
                time = 4,
                size = {
                    min = 16,
                    max = 24,
                },
                exptime = 7.5,
                pos = {
                    min = vector.new({ x = pos.x - 0.25, y = pos.y + 0.6, z = pos.z - 0.25 }),
                    max = vector.new({ x = pos.x + 0.25, y = pos.y + 0.6, z = pos.z + 0.25 }),
                },
                vel = {
                    min = vector.new({ x = -0.1, y = 0.25, z = -0.1 }),
                    max = vector.new({ x = 0.1, y = 0.5, z = 0.1 })
                },
                acc = {
                    min = vector.new({ x = -0.1, y = 0.25, z = -0.1 }),
                    max = vector.new({ x = 0.1, y = 0.5, z = 0.1 })
                },
                texture = {
                    name = 'everness_smoke_cloud_particle_animated.png',
                    animation = {
                        type = 'vertical_frames',
                        aspect_w = 8,
                        aspect_h = 8,
                        length = 8
                    }
                }
            }
        end

        minetest.add_particlespawner(particlespawner_def)

        Everness:tick_sulfur_stone(pos)
    end
})

Everness:register_node('everness:forsaken_tundra_cobble', {
    description = S('Forsaken Tundra Cobblestone'),
    tiles = { 'everness_forsaken_tundra_cobblestone.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        stone = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:forsaken_tundra_stone', {
    description = S('Forsaken Tundra Stone'),
    tiles = { 'everness_forsaken_tundra_stone.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    drop = 'everness:forsaken_tundra_cobble',
    legacy_mineral = true,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:mold_cobble', {
    description = S('Mold Cobble'),
    tiles = { 'everness_mold_stone.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        stone = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    sounds = Everness.node_sound_stone_defaults(),
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
})

Everness:register_node('everness:forsaken_tundra_brick', {
    description = S('Forsaken Tundra Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_forsaken_tundra_brick.png' },
    is_ground_content = false,
    groups = {
        cracky = 2,
        -- MCL
        pickaxey = 1,
        stonebrick = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:forsaken_tundra_rocks', {
    description = S('Forsaken Tundra Rocks'),
    tiles = {
        'everness_forsaken_tundra_rocks_top.png',
        'everness_forsaken_tundra_rocks_top.png',
        'everness_forsaken_tundra_rocks_side.png',
    },
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    legacy_mineral = true,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:blue_crying_obsidian', {
    description = S('Blue Crying Obsidian'),
    tiles = { 'everness_blue_crying_obsidian.png' },
    sounds = Everness.node_sound_stone_defaults(),
    groups = {
        -- MTG
        cracky = 1,
        level = 2,
        stone = 1,
        -- MCL
        pickaxey = 5,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 1200,
    _mcl_hardness = 50,
})

Everness:register_node('everness:blue_weeping_obsidian', {
    description = S('Blue Weeping Obsidian'),
    tiles = { 'everness_blue_weeping_obsidian.png' },
    sounds = Everness.node_sound_stone_defaults(),
    groups = {
        -- MTG
        cracky = 1,
        level = 2,
        stone = 1,
        -- MCL
        pickaxey = 5,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 1200,
    _mcl_hardness = 50,
    paramtype = 'light',
    light_source = 7,
})

Everness:register_node('everness:weeping_obsidian', {
    description = S('Weeping Obsidian'),
    tiles = { 'everness_weeping_obsidian.png' },
    sounds = Everness.node_sound_stone_defaults(),
    groups = {
        -- MTG
        cracky = 1,
        level = 2,
        stone = 1,
        -- MCL
        pickaxey = 5,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 1200,
    _mcl_hardness = 50,
    paramtype = 'light',
    light_source = 7,
})

Everness:register_node('everness:mold_stone_with_moss', {
    description = S('Mold Stone'),
    tiles = {
        'everness_mold_stone_with_moss_top.png',
        'everness_mold_stone.png',
        'everness_mold_stone_with_moss_side.png'
    },
    groups = {
        -- MTG
        cracky = 3,
        -- Everness
        everness_spreading_dirt_type_under = 1,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    is_ground_content = false,
    drop = 'everness:mold_cobble',
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:soul_sandstone', {
    description = S('Soul Sandstone'),
    tiles = { 'everness_soul_sandstone.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:soul_sandstone_veined', {
    description = S('Soul Sandstone Veined'),
    tiles = {
        'everness_soul_sandstone_veined_top.png',
        'everness_soul_sandstone.png',
        'everness_soul_sandstone_veined_side.png'
    },
    groups = {
        -- MTG
        cracky = 3,
        -- Everness
        everness_spreading_dirt_type_under = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    drop = 'everness:soul_sandstone',
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:crystal_block_purple', {
    description = S('Purple Crystal Block'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = {
        'everness_crystal_block_purple_top.png',
        'everness_crystal_block_purple_top.png',
        'everness_crystal_block_purple.png'
    },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    light_source = 7,
    sounds = Everness.node_sound_crystal_defaults(),
})

Everness:register_node('everness:crystal_block_orange', {
    description = S('Orange Crystal Block'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = {
        'everness_crystal_block_orange_top.png',
        'everness_crystal_block_orange_top.png',
        'everness_crystal_block_orange.png'
    },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    light_source = 7,
    sounds = Everness.node_sound_crystal_defaults(),
})

Everness:register_node('everness:crystal_block_cyan', {
    description = S('Cyan Crystal Block'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = {
        'everness_crystal_block_cyan_top.png',
        'everness_crystal_block_cyan_top.png',
        'everness_crystal_block_cyan.png'
    },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    light_source = 7,
    sounds = Everness.node_sound_crystal_defaults(),
})

-- Quartz

-- Quartz Block
Everness:register_node('everness:quartz_block', {
    description = S('Quartz Block'),
    -- Textures of node; +Y, -Y, +X, -X, +Z, -Z
    tiles = {
        'everness_quartz_block_top.png',
        'everness_quartz_block_bottom.png',
        'everness_quartz_block_side.png',
    },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        quartz_block = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

-- Chiseled Quartz
Everness:register_node('everness:quartz_chiseled', {
    description = S('Chiseled Quartz'),
    tiles = {
        'everness_quartz_block_chiseled_top.png',
        'everness_quartz_block_chiseled_top.png',
        'everness_quartz_block_chiseled.png',
    },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        quartz_block = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

-- Quartz Pillar
Everness:register_node('everness:quartz_pillar', {
    description = S('Quartz Pillar'),
    paramtype2 = 'facedir',
    tiles = {
        'everness_quartz_block_lines_top.png',
        'everness_quartz_block_lines_top.png',
        'everness_quartz_block_lines.png',
    },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        quartz_block = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
    on_place = minetest.rotate_node
})

Everness:register_node('everness:forsaken_desert_brick', {
    description = S('Forsaken Desert Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_forsaken_desert_brick.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        pickaxey = 1,
        stonebrick = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:forsaken_desert_brick_red', {
    description = S('Forsaken Desert Brick Red'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_forsaken_desert_brick_red.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        pickaxey = 1,
        stonebrick = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:forsaken_desert_chiseled_stone', {
    description = S('Forsaken Desert Chiseled Stone'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = {
        'everness_forsaken_desert_chiseled_stone_top.png',
        'everness_forsaken_desert_chiseled_stone_bottom.png',
        'everness_forsaken_desert_chiseled_stone_side.png'
    },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        pickaxey = 1,
        stonebrick = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:forsaken_desert_engraved_stone', {
    description = S('Forsaken Desert Engraved Stone'),
    tiles = { 'everness_forsaken_desert_engraved_stone.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        pickaxey = 1,
        stonebrick = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:crystal_sandstone', {
    description = S('Crystal Sandstone'),
    tiles = { 'everness_crystal_sandstone.png' },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:crystal_sandstone_brick', {
    description = S('Crystal Sandstone Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_crystal_sandstone_brick.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:crystal_sandstone_chiseled', {
    description = S('Crystal Sandstone Chiseled'),
    tiles = { 'everness_crystal_sandstone_chiseled.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:cursed_sandstone_block', {
    description = S('Cursed Sandstone Block'),
    tiles = { 'everness_cursed_sandstone_block.png' },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:cursed_sandstone_brick', {
    description = S('Cursed Sandstone Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_cursed_sandstone_brick.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

--
-- Soft / Non-Stone
--

Everness:register_node('everness:coral_dirt', {
    description = S('Coral Dirt'),
    short_description = S('Coral Dirt'),
    tiles = { 'everness_coral_dirt.png' },
    groups = {
        -- MTG
        crumbly = 3,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
        -- path_creation_possible = 1,
        -- ALL
        soil = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
})

Everness:register_node('everness:coral_deep_ocean_mud', {
    description = S('Coral Deep Ocean Mud'),
    short_description = S('Coral Deep Ocean Mud'),
    tiles = { 'everness_mud_2.png' },
    groups = { crumbly = 3, bio_bubbles = 1 },
    sounds = Everness.node_sound_mud_defaults(),
})

Everness:register_node('everness:cursed_dirt', {
    description = S('Cursed Dirt'),
    short_description = S('Cursed Dirt'),
    tiles = { 'everness_cursed_dirt.png' },
    groups = {
        -- MTG
        crumbly = 3,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
        -- path_creation_possible = 1,
        -- ALL
        soil = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_mud_defaults(),
})

Everness:register_node('everness:crystal_dirt', {
    description = S('Crystal Dirt'),
    short_description = S('Crystal Dirt'),
    tiles = { 'everness_crystal_dirt.png' },
    groups = {
        -- MTG
        crumbly = 3,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
        -- path_creation_possible = 1,
        -- ALL
        soil = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
})

Everness:register_node('everness:forsaken_tundra_dirt', {
    description = S('Forsaken Tundra Dirt'),
    short_description = S('Forsaken Tundra Dirt'),
    tiles = { 'everness_forsaken_tundra_dirt.png' },
    groups = {
        -- MTG
        crumbly = 3,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
        -- path_creation_possible = 1,
        -- ALL
        soil = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
})

Everness:register_node('everness:forsaken_tundra_dirt_with_grass', {
    description = S('Forsaken Tundra Dirt with Grass'),
    short_description = S('Forsaken Tundra Dirt with Grass'),
    tiles = {
        'everness_forsaken_tundra_grass.png',
        'everness_forsaken_tundra_dirt.png',
        { name = 'everness_forsaken_tundra_dirt.png^everness_forsaken_tundra_grass_side.png', tileable_vertical = false }
    },
    groups = {
        -- MTG
        crumbly = 3,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 2,
        grass_block = 1,
        grass_block_no_snow = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        -- cultivatable = 2,
        -- spreading_dirt_type = 1,
        enderman_takable = 1,
        building_block = 1,
        compostability = 30,
        -- path_creation_possible = 1,
        -- ALL
        soil = 1,
    },
    _mcl_blast_resistance = 0.6,
    _mcl_hardness = 0.6,
    -- drop = 'everness:forsaken_tundra_dirt',
    sounds = Everness.node_sound_grass_defaults(),
})

Everness:register_node('everness:dirt_with_coral_grass', {
    description = S('Dirt with Coral Grass'),
    short_description = S('Dirt with Coral Grass'),
    tiles = {
        'everness_coral_grass.png',
        'everness_coral_dirt.png',
        { name = 'everness_coral_dirt.png^everness_coral_grass_side.png', tileable_vertical = false }
    },
    groups = {
        -- MTG
        crumbly = 3,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 2,
        grass_block = 1,
        grass_block_no_snow = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
        compostability = 30,
        -- path_creation_possible = 1,
        -- Everness
        everness_spreading_dirt_type = 1,
        -- ALL
        soil = 1,
    },
    _mcl_blast_resistance = 0.6,
    _mcl_hardness = 0.6,
    drop = 'everness:coral_dirt',
    sounds = Everness.node_sound_grass_defaults(),
})

Everness:register_node('everness:dirt_with_cursed_grass', {
    description = S('Dirt with Cursed Grass'),
    short_description = S('Dirt with Cursed Grass'),
    tiles = {
        'everness_cursed_grass.png',
        'everness_cursed_dirt.png',
        { name = 'everness_cursed_dirt.png^everness_cursed_grass_side.png', tileable_vertical = false }
    },
    groups = {
        -- MTG
        crumbly = 3,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 2,
        grass_block = 1,
        grass_block_no_snow = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
        compostability = 30,
        -- path_creation_possible = 1,
        -- Everness
        everness_spreading_dirt_type = 1,
        -- ALL
        soil = 1,
    },
    _mcl_blast_resistance = 0.6,
    _mcl_hardness = 0.6,
    drop = 'everness:cursed_dirt',
    sounds = Everness.node_sound_mud_defaults(),
})

Everness:register_node('everness:dirt_with_crystal_grass', {
    description = S('Dirt with Crystal Grass'),
    short_description = S('Dirt with Crystal Grass'),
    tiles = {
        'everness_crystal_grass.png',
        'everness_crystal_dirt.png',
        { name = 'everness_crystal_dirt.png^everness_crystal_grass_side.png', tileable_vertical = false }
    },
    groups = {
        -- MTG
        crumbly = 3,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 2,
        grass_block = 1,
        grass_block_no_snow = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
        compostability = 30,
        -- path_creation_possible = 1,
        -- Everness
        everness_spreading_dirt_type = 1,
        -- ALL
        soil = 1,
    },
    _mcl_blast_resistance = 0.6,
    _mcl_hardness = 0.6,
    drop = 'everness:crystal_dirt',
    sounds = Everness.node_sound_grass_defaults(),
})

Everness:register_node('everness:dry_ocean_dirt', {
    description = S('Dry Ocean Dirt'),
    short_description = S('Dry Ocean Dirt'),
    tiles = { 'everness_forsaken_desert_dry_ocean_dirt.png' },
    groups = {
        -- MTG
        crumbly = 3,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        -- cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
        -- path_creation_possible = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
})

-- Loot Chest / Icicle Markers

Everness:register_node('everness:japanese_shrine_lootchest_marker', {
    drawtype = 'airlike',
    description = 'Japanese Shrine Loot Chest Spawn Marker',
    tiles = { 'everness_lootchest_marker_top.png', 'everness_lootchest_marker_side.png' },
    groups = { dig_immediate = 2, not_in_creative_inventory = 1 },
    _mcl_hardness = 0.2,
    paramtype2 = 'facedir',
})

Everness:register_node('everness:jungle_temple_lootchest_marker', {
    drawtype = 'airlike',
    description = 'Jungle Temple Loot Chest Spawn Marker',
    tiles = { 'everness_lootchest_marker_top.png', 'everness_lootchest_marker_side.png' },
    groups = { dig_immediate = 2, not_in_creative_inventory = 1 },
    _mcl_hardness = 0.2,
    paramtype2 = 'facedir',
})

Everness:register_node('everness:haunted_house_lootchest_marker', {
    drawtype = 'airlike',
    description = 'Haunted House Loot Chest Spawn Marker',
    tiles = { 'everness_lootchest_marker_top.png', 'everness_lootchest_marker_side.png' },
    groups = { dig_immediate = 2, not_in_creative_inventory = 1 },
    _mcl_hardness = 0.2,
    paramtype2 = 'facedir',
})

Everness:register_node('everness:quartz_temple_lootchest_marker', {
    drawtype = 'airlike',
    description = 'Quartz Temple Loot Chest Spawn Marker',
    tiles = { 'everness_lootchest_marker_top.png', 'everness_lootchest_marker_side.png' },
    groups = { dig_immediate = 2, not_in_creative_inventory = 1 },
    _mcl_hardness = 0.2,
    paramtype2 = 'facedir',
})

Everness:register_node('everness:forsaken_desert_temple_marker', {
    drawtype = 'airlike',
    description = 'Forsaken Temple Loot Chest Spawn Marker',
    tiles = { 'everness_lootchest_marker_top.png', 'everness_lootchest_marker_side.png' },
    groups = { dig_immediate = 2, not_in_creative_inventory = 1 },
    _mcl_hardness = 0.2,
    paramtype2 = 'facedir',
})

Everness:register_node('everness:forsaken_desert_temple_2_marker', {
    drawtype = 'airlike',
    description = 'Forsaken Temple 2 Loot Chest Spawn Marker',
    tiles = { 'everness_lootchest_marker_top.png', 'everness_lootchest_marker_side.png' },
    groups = { dig_immediate = 2, not_in_creative_inventory = 1 },
    _mcl_hardness = 0.2,
    paramtype2 = 'facedir',
})

Everness:register_node('everness:frosted_icicle_large_ceiling_marker', {
    drawtype = 'airlike',
    description = 'Frosted Icicle Large Ceiling Marker',
    tiles = { 'everness_lootchest_marker_top.png', 'everness_lootchest_marker_side.png' },
    groups = { dig_immediate = 2, not_in_creative_inventory = 1 },
    _mcl_hardness = 0.2,
    paramtype2 = 'facedir',
})

Everness:register_node('everness:frosted_icicle_large_floor_marker', {
    drawtype = 'airlike',
    description = 'Frosted Icicle Large Floor Marker',
    tiles = { 'everness_lootchest_marker_top.png', 'everness_lootchest_marker_side.png' },
    groups = { dig_immediate = 2, not_in_creative_inventory = 1 },
    _mcl_hardness = 0.2,
    paramtype2 = 'facedir',
})

Everness:register_node('everness:coral_forest_deep_ocean_house_marker', {
    drawtype = 'airlike',
    description = 'Coral Forest Deep Ocean House Marker',
    tiles = { 'everness_lootchest_marker_top.png', 'everness_lootchest_marker_side.png' },
    groups = { dig_immediate = 2, not_in_creative_inventory = 1 },
    _mcl_hardness = 0.2,
    paramtype2 = 'facedir',
})

Everness:register_node('everness:cursed_lands_deep_ocean_skull_marker', {
    drawtype = 'airlike',
    description = 'Cursed Lands Deep Ocean Skull Marker',
    tiles = { 'everness_lootchest_marker_top.png', 'everness_lootchest_marker_side.png' },
    groups = { dig_immediate = 2, not_in_creative_inventory = 1 },
    _mcl_hardness = 0.2,
    paramtype2 = 'facedir',
})

Everness:register_node('everness:frosted_icesheet_igloo_marker', {
    drawtype = 'airlike',
    description = 'Frosted Icesheet Igloo Marker',
    tiles = { 'everness_lootchest_marker_top.png', 'everness_lootchest_marker_side.png' },
    groups = { dig_immediate = 2, not_in_creative_inventory = 1 },
    _mcl_hardness = 0.2,
    paramtype2 = 'facedir',
})

Everness:register_node('everness:crystal_forest_deep_ocean_ruins_marker', {
    drawtype = 'airlike',
    description = 'Crystal Forest Deep Ocean Ruins Marker',
    tiles = { 'everness_lootchest_marker_top.png', 'everness_lootchest_marker_side.png' },
    groups = { dig_immediate = 2, not_in_creative_inventory = 1 },
    _mcl_hardness = 0.2,
    paramtype2 = 'facedir',
})

-- Everness default blocks

Everness:register_node('everness:dirt_1', {
    description = S('Dirt'),
    short_description = S('Dirt'),
    tiles = { 'everness_dirt.png' },
    groups = {
        -- MTG
        crumbly = 3,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
        -- path_creation_possible = 1,
        -- ALL
        soil = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
})

Everness:register_node('everness:dry_dirt', {
    description = S('Dry Dirt'),
    short_description = S('Dry Dirt'),
    tiles = { 'everness_dry_dirt.png' },
    groups = {
        -- MTG
        crumbly = 3,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
        -- path_creation_possible = 1,
        -- ALL
        soil = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
})

Everness:register_node('everness:dry_dirt_with_dry_grass', {
    description = S('Dirt with Dry Grass'),
    short_description = S('Dirt with Dry Grass'),
    tiles = {
        'everness_dry_grass_top.png',
        'everness_dry_dirt.png',
        { name = 'everness_dry_dirt.png^everness_dry_grass_side.png', tileable_vertical = false }
    },
    groups = {
        -- MTG
        crumbly = 3,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 2,
        grass_block = 1,
        grass_block_no_snow = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
        -- path_creation_possible = 1,
        -- Everness
        everness_spreading_dirt_type = 1,
        -- ALL
        soil = 1,
    },
    _mcl_blast_resistance = 0.6,
    _mcl_hardness = 0.6,
    drop = 'everness:dry_dirt',
    sounds = Everness.node_sound_grass_defaults(),
})

Everness:register_node('everness:dirt_with_grass_1', {
    description = S('Dirt with Grass'),
    short_description = S('Dirt with Grass'),
    tiles = {
        'everness_grass_top.png',
        'everness_dirt.png',
        { name = 'everness_dirt.png^everness_grass_side.png', tileable_vertical = false }
    },
    groups = {
        -- MTG
        crumbly = 3,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 2,
        grass_block = 1,
        grass_block_no_snow = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
        compostability = 30,
        -- path_creation_possible = 1,
        -- Everness
        everness_spreading_dirt_type = 1,
        -- ALL
        soil = 1,
    },
    _mcl_blast_resistance = 0.6,
    _mcl_hardness = 0.6,
    drop = 'everness:dirt_1',
    sounds = Everness.node_sound_grass_defaults(),
})

Everness:register_node('everness:dirt_with_grass_extras_1', {
    description = S('Dirt with Grass'),
    short_description = S('Dirt with Grass'),
    tiles = {
        { name = 'everness_grass_top.png^everness_grass_extras_1.png', tileable_vertical = false },
        'everness_dirt.png',
        { name = 'everness_dirt.png^everness_grass_side.png', tileable_vertical = false }
    },
    use_texture_alpha = 'clip',
    groups = {
        -- MTG
        crumbly = 3,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 2,
        grass_block = 1,
        grass_block_no_snow = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
        compostability = 30,
        -- path_creation_possible = 1,
        -- Everness
        everness_spreading_dirt_type = 1,
        -- ALL
        soil = 1,
    },
    _mcl_blast_resistance = 0.6,
    _mcl_hardness = 0.6,
    drop = 'everness:dirt_1',
    sounds = Everness.node_sound_grass_defaults(),
})

Everness:register_node('everness:dirt_with_grass_extras_2', {
    description = S('Dirt with Grass'),
    short_description = S('Dirt with Grass'),
    tiles = {
        { name = 'everness_grass_top.png^everness_grass_extras_2.png', tileable_vertical = false },
        'everness_dirt.png',
        { name = 'everness_dirt.png^everness_grass_side.png', tileable_vertical = false }
    },
    use_texture_alpha = 'clip',
    groups = {
        -- MTG
        crumbly = 3,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 2,
        grass_block = 1,
        grass_block_no_snow = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
        compostability = 30,
        -- path_creation_possible = 1,
        -- Everness
        everness_spreading_dirt_type = 1,
        -- ALL
        soil = 1,
    },
    _mcl_blast_resistance = 0.6,
    _mcl_hardness = 0.6,
    drop = 'everness:dirt_1',
    sounds = Everness.node_sound_grass_defaults(),
})

Everness:register_node('everness:crystal_cave_dirt', {
    description = S('Crystal Cave Dirt'),
    short_description = S('Crystal Cave Dirt'),
    tiles = { 'everness_crystal_cave_dirt.png' },
    groups = {
        -- MTG
        crumbly = 3,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
        -- path_creation_possible = 1,
        -- ALL
        soil = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
})

Everness:register_node('everness:crystal_cave_dirt_with_moss', {
    description = S('Crystal Cave Dirt with Moss'),
    short_description = S('Crystal Cave Dirt with Moss'),
    tiles = {
        'everness_crystal_cave_dirt_top.png',
        'everness_crystal_cave_dirt.png',
        'everness_crystal_cave_dirt_side.png'
    },
    drop = 'everness:crystal_cave_dirt',
    groups = {
        -- MTG
        crumbly = 3,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 2,
        grass_block = 1,
        grass_block_no_snow = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
        compostability = 30,
        -- path_creation_possible = 1,
        -- Everness
        everness_spreading_dirt_type_under = 1,
        -- ALL
        soil = 1,
    },
    _mcl_blast_resistance = 0.6,
    _mcl_hardness = 0.6,
    sounds = Everness.node_sound_grass_defaults(),
})

Everness:register_node('everness:moss_block', {
    description = S('Moss Block'),
    tiles = { 'everness_moss_block.png' },
    groups = {
        -- MTG
        crumbly = 3,
        -- Everness
        everness_spreading_dirt_type_under = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 2,
        grass_block = 1,
        grass_block_no_snow = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
        compostability = 30,
        -- ALL
        soil = 1,
    },
    _mcl_blast_resistance = 0.6,
    _mcl_hardness = 0.6,
    sounds = Everness.node_sound_grass_defaults(),
})

Everness:register_node('everness:crystal_moss_block', {
    description = S('Crystal Moss Block'),
    tiles = { 'everness_crystal_cave_moss.png' },
    groups = {
        -- MTG
        crumbly = 3,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 2,
        grass_block = 1,
        grass_block_no_snow = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
        compostability = 30,
        -- path_creation_possible = 1,
        -- Everness
        everness_spreading_dirt_type = 1,
        -- ALL
        soil = 1,
    },
    _mcl_blast_resistance = 0.6,
    _mcl_hardness = 0.6,
    sounds = Everness.node_sound_grass_defaults(),
})

Everness:register_node('everness:coral_sand', {
    description = S('Coral Sand'),
    short_description = S('Coral Sand'),
    tiles = { 'everness_coral_sand.png' },
    groups = {
        -- MTG
        crumbly = 3,
        everness_sand = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        soil_sugarcane = 1,
        enderman_takable = 1,
        building_block = 1,
        material_sand = 1,
        -- ALL
        falling_node = 1,
    },
    sounds = Everness.node_sound_sand_defaults(),
    -- MCL
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
})

Everness:register_node('everness:coral_white_sand', {
    description = S('Coral White Sand'),
    short_description = S('Coral White Sand'),
    tiles = { 'everness_coral_white_sand.png' },
    groups = {
        -- MTG
        crumbly = 3,
        everness_sand = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        soil_sugarcane = 1,
        enderman_takable = 1,
        building_block = 1,
        material_sand = 1,
        -- ALL
        falling_node = 1,
    },
    sounds = Everness.node_sound_sand_defaults(),
    -- MCL
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
})

Everness:register_node('everness:cursed_sand', {
    description = S('Cursed Sand'),
    short_description = S('Cursed Sand'),
    tiles = { 'everness_cursed_sand.png' },
    groups = {
        -- MTG
        crumbly = 3,
        everness_sand = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        soil_sugarcane = 1,
        enderman_takable = 1,
        building_block = 1,
        material_sand = 1,
        -- ALL
        falling_node = 1,
    },
    sounds = Everness.node_sound_sand_defaults(),
    -- MCL
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
})

Everness:register_node('everness:crystal_sand', {
    description = S('Crystal Sand'),
    short_description = S('Crystal Sand'),
    tiles = { 'everness_crystal_sand.png' },
    groups = {
        -- MTG
        crumbly = 3,
        everness_sand = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        soil_sugarcane = 1,
        enderman_takable = 1,
        building_block = 1,
        material_sand = 1,
        -- ALL
        falling_node = 1,
    },
    sounds = Everness.node_sound_sand_defaults(),
    -- MCL
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
})

Everness:register_node('everness:crystal_forest_deep_ocean_sand_with_crack', {
    description = S('Crystal Forest Deep Ocean Sand with Crack'),
    short_description = S('Crystal Forest Deep Ocean Sand with Crack'),
    tiles = { 'everness_crystal_forest_deep_ocean_sand_with_crack.png' },
    groups = {
        -- MTG
        crumbly = 3,
        everness_sand = 1,
        rising_crystals = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        soil_sugarcane = 1,
        enderman_takable = 1,
        building_block = 1,
        material_sand = 1,
        -- ALL
        falling_node = 1,
    },
    sounds = Everness.node_sound_sand_defaults(),
    -- MCL
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
})

Everness:register_node('everness:forsaken_tundra_beach_sand', {
    description = S('Forsaken Tundra Beach Sand'),
    short_description = S('Forsaken Tundra Beach Sand'),
    tiles = { 'everness_forsaken_tundra_beach_sand.png' },
    groups = {
        -- MTG
        crumbly = 3,
        everness_sand = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        soil_sugarcane = 1,
        enderman_takable = 1,
        building_block = 1,
        material_sand = 1,
        -- ALL
        falling_node = 1,
    },
    sounds = Everness.node_sound_sand_defaults(),
    -- MCL
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
})

Everness:register_node('everness:forsaken_tundra_beach_sand_with_shells', {
    description = S('Forsaken Tundra Beach Sand with Shells'),
    short_description = S('Forsaken Tundra Beach Sand'),
    tiles = { 'everness_forsaken_tundra_beach_sand_with_shells.png' },
    groups = {
        -- MTG
        crumbly = 3,
        everness_sand = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        soil_sugarcane = 1,
        enderman_takable = 1,
        building_block = 1,
        material_sand = 1,
        -- ALL
        falling_node = 1,
    },
    sounds = Everness.node_sound_sand_defaults(),
    -- MCL
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
})

Everness:register_node('everness:forsaken_desert_sand', {
    description = S('Forsaken Desert Sand'),
    short_description = S('Forsaken Desert Sand'),
    tiles = { 'everness_forsaken_desert_sand.png' },
    groups = {
        -- MTG
        crumbly = 3,
        everness_sand = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        soil_sugarcane = 1,
        enderman_takable = 1,
        building_block = 1,
        material_sand = 1,
        -- ALL
        falling_node = 1,
    },
    sounds = Everness.node_sound_sand_defaults(),
    -- MCL
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
})

Everness:register_node('everness:coral_forest_deep_ocean_sand', {
    description = S('Coral Forest Deep Ocean Sand'),
    short_description = S('Coral Forest Deep Ocean Sand'),
    tiles = { 'everness_deep_ocean_sand.png' },
    groups = {
        -- MTG
        crumbly = 3,
        everness_sand = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        soil_sugarcane = 1,
        enderman_takable = 1,
        building_block = 1,
        material_sand = 1,
        -- ALL
        falling_node = 1,
    },
    sounds = Everness.node_sound_sand_defaults(),
    -- MCL
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
})

Everness:register_node('everness:cursed_lands_deep_ocean_sand', {
    description = S('Cursed Lands Deep Ocean Sand'),
    short_description = S('Cursed Lands Deep Ocean Sand'),
    tiles = { 'everness_cursed_lands_deep_ocean_sand.png' },
    groups = {
        -- MTG
        crumbly = 3,
        everness_sand = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        soil_sugarcane = 1,
        enderman_takable = 1,
        building_block = 1,
        material_sand = 1,
        -- ALL
        falling_node = 1,
    },
    sounds = Everness.node_sound_sand_defaults(),
    -- MCL
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
})

Everness:register_node('everness:cursed_lands_deep_ocean_sand_with_crack', {
    description = S('Cursed Lands Deep Ocean Sand with Crack'),
    short_description = S('Cursed Lands Deep Ocean Sand with Crack'),
    tiles = { 'everness_cursed_lands_deep_ocean_sand_with_crack.png' },
    groups = {
        -- MTG
        crumbly = 3,
        everness_sand = 1,
        rising_souls = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        soil_sugarcane = 1,
        enderman_takable = 1,
        building_block = 1,
        material_sand = 1,
        -- ALL
        falling_node = 1,
    },
    sounds = Everness.node_sound_sand_defaults(),
    -- MCL
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
})

Everness:register_node('everness:crystal_forest_deep_ocean_sand', {
    description = S('Crystal Forest Deep Ocean Sand'),
    short_description = S('Crystal Forest Deep Ocean Sand'),
    tiles = { 'everness_crystal_forest_deep_ocean_sand.png' },
    groups = {
        -- MTG
        crumbly = 3,
        everness_sand = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        soil_sugarcane = 1,
        enderman_takable = 1,
        building_block = 1,
        material_sand = 1,
        -- ALL
        falling_node = 1,
    },
    sounds = Everness.node_sound_sand_defaults(),
    -- MCL
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
})

Everness:register_node('everness:frosted_snowblock', {
    description = S('Frosted Snow Block'),
    tiles = { 'everness_frosted_snow.png' },
    groups = {
        -- MTG
        crumbly = 3,
        cools_lava = 1,
        snowy = 1,
        -- MCL
        shovely = 2,
        building_block = 1,
        snow_cover = 1
    },
    _mcl_blast_resistance = 0.1,
    _mcl_hardness = 0.1,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_frosted_snow_defaults(),
    on_construct = function(pos)
        pos.y = pos.y - 1

        local alias_dirt_with_grass = minetest.registered_aliases['default:dirt_with_grass']
        local alias_dirt_with_snow = minetest.registered_aliases['default:dirt_with_snow']

        if minetest.get_node(pos).name == alias_dirt_with_grass then
            minetest.set_node(pos, { name = alias_dirt_with_snow })
        end
    end,
})

-- 'is ground content = false' to avoid tunnels in sea ice or ice rivers
Everness:register_node('everness:frosted_ice', {
    description = S('Frosted Ice'),
    tiles = { 'everness_frosted_ice.png' },
    is_ground_content = false,
    paramtype = 'light',
    groups = {
        -- MTG
        cracky = 3,
        cools_lava = 1,
        -- MCL
        handy = 1,
        pickaxey = 1,
        building_block = 1,
        ice = 1,
        -- ALL
        slippery = 3
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_ice_defaults(),
})

Everness:register_node('everness:frosted_ice_translucent', {
    description = S('Frosted Ice Translucent'),
    tiles = { 'everness_frosted_ice_translucent.png' },
    is_ground_content = false,
    paramtype = 'light',
    groups = {
        -- MTG
        cracky = 3,
        cools_lava = 1,
        -- MCL
        handy = 1,
        pickaxey = 1,
        building_block = 1,
        ice = 1,
        -- ALL
        slippery = 3
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_ice_defaults(),
    drawtype = 'glasslike',
    -- opaque, clip, blend
    use_texture_alpha = 'blend'
})

-- Mapgen-placed ice with 'is ground content = true' to contain tunnels
Everness:register_node('everness:frosted_cave_ice', {
    description = S('Frosted Cave Ice'),
    tiles = { 'everness_frosted_ice.png' },
    paramtype = 'light',
    groups = {
        -- MTG
        cracky = 3,
        cools_lava = 1,
        -- MCL
        handy = 1,
        pickaxey = 1,
        building_block = 1,
        ice = 1,
        -- ALL
        slippery = 3,
        not_in_creative_inventory = 1
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    _mcl_silk_touch_drop = true,
    drop = 'everness:frosted_ice',
    sounds = Everness.node_sound_ice_defaults(),
})

-- Mapgen-placed ice with 'is ground content = true' to contain tunnels
Everness:register_node('everness:frosted_cave_ice_illuminating', {
    description = S('Frosted Cave Ice'),
    tiles = { 'everness_frosted_ice.png' },
    paramtype = 'light',
    groups = {
        -- MTG
        cracky = 3,
        cools_lava = 1,
        -- MCL
        handy = 1,
        pickaxey = 1,
        building_block = 1,
        ice = 1,
        -- ALL
        slippery = 3,
        not_in_creative_inventory = 1
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    _mcl_silk_touch_drop = true,
    drop = 'everness:frosted_ice',
    sounds = Everness.node_sound_ice_defaults(),
    light_source = 9,
    is_ground_content = false
})

Everness:register_node('everness:bone', {
    description = S('Bone'),
    tiles = { 'everness_bone_top.png', 'everness_bone_top.png', 'everness_bone.png' },
    paramtype2 = 'facedir',
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node
})

Everness:register_node('everness:ancient_emerald_ice', {
    description = S('Ancient Emerald Ice'),
    tiles = { 'everness_ancient_emerald_ice.png' },
    paramtype = 'light',
    groups = {
        -- MTG
        cracky = 3,
        cools_lava = 1,
        -- MCL
        handy = 1,
        pickaxey = 1,
        building_block = 1,
        ice = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_ice_defaults(),
})

Everness:register_node('everness:dense_emerald_ice', {
    description = S('Dense Emerald Ice'),
    tiles = { 'everness_dense_emerald_ice.png' },
    paramtype = 'light',
    groups = {
        -- MTG
        cracky = 3,
        cools_lava = 1,
        -- MCL
        handy = 1,
        pickaxey = 1,
        building_block = 1,
        ice = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_ice_defaults(),
})

Everness:register_node('everness:emerald_ice', {
    description = S('Emerald Ice'),
    tiles = { 'everness_emerald_ice.png' },
    paramtype = 'light',
    groups = {
        -- MTG
        cracky = 3,
        cools_lava = 1,
        -- MCL
        handy = 1,
        pickaxey = 1,
        building_block = 1,
        ice = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_ice_defaults(),
})

Everness:register_node('everness:snowcobble', {
    description = 'Snow Cobble',
    tiles = { 'everness_snowcobble.png' },
    groups = {
        -- MTG
        puts_out_fire = 1,
        cools_lava = 1,
        snowy = 1,
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_snow_defaults(),
    is_ground_content = false,

    on_construct = function(pos)
        pos.y = pos.y - 1

        local alias_dirt_with_grass = minetest.registered_aliases['default:dirt_with_grass']
        local alias_dirt_with_snow = minetest.registered_aliases['default:dirt_with_snow']

        if minetest.get_node(pos).name == alias_dirt_with_grass then
            minetest.set_node(pos, { name = alias_dirt_with_snow })
        end
    end,
})

Everness:register_node('everness:icecobble', {
    description = 'Ice Cobble',
    tiles = { 'everness_icecobble.png' },
    groups = {
        -- MTG
        puts_out_fire = 1,
        cools_lava = 1,
        cracky = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_ice_defaults(),
    is_ground_content = false,
})

Everness:register_node('everness:cursed_mud', {
    description = S('Cursed Mud'),
    tiles = { 'everness_cursed_mud.png' },
    drawtype = 'glasslike',
    paramtype = 'light',
    move_resistance = 7,
    drowning = 2,
    walkable = false,
    climbable = false,
    post_effect_color = { r = 49, g = 51, b = 57, a = 245 },
    groups = {
        -- MTG
        crumbly = 3,
        everness_sand = 1,
        liquid = 3,
        disable_jump = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        soil_sugarcane = 1,
        enderman_takable = 1,
        building_block = 1,
        material_sand = 1,
        -- ALL
        falling_node = 1,
    },
    sounds = Everness.node_sound_sand_defaults(),
    -- MCL
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
})

Everness:register_node('everness:cobweb', {
    description = S('Cobweb'),
    tiles = { 'everness_cobweb.png' },
    inventory_image = 'everness_cobweb.png',
    drawtype = 'plantlike',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    visual_scale = 1.1,
    paramtype = 'light',
    move_resistance = 7,
    drowning = 2,
    walkable = false,
    groups = {
        -- MTG
        crumbly = 3,
        liquid = 3,
        -- MCL
        swordy_cobweb = 1,
        shearsy_cobweb = 1,
        fake_liquid = 1,
        deco_block = 1,
        dig_by_piston = 1,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        -- ALL
        disable_jump = 1,
    },
    sounds = Everness.node_sound_leaves_defaults()
})

Everness:register_node('everness:cave_flower', {
    description = S('Cave Flower'),
    short_description = S('Cave Flower'),
    drawtype = 'mesh',
    mesh = 'everness_cave_flower.obj',
    tiles = { 'everness_cave_flower_mesh.png' },
    inventory_image = 'everness_cave_flower_item.png',
    wield_image = 'everness_cave_flower_item.png',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    is_ground_content = false,
    walkable = false,
    selection_box = {
        type = 'fixed',
        fixed = { -0.5, -0.5, -0.5, 0.5, -0.25, 0.5 }
    },
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        bamboo_grass_under = 1,
        -- MCL
        deco_block = 1,
        dig_by_piston = 1,
        dig_immediate = 3,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        enderman_takable = 1,
        plant = 1,
        flower = 1,
        place_flowerlike = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        compostability = 65,
        -- ALL
        flammable = 1,
        attached_node = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_wood_defaults(),
    sunlight_propagates = true,
    light_source = 7,
    liquids_pointable = false,
    use_texture_alpha = 'clip',
})

Everness:register_node('everness:cave_flower_with_particles', {
    description = S('Cave Flower with Particles'),
    short_description = S('Cave Flower with Particles'),
    drawtype = 'mesh',
    mesh = 'everness_cave_flower_with_particles.obj',
    tiles = {
        { name = 'everness_cave_flower_mesh.png' },
        {
            name = 'everness_cave_flower_mesh_particles.png',
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 32,
                length = 5
            },
            backface_culling = false
        }
    },
    inventory_image = 'everness_cave_flower_item_particles.png',
    wield_image = 'everness_cave_flower_item_particles.png',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    is_ground_content = false,
    walkable = false,
    selection_box = {
        type = 'fixed',
        fixed = { -0.5, -0.5, -0.5, 0.5, -0.25, 0.5 }
    },
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        bamboo_grass_under = 1,
        -- MCL
        deco_block = 1,
        dig_by_piston = 1,
        dig_immediate = 3,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        enderman_takable = 1,
        plant = 1,
        flower = 1,
        place_flowerlike = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        compostability = 65,
        -- ALL
        flammable = 1,
        attached_node = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    sunlight_propagates = true,
    light_source = 12,
    liquids_pointable = false,
    -- opaque, clip, blend
    use_texture_alpha = 'blend',
})

Everness:register_node('everness:forsaken_fire', {
    description = S('Forsaken Fire'),
    short_description = S('Forsaken Fire'),
    drawtype = 'mesh',
    mesh = 'everness_forsaken_fire.obj',
    tiles = {
        { name = 'everness_forsaken_fire_mesh.png' },
        {
            name = 'everness_fire_animated.png',
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 1
            },
            backface_culling = false
        }
    },
    inventory_image = 'everness_forsaken_fire_item.png',
    wield_image = 'everness_forsaken_fire_item.png',
    paramtype = 'light',
    is_ground_content = false,
    walkable = true,
    selection_box = {
        type = 'fixed',
        fixed = { -0.5, -0.5, -0.5, 0.5, 0.25, 0.5 }
    },
    groups = {
        -- MTG
        cracky = 3,
        level = 2,
        -- MCL
        pickaxey = 2,
        building_block = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 5,
    sounds = Everness.node_sound_metal_defaults(),
    light_source = 13,
    liquids_pointable = false,
    -- opaque, clip, blend
    use_texture_alpha = 'clip',
})

--
-- Trees
--

Everness:register_node('everness:coral_tree', {
    description = S('Coral Tree Trunk'),
    short_description = S('Coral Tree Trunk'),
    tiles = { 'everness_coral_tree.png' },
    paramtype2 = 'facedir',
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    -- _mcl_stripped_variant = stripped_variant,
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node
})

Everness:register_node('everness:coral_wood', {
    description = S('Coral Wood Planks'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_coral_wood.png' },
    groups = {
        -- MTG
        choppy = 3,
        oddly_breakable_by_hand = 2,
        -- Everness
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 3,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

Everness:register_node('everness:coral_tree_bioluminescent', {
    description = S('Coral Tree Bioluminescent'),
    short_description = S('Coral Tree Bioluminescent'),
    tiles = { 'everness_coral_mushrooms_bioluminescent.png' },
    paramtype = 'light',
    sunlight_propagates = true,
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    -- _mcl_stripped_variant = stripped_variant,
    sounds = Everness.node_sound_wood_defaults(),
    light_source = 7
})

Everness:register_node('everness:cursed_dream_stone', {
    description = S('Cursed Dream Stone'),
    short_description = S('Cursed Dream Stone'),
    tiles = { 'everness_cursed_dream_stone.png' },
    paramtype = 'light',
    sunlight_propagates = true,
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
    light_source = 7
})

Everness:register_node('everness:dry_tree', {
    description = S('Dry Tree Trunk'),
    short_description = S('Dry Tree Trunk'),
    tiles = { 'everness_dry_tree_top.png', 'everness_dry_tree_top.png', 'everness_dry_tree.png' },
    paramtype2 = 'facedir',
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    -- _mcl_stripped_variant = stripped_variant,
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node,
})

Everness:register_node('everness:baobab_tree', {
    description = S('Baobab Tree Trunk'),
    short_description = S('Baobab Tree Trunk'),
    tiles = { 'everness_baobab_tree_top.png', 'everness_baobab_tree_top.png', 'everness_baobab_tree_side.png' },
    paramtype2 = 'facedir',
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    -- _mcl_stripped_variant = stripped_variant,
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node
})

Everness:register_node('everness:sequoia_tree', {
    description = S('Sequoia Tree Trunk'),
    short_description = S('Sequoia Tree Trunk'),
    tiles = { 'everness_sequoia_tree_top.png', 'everness_sequoia_tree_top.png', 'everness_sequoia_tree_side.png' },
    paramtype2 = 'facedir',
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    -- _mcl_stripped_variant = stripped_variant,
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node
})

Everness:register_node('everness:willow_tree', {
    description = S('Willow Tree Trunk'),
    short_description = S('Sequoia Tree Trunk'),
    tiles = { 'everness_willow_tree_top.png', 'everness_willow_tree_top.png', 'everness_willow_tree_side.png' },
    paramtype2 = 'facedir',
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    -- _mcl_stripped_variant = stripped_variant,
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node
})

Everness:register_node('everness:willow_wood', {
    description = S('Willow Wood Planks'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_willow_wood.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 3,
        oddly_breakable_by_hand = 2,
        -- Everness
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 3,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

Everness:register_node('everness:dry_wood', {
    description = S('Dry Wood Planks'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_dry_wood.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 3,
        oddly_breakable_by_hand = 2,
        -- Everness
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 3,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

Everness:register_node('everness:hollow_tree', {
    description = S('Hollow Tree Trunk'),
    short_description = S('Hollow Tree Trunk'),
    drawtype = 'nodebox',
    node_box = {
        type = 'fixed',
        fixed = {
            { -0.5000, -0.5000, 0.3125, 0.5000, 0.5000, 0.5000 },
            { 0.3125, -0.5000, -0.5000, 0.5000, 0.5000, 0.5000 },
            { -0.5000, -0.5000, -0.5000, -0.3125, 0.5000, 0.5000 },
            { -0.5000, -0.5000, -0.5000, 0.5000, 0.5000, -0.3125 }
        }
    },
    selection_box = {
        type = 'fixed',
        fixed = { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 }
    },
    tiles = {
        'everness_hollow_tree_top.png',
        'everness_hollow_tree_top.png',
        'everness_hollow_tree_side.png'
    },
    use_texture_alpha = 'clip',
    paramtype2 = 'facedir',
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    -- _mcl_stripped_variant = stripped_variant,
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node
})

Everness:register_node('everness:crystal_tree', {
    description = S('Crystal Tree Trunk'),
    short_description = S('Crystal Tree Trunk'),
    drawtype = 'nodebox',
    node_box = {
        type = 'fixed',
        fixed = {
            { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 },
        },
    },
    tiles = { 'everness_crystal_tree_top.png', 'everness_crystal_tree_top.png', 'everness_crystal_tree.png' },
    paramtype2 = 'facedir',
    use_texture_alpha = 'blend', -- only needed for stairs API
    paramtype = 'light',
    is_ground_content = false,
    sunlight_propagates = true,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    -- _mcl_stripped_variant = stripped_variant,
    sounds = Everness.node_sound_glass_defaults(),
    on_place = minetest.rotate_node,
})

minetest.register_node('everness:crystal_wood', {
    description = S('Crystal Wood Planks'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_crystal_wood.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 3,
        oddly_breakable_by_hand = 2,
        -- Everness
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 3,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

Everness:register_node('everness:mese_tree', {
    description = S('Mese Tree Trunk'),
    short_description = S('Mese Tree Trunk'),
    tiles = {
        { name = 'everness_mese_tree_top.png' },
        { name = 'everness_mese_tree_top.png' },
        {
            name = 'everness_mese_tree_side_animated.png',
            align_style = 'world',
            scale = 8,
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 8
            }
        },
    },
    paramtype2 = 'facedir',
    is_ground_content = false,
    groups = { tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2 },
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node
})

Everness:register_node('everness:mese_leaves', {
    description = S('Mese Tree Leaves'),
    short_description = S('Mese Tree Leaves'),
    drawtype = 'allfaces_optional',
    waving = 1,
    tiles = { 'everness_mese_leaves.png' },
    special_tiles = { 'everness_mese_leaves.png' },
    paramtype = 'light',
    is_ground_content = false,
    sunlight_propagates = true,
    groups = {
        -- MTG
        snappy = 3,
        leafdecay = 3,
        -- MCL
        handy = 1,
        hoey = 1,
        shearsy = 1,
        swordy = 1,
        dig_by_piston = 1,
        fire_encouragement = 30,
        fire_flammability = 60,
        deco_block = 1,
        compostability = 30,
        -- ALL
        flammable = 2,
        leaves = 1,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    _mcl_silk_touch_drop = true,
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/30 chance
                items = { 'everness:mese_tree_sapling' },
                rarity = 60,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = { 'everness:mese_leaves' },
            }
        }
    },
    sounds = Everness.node_sound_leaves_defaults(),
    after_place_node = function(pos, placer, itemstack, pointed_thing)
        return Everness:after_place_leaves(pos, placer, itemstack, pointed_thing)
    end
})

Everness:register_node('everness:baobab_leaves', {
    description = S('Baobab Tree Leaves'),
    short_description = S('Baobab Tree Leaves'),
    drawtype = 'allfaces_optional',
    waving = 1,
    tiles = { 'everness_baobab_tree_leaves.png' },
    special_tiles = { 'everness_baobab_tree_leaves.png' },
    paramtype = 'light',
    is_ground_content = false,
    sunlight_propagates = true,
    groups = {
        -- MTG
        snappy = 3,
        leafdecay = 3,
        -- MCL
        handy = 1,
        hoey = 1,
        shearsy = 1,
        swordy = 1,
        dig_by_piston = 1,
        fire_encouragement = 30,
        fire_flammability = 60,
        deco_block = 1,
        compostability = 30,
        -- ALL
        flammable = 2,
        leaves = 1,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    _mcl_silk_touch_drop = true,
    -- _mcl_fortune_drop = { get_drops(1), get_drops(2), get_drops(3), get_drops(4) },
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = { 'everness:baobab_sapling' },
                rarity = 30,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = { 'everness:baobab_leaves' },
            }
        }
    },
    sounds = Everness.node_sound_leaves_defaults(),
    after_place_node = function(pos, placer, itemstack, pointed_thing)
        return Everness:after_place_leaves(pos, placer, itemstack, pointed_thing)
    end
})

Everness:register_node('everness:sequoia_leaves', {
    description = S('Sequoia Tree Leaves'),
    short_description = S('Sequoia Tree Leaves'),
    drawtype = 'allfaces_optional',
    waving = 1,
    tiles = { 'everness_sequoia_tree_leaves.png' },
    special_tiles = { 'everness_sequoia_tree_leaves.png' },
    paramtype = 'light',
    is_ground_content = false,
    sunlight_propagates = true,
    groups = {
        -- MTG
        snappy = 3,
        leafdecay = 3,
        -- MCL
        handy = 1,
        hoey = 1,
        shearsy = 1,
        swordy = 1,
        dig_by_piston = 1,
        fire_encouragement = 30,
        fire_flammability = 60,
        deco_block = 1,
        compostability = 30,
        -- ALL
        flammable = 2,
        leaves = 1,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    _mcl_silk_touch_drop = true,
    -- _mcl_fortune_drop = { get_drops(1), get_drops(2), get_drops(3), get_drops(4) },
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = { 'everness:sequoia_tree_sapling' },
                rarity = 50,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = { 'everness:sequoia_leaves' },
            }
        }
    },
    sounds = Everness.node_sound_leaves_defaults(),
    after_place_node = function(pos, placer, itemstack, pointed_thing)
        return Everness:after_place_leaves(pos, placer, itemstack, pointed_thing)
    end
})

-- for marker only
Everness:register_node('everness:baobab_fruit_renewable', {
    description = S('Baobab Fruit'),
    short_description = S('Baobab Fruit'),
    drawtype = 'plantlike',
    paramtype2 = 'wallmounted',
    visual_scale = 1.69,
    tiles = { 'everness_baobab_tree_fruit.png^[transformFY' },
    inventory_image = 'everness_baobab_tree_fruit.png^[transformFY',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    is_ground_content = false,
    waving = 1,
    drop = {
        max_items = 1, -- Maximum number of items to drop.
        items = { -- Choose max_items randomly from this list.
            {
                items = { 'everness:baobab_fruit' }, -- Items to drop.
                rarity = 1, -- Probability of dropping is 1 / rarity.
            }
        },
    },
    selection_box = {
        type = 'fixed',
        fixed = { -0.25, -0.5, -0.25, 0.25, 1, 0.25 }
    },
    groups = {
        -- MTG
        fleshy = 3,
        dig_immediate = 3,
        leafdecay = 3,
        leafdecay_drop = 1,
        not_in_creative_inventory = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        flammable = 2,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    -- _mcl_fortune_drop = fortune_wheat_seed_drop,
    sounds = Everness.node_sound_leaves_defaults(),
    place_param2 = 0,
    after_dig_node = function(pos, oldnode, oldmetadata, digger)
        if oldnode.param2 == 0 then
            minetest.set_node(pos, { name = 'everness:baobab_fruit_mark' })
            minetest.get_node_timer(pos):start(math.random(300, 1500))
        end
    end,
})

Everness:register_node('everness:baobab_fruit_mark', {
    description = S('Baobab Fruit Marker'),
    short_description = S('Baobab Fruit Marker'),
    inventory_image = 'everness_baobab_tree_fruit.png^[transformFY^everness_invisible_node_overlay.png',
    wield_image = 'everness_baobab_tree_fruit.png^[transformFY^everness_invisible_node_overlay.png',
    drawtype = 'airlike',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    pointable = false,
    diggable = false,
    buildable_to = true,
    drop = '',
    groups = { not_in_creative_inventory = 1 },
    on_timer = function(pos, elapsed)
        if not minetest.find_node_near(pos, 1, 'everness:baobab_leaves') then
            minetest.remove_node(pos)
        elseif minetest.get_node_light(pos) < 11 then
            minetest.get_node_timer(pos):start(200)
        else
            minetest.set_node(pos, { name = 'everness:baobab_fruit_renewable' })
        end
    end
})

Everness:register_node('everness:baobab_fruit', {
    description = S('Baobab Fruit'),
    short_description = S('Baobab Fruit'),
    drawtype = 'plantlike',
    paramtype2 = 'wallmounted',
    visual_scale = 1.69,
    tiles = { 'everness_baobab_tree_fruit.png^[transformFY' },
    inventory_image = 'everness_baobab_tree_fruit.png^[transformFY',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    is_ground_content = false,
    waving = 1,
    on_use = minetest.item_eat(2),
    selection_box = {
        type = 'fixed',
        fixed = { -0.25, -0.5, -0.25, 0.25, 1, 0.25 }
    },
    groups = {
        -- MTG
        dig_immediate = 3,
        compost = 65,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 65,
        -- ALL
        flammable = 2,
        attached_node = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
})

Everness:register_node('everness:baobab_sapling', {
    description = S('Baobab Sapling'),
    short_description = S('Baobab Sapling'),
    drawtype = 'plantlike',
    tiles = { 'everness_baobab_tree_sapling.png' },
    inventory_image = 'everness_baobab_tree_sapling.png',
    wield_image = 'everness_baobab_tree_sapling.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    selection_box = {
        type = 'fixed',
        fixed = { -4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16 }
    },
    groups = {
        -- MTG
        snappy = 2,
        flammable = 2,
        -- MCL
        plant = 1,
        non_mycelium_plant = 1,
        deco_block = 1,
        dig_by_water = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        dig_immediate = 3,
        attached_node = 1,
        sapling = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    on_timer = function(...)
        Everness.grow_sapling(...)
    end,
    on_construct = function(pos)
        minetest.get_node_timer(pos):start(math.random(300, 1500))
    end,
    on_place = function(itemstack, placer, pointed_thing)
        local on_place_props = {
            sapling_name = 'everness:baobab_sapling',
            minp_relative = { x = -12, y = 1, z = -12 },
            maxp_relative = { x = 12, y = 39, z = 12 },
            interval = 4,
        }

        return Everness:sapling_on_place(itemstack, placer, pointed_thing, on_place_props)
    end,
})

Everness:register_node('everness:willow_leaves', {
    description = S('Willow Tree Leaves'),
    short_description = S('Willow Tree Leaves'),
    drawtype = 'allfaces_optional',
    waving = 1,
    tiles = { 'everness_willow_leaves.png' },
    special_tiles = { 'everness_willow_leaves.png^[transformFX' },
    paramtype = 'light',
    is_ground_content = false,
    sunlight_propagates = true,
    groups = {
        -- MTG
        snappy = 3,
        leafdecay = 3,
        -- MCL
        handy = 1,
        hoey = 1,
        shearsy = 1,
        swordy = 1,
        dig_by_piston = 1,
        fire_encouragement = 30,
        fire_flammability = 60,
        deco_block = 1,
        compostability = 30,
        -- ALL
        flammable = 2,
        leaves = 1,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    _mcl_silk_touch_drop = true,
    -- _mcl_fortune_drop = { get_drops(1), get_drops(2), get_drops(3), get_drops(4) },
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = { 'everness:willow_tree_sapling' },
                rarity = 50,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = { 'everness:willow_leaves' },
            }
        }
    },
    sounds = Everness.node_sound_leaves_defaults(),
    after_place_node = function(pos, placer, itemstack, pointed_thing)
        return Everness:after_place_leaves(pos, placer, itemstack, pointed_thing)
    end
})

Everness:register_node('everness:coral_leaves', {
    description = S('Coral Tree Leaves'),
    short_description = S('Coral Tree Leaves'),
    drawtype = 'allfaces_optional',
    waving = 1,
    tiles = { 'everness_coral_leaves.png' },
    special_tiles = { 'everness_coral_leaves.png' },
    paramtype = 'light',
    is_ground_content = false,
    groups = {
        -- MTG
        snappy = 3,
        leafdecay = 3,
        -- Everness
        falling_leaves = 1,
        -- MCL
        handy = 1,
        hoey = 1,
        shearsy = 1,
        swordy = 1,
        dig_by_piston = 1,
        fire_encouragement = 30,
        fire_flammability = 60,
        deco_block = 1,
        compostability = 30,
        -- ALL
        flammable = 2,
        leaves = 1,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    _mcl_silk_touch_drop = true,
    -- _mcl_fortune_drop = { get_drops(1), get_drops(2), get_drops(3), get_drops(4) },
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = { 'everness:coral_tree_sapling' },
                rarity = 30,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = { 'everness:coral_leaves' },
            }
        }
    },
    sounds = Everness.node_sound_leaves_defaults(),
    after_place_node = function(pos, placer, itemstack, pointed_thing)
        return Everness:after_place_leaves(pos, placer, itemstack, pointed_thing)
    end
})

Everness:register_node('everness:dry_branches', {
    description = S('Dry Tree Branches'),
    short_description = S('Dry Tree Branches'),
    drawtype = 'allfaces_optional',
    waving = 1,
    tiles = { 'everness_dry_branches.png' },
    special_tiles = { 'everness_dry_branches.png' },
    paramtype = 'light',
    is_ground_content = false,
    groups = {
        -- MTG
        snappy = 3,
        leafdecay = 3,
        -- Everness
        falling_leaves = 1,
        -- MCL
        handy = 1,
        hoey = 1,
        shearsy = 1,
        swordy = 1,
        dig_by_piston = 1,
        fire_encouragement = 30,
        fire_flammability = 60,
        deco_block = 1,
        compostability = 30,
        -- ALL
        flammable = 2,
        leaves = 1,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    _mcl_silk_touch_drop = true,
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = { 'everness:dry_tree_sapling' },
                rarity = 20,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = { 'everness:dry_branches' },
            }
        }
    },
    sounds = Everness.node_sound_leaves_defaults(),
    after_place_node = function(pos, placer, itemstack, pointed_thing)
        return Everness:after_place_leaves(pos, placer, itemstack, pointed_thing)
    end
})

Everness:register_node('everness:crystal_leaves', {
    description = S('Crystal Tree Leaves'),
    short_description = S('Crystal Tree Leaves'),
    drawtype = 'allfaces_optional',
    waving = 1,
    tiles = { 'everness_crystal_leaves.png' },
    special_tiles = { 'everness_crystal_leaves.png' },
    paramtype = 'light',
    is_ground_content = false,
    groups = {
        -- MTG
        snappy = 3,
        leafdecay = 3,
        -- Everness
        falling_leaves = 1,
        -- MCL
        handy = 1,
        hoey = 1,
        shearsy = 1,
        swordy = 1,
        dig_by_piston = 1,
        fire_encouragement = 30,
        fire_flammability = 60,
        deco_block = 1,
        compostability = 30,
        -- ALL
        flammable = 2,
        leaves = 1,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    _mcl_silk_touch_drop = true,
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = { 'everness:crystal_tree_sapling' },
                rarity = 30,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = { 'everness:crystal_leaves' },
            }
        }
    },
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 2,
    after_place_node = function(pos, placer, itemstack, pointed_thing)
        return Everness:after_place_leaves(pos, placer, itemstack, pointed_thing)
    end
})

Everness:register_node('everness:coral_tree_sapling', {
    description = S('Coral Tree Sapling'),
    short_description = S('Coral Tree Sapling'),
    drawtype = 'plantlike',
    tiles = { 'everness_coral_tree_sapling.png' },
    inventory_image = 'everness_coral_tree_sapling.png',
    wield_image = 'everness_coral_tree_sapling.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    selection_box = {
        type = 'fixed',
        fixed = { -4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16 }
    },
    groups = {
        -- MTG
        snappy = 2,
        flammable = 2,
        -- MCL
        plant = 1,
        non_mycelium_plant = 1,
        deco_block = 1,
        dig_by_water = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        dig_immediate = 3,
        attached_node = 1,
        sapling = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    on_timer = function(...)
        Everness.grow_sapling(...)
    end,
    on_construct = function(pos)
        minetest.get_node_timer(pos):start(math.random(300, 1500))
    end,
    on_place = function(itemstack, placer, pointed_thing)
        local on_place_props = {
            sapling_name = 'everness:coral_tree_sapling',
            minp_relative = { x = -3, y = 1, z = -3 },
            maxp_relative = { x = 3, y = 6, z = 3 },
            interval = 4,
        }

        return Everness:sapling_on_place(itemstack, placer, pointed_thing, on_place_props)
    end,
})

Everness:register_node('everness:coral_tree_bioluminescent_sapling', {
    description = S('Coral Tree Bioluminescent Sapling'),
    short_description = S('Coral Tree Bioluminescent Sapling'),
    drawtype = 'plantlike',
    tiles = { 'everness_coral_tree_bioluminescent_sapling.png' },
    inventory_image = 'everness_coral_tree_bioluminescent_sapling.png',
    wield_image = 'everness_coral_tree_bioluminescent_sapling.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    selection_box = {
        type = 'fixed',
        fixed = { -4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16 }
    },
    groups = {
        -- MTG
        snappy = 2,
        flammable = 2,
        -- MCL
        plant = 1,
        non_mycelium_plant = 1,
        deco_block = 1,
        dig_by_water = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        dig_immediate = 3,
        attached_node = 1,
        sapling = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    on_timer = function(...)
        Everness.grow_sapling(...)
    end,
    on_construct = function(pos)
        minetest.get_node_timer(pos):start(math.random(300, 1500))
    end,
    on_place = function(itemstack, placer, pointed_thing)
        local on_place_props = {
            sapling_name = 'everness:coral_tree_bioluminescent_sapling',
            minp_relative = { x = -7, y = 1, z = -7 },
            maxp_relative = { x = 7, y = 17, z = 7 },
            interval = 4,
        }

        return Everness:sapling_on_place(itemstack, placer, pointed_thing, on_place_props)
    end,
})

Everness:register_node('everness:dry_tree_sapling', {
    description = S('Dry Tree Sapling'),
    short_description = S('Dry Tree Sapling'),
    drawtype = 'plantlike',
    tiles = { 'everness_dry_tree_sapling.png' },
    inventory_image = 'everness_dry_tree_sapling.png',
    wield_image = 'everness_dry_tree_sapling.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    selection_box = {
        type = 'fixed',
        fixed = { -4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16 }
    },
    groups = {
        -- MTG
        snappy = 2,
        flammable = 2,
        -- MCL
        plant = 1,
        non_mycelium_plant = 1,
        deco_block = 1,
        dig_by_water = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        dig_immediate = 3,
        attached_node = 1,
        sapling = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    on_timer = function(...)
        Everness.grow_sapling(...)
    end,
    on_construct = function(pos)
        minetest.get_node_timer(pos):start(math.random(300, 1500))
    end,
    on_place = function(itemstack, placer, pointed_thing)
        local on_place_props = {
            sapling_name = 'everness:dry_tree_sapling',
            minp_relative = { x = -3, y = 1, z = -3 },
            maxp_relative = { x = 3, y = 8, z = 3 },
            interval = 4,
        }

        return Everness:sapling_on_place(itemstack, placer, pointed_thing, on_place_props)
    end,
})

Everness:register_node('everness:cursed_dream_tree_sapling', {
    description = S('Cursed Dream Tree Sapling'),
    short_description = S('Cursed Dream Tree Sapling'),
    drawtype = 'plantlike',
    tiles = { 'everness_cursed_dream_tree_sapling.png' },
    inventory_image = 'everness_cursed_dream_tree_sapling.png',
    wield_image = 'everness_cursed_dream_tree_sapling.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    selection_box = {
        type = 'fixed',
        fixed = { -4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16 }
    },
    groups = {
        -- MTG
        snappy = 2,
        flammable = 2,
        -- MCL
        plant = 1,
        non_mycelium_plant = 1,
        deco_block = 1,
        dig_by_water = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        dig_immediate = 3,
        attached_node = 1,
        sapling = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    on_timer = function(...)
        Everness.grow_sapling(...)
    end,
    on_construct = function(pos)
        minetest.get_node_timer(pos):start(math.random(300, 1500))
    end,
    on_place = function(itemstack, placer, pointed_thing)
        local on_place_props = {
            sapling_name = 'everness:cursed_dream_tree_sapling',
            minp_relative = { x = -8, y = 1, z = -8 },
            maxp_relative = { x = 8, y = 15, z = 8 },
            interval = 4,
        }

        return Everness:sapling_on_place(itemstack, placer, pointed_thing, on_place_props)
    end,
})

Everness:register_node('everness:willow_tree_sapling', {
    description = S('Dry Tree Sapling'),
    short_description = S('Dry Tree Sapling'),
    drawtype = 'plantlike',
    tiles = { 'everness_willow_tree_sapling.png' },
    inventory_image = 'everness_willow_tree_sapling.png',
    wield_image = 'everness_willow_tree_sapling.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    selection_box = {
        type = 'fixed',
        fixed = { -4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16 }
    },
    groups = {
        -- MTG
        snappy = 2,
        flammable = 2,
        -- MCL
        plant = 1,
        non_mycelium_plant = 1,
        deco_block = 1,
        dig_by_water = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        dig_immediate = 3,
        attached_node = 1,
        sapling = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    on_timer = function(...)
        Everness.grow_sapling(...)
    end,
    on_construct = function(pos)
        minetest.get_node_timer(pos):start(math.random(300, 1500))
    end,
    on_place = function(itemstack, placer, pointed_thing)
        local on_place_props = {
            sapling_name = 'everness:willow_tree_sapling',
            minp_relative = { x = -19, y = 1, z = -19 },
            maxp_relative = { x = 19, y = 28, z = 19 },
            interval = 4,
        }

        return Everness:sapling_on_place(itemstack, placer, pointed_thing, on_place_props)
    end,
})

Everness:register_node('everness:sequoia_tree_sapling', {
    description = S('Sequoia Tree Sapling'),
    short_description = S('Sequoia Tree Sapling'),
    drawtype = 'plantlike',
    tiles = { 'everness_sequoia_tree_sapling.png' },
    inventory_image = 'everness_sequoia_tree_sapling.png',
    wield_image = 'everness_sequoia_tree_sapling.png',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 24,
    sunlight_propagates = true,
    walkable = false,
    selection_box = {
        type = 'fixed',
        fixed = { -4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16 }
    },
    groups = {
        -- MTG
        snappy = 2,
        flammable = 2,
        -- MCL
        plant = 1,
        non_mycelium_plant = 1,
        deco_block = 1,
        dig_by_water = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        dig_immediate = 3,
        attached_node = 1,
        sapling = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    on_timer = function(...)
        Everness.grow_sapling(...)
    end,
    on_construct = function(pos)
        minetest.get_node_timer(pos):start(math.random(300, 1500))
    end,
    on_place = function(itemstack, placer, pointed_thing)
        local on_place_props = {
            sapling_name = 'everness:sequoia_tree_sapling',
            minp_relative = { x = -12, y = 1, z = -12 },
            maxp_relative = { x = 12, y = 75, z = 12 },
            interval = 4,
        }

        return Everness:sapling_on_place(itemstack, placer, pointed_thing, on_place_props)
    end,
})

Everness:register_node('everness:crystal_tree_sapling', {
    description = S('Crystal Tree Sapling'),
    short_description = S('Crystal Tree Sapling'),
    drawtype = 'plantlike',
    tiles = { 'everness_crystal_tree_sapling.png' },
    inventory_image = 'everness_crystal_tree_sapling.png',
    wield_image = 'everness_crystal_tree_sapling.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    selection_box = {
        type = 'fixed',
        fixed = { -4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16 }
    },
    groups = {
        -- MTG
        snappy = 2,
        flammable = 2,
        -- MCL
        plant = 1,
        non_mycelium_plant = 1,
        deco_block = 1,
        dig_by_water = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        dig_immediate = 3,
        attached_node = 1,
        sapling = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    on_timer = function(...)
        Everness.grow_sapling(...)
    end,
    on_construct = function(pos)
        minetest.get_node_timer(pos):start(math.random(300, 1500))
    end,
    on_place = function(itemstack, placer, pointed_thing)
        local on_place_props = {
            sapling_name = 'everness:crystal_tree_sapling',
            minp_relative = { x = -6, y = 1, z = -6 },
            maxp_relative = { x = 6, y = 14, z = 6 },
            interval = 4,
        }

        return Everness:sapling_on_place(itemstack, placer, pointed_thing, on_place_props)
    end,
})

Everness:register_node('everness:crystal_tree_large_sapling', {
    description = S('Crystal Tree Large Sapling'),
    short_description = S('Crystal Tree Large Sapling'),
    drawtype = 'plantlike',
    tiles = { 'everness_crystal_tree_large_sapling.png' },
    inventory_image = 'everness_crystal_tree_large_sapling.png',
    wield_image = 'everness_crystal_tree_large_sapling.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    selection_box = {
        type = 'fixed',
        fixed = { -4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16 }
    },
    groups = {
        -- MTG
        snappy = 2,
        flammable = 2,
        -- MCL
        plant = 1,
        non_mycelium_plant = 1,
        deco_block = 1,
        dig_by_water = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        dig_immediate = 3,
        attached_node = 1,
        sapling = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    on_timer = function(...)
        Everness.grow_sapling(...)
    end,
    on_construct = function(pos)
        minetest.get_node_timer(pos):start(math.random(300, 1500))
    end,
    on_place = function(itemstack, placer, pointed_thing)
        local on_place_props = {
            sapling_name = 'everness:crystal_tree_large_sapling',
            minp_relative = { x = -10, y = 1, z = -10 },
            maxp_relative = { x = 10, y = 14, z = 10 },
            interval = 4,
        }

        return Everness:sapling_on_place(itemstack, placer, pointed_thing, on_place_props)
    end,
})

-- Crystal Bush

Everness:register_node('everness:crystal_bush_stem', {
    description = S('Crystal Bush Stem'),
    drawtype = 'plantlike',
    visual_scale = 1.41,
    tiles = { 'everness_crystal_bush_stem.png' },
    inventory_image = 'everness_crystal_bush_stem.png',
    wield_image = 'everness_crystal_bush_stem.png',
    paramtype = 'light',
    sunlight_propagates = true,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 2,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16 },
    },
})

Everness:register_node('everness:crystal_bush_leaves', {
    description = S('Crystal Bush Leaves'),
    drawtype = 'allfaces_optional',
    tiles = { 'everness_crystal_bush_leaves.png' },
    paramtype = 'light',
    groups = {
        -- MTG
        snappy = 3,
        leafdecay = 3,
        -- MCL
        handy = 1,
        hoey = 1,
        shearsy = 1,
        swordy = 1,
        dig_by_piston = 1,
        fire_encouragement = 30,
        fire_flammability = 60,
        deco_block = 1,
        compostability = 30,
        -- ALL
        flammable = 2,
        leaves = 1,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    _mcl_silk_touch_drop = true,
    drop = {
        max_items = 1,
        items = {
            { items = { 'everness:crystal_bush_sapling' }, rarity = 5 },
            { items = { 'everness:crystal_bush_leaves' } }
        }
    },
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 2,
    after_place_node = function(pos, placer, itemstack, pointed_thing)
        return Everness:after_place_leaves(pos, placer, itemstack, pointed_thing)
    end
})

Everness:register_node('everness:crystal_bush_sapling', {
    description = S('Crystal Bush Sapling'),
    drawtype = 'plantlike',
    tiles = { 'everness_crystal_bush_sapling.png' },
    inventory_image = 'everness_crystal_bush_sapling.png',
    wield_image = 'everness_crystal_bush_sapling.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    on_timer = function(...)
        Everness.grow_sapling(...)
    end,
    selection_box = {
        type = 'fixed',
        fixed = { -4 / 16, -0.5, -4 / 16, 4 / 16, 2 / 16, 4 / 16 }
    },
    groups = {
        -- MTG
        snappy = 2,
        flammable = 2,
        -- MCL
        plant = 1,
        non_mycelium_plant = 1,
        deco_block = 1,
        dig_by_water = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        dig_immediate = 3,
        attached_node = 1,
        sapling = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),

    on_construct = function(pos)
        minetest.get_node_timer(pos):start(math.random(300, 1500))
    end,

    on_place = function(itemstack, placer, pointed_thing)
        local on_place_props = {
            sapling_name = 'everness:crystal_bush_sapling',
            minp_relative = { x = -1, y = 0, z = -1 },
            maxp_relative = { x = 1, y = 1, z = 1 },
            interval = 2,
        }

        return Everness:sapling_on_place(itemstack, placer, pointed_thing, on_place_props)
    end,
})

-- Cursed Bush

Everness:register_node('everness:cursed_bush_stem', {
    description = S('Cursed Bush Stem'),
    drawtype = 'plantlike',
    visual_scale = 1.21,
    tiles = { 'everness_cursed_bush_stem.png' },
    inventory_image = 'everness_cursed_bush_stem.png',
    wield_image = 'everness_cursed_bush_stem.png',
    paramtype = 'light',
    sunlight_propagates = true,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 2,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16 },
    },
})

Everness:register_node('everness:cursed_bush_leaves', {
    description = S('Cursed Bush Leaves'),
    drawtype = 'allfaces_optional',
    tiles = { 'everness_cursed_bush_leaves.png' },
    paramtype = 'light',
    groups = {
        -- MTG
        snappy = 3,
        leafdecay = 3,
        -- MCL
        handy = 1,
        hoey = 1,
        shearsy = 1,
        swordy = 1,
        dig_by_piston = 1,
        fire_encouragement = 30,
        fire_flammability = 60,
        deco_block = 1,
        compostability = 30,
        -- ALL
        flammable = 2,
        leaves = 1,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    _mcl_silk_touch_drop = true,
    drop = {
        max_items = 1,
        items = {
            { items = { 'everness:cursed_bush_sapling' }, rarity = 5 },
            { items = { 'everness:cursed_bush_leaves' } }
        }
    },
    sounds = Everness.node_sound_leaves_defaults(),
    after_place_node = function(pos, placer, itemstack, pointed_thing)
        return Everness:after_place_leaves(pos, placer, itemstack, pointed_thing)
    end
})

Everness:register_node('everness:cursed_bush_sapling', {
    description = S('Cursed Bush Sapling'),
    drawtype = 'plantlike',
    tiles = { 'everness_cursed_bush_sapling.png' },
    inventory_image = 'everness_cursed_bush_sapling.png',
    wield_image = 'everness_cursed_bush_sapling.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    on_timer = function(...)
        Everness.grow_sapling(...)
    end,
    selection_box = {
        type = 'fixed',
        fixed = { -4 / 16, -0.5, -4 / 16, 4 / 16, 2 / 16, 4 / 16 }
    },
    groups = {
        -- MTG
        snappy = 2,
        flammable = 2,
        -- MCL
        plant = 1,
        non_mycelium_plant = 1,
        deco_block = 1,
        dig_by_water = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        dig_immediate = 3,
        attached_node = 1,
        sapling = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),

    on_construct = function(pos)
        minetest.get_node_timer(pos):start(math.random(300, 1500))
    end,

    on_place = function(itemstack, placer, pointed_thing)
        local on_place_props = {
            sapling_name = 'everness:cursed_bush_sapling',
            minp_relative = { x = -1, y = 0, z = -1 },
            maxp_relative = { x = 1, y = 1, z = 1 },
            interval = 2,
        }

        return Everness:sapling_on_place(itemstack, placer, pointed_thing, on_place_props)
    end,
})

--
-- Plantlife (non-cubic)
--

Everness:register_node('everness:flowers_1', {
    description = S('Flowers'),
    short_description = S('Flowers'),
    drawtype = 'nodebox',
    -- Textures of node; +Y, -Y, +X, -X, +Z, -Z
    tiles = {
        'everness_flowers.png',
        'everness_flowers.png^[transformFY',
        'everness_flowers_side_x.png',
        'everness_flowers_side_x.png^[transformFX',
        'everness_flowers_side_z.png^[transformFX',
        'everness_flowers_side_z.png',
    },
    use_texture_alpha = 'clip',
    inventory_image = 'everness_flowers.png',
    wield_image = 'everness_flowers.png',
    paramtype = 'light',
    paramtype2 = 'facedir',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        bamboo_grass = 1,
        flower = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -8 / 16, -0.5, -8 / 16, 8 / 16, -5 / 16, 8 / 16 },
    },
    node_box = {
        type = 'fixed',
        fixed = {
            { 0, -0.3125, -0.0625, 0.5, -0.3125, 0.5 }, -- 3 small flowers top (A)
            { 0.375, -0.5, 0.0625, 0.4375, -0.3125, 0.125 }, -- stem A
            { 0.0625, -0.5, 0, 0.125, -0.3125, 0.0625 }, -- stem A
            { 0.1875, -0.5, 0.3125, 0.25, -0.3125, 0.375 }, -- stem A
        }
    },
    on_place = function(itemstack, placer, pointed_thing)
        local stack = ItemStack('everness:flowers_' .. math.random(1, 4))
        local ret = minetest.item_place(stack, placer, pointed_thing)
        return ItemStack('everness:flowers_1 ' .. itemstack:get_count() - (1 - ret:get_count()))
    end,
})

Everness:register_node('everness:flowers_2', {
    description = S('Flowers'),
    short_description = S('Flowers'),
    drawtype = 'nodebox',
    -- Textures of node; +Y, -Y, +X, -X, +Z, -Z
    tiles = {
        'everness_flowers.png',
        'everness_flowers.png^[transformFY',
        'everness_flowers_side_x.png',
        'everness_flowers_side_x.png^[transformFX',
        'everness_flowers_side_z.png^[transformFX',
        'everness_flowers_side_z.png',
    },
    use_texture_alpha = 'clip',
    inventory_image = 'everness_flowers.png',
    wield_image = 'everness_flowers.png',
    paramtype = 'light',
    paramtype2 = 'facedir',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    drop = 'everness:flowers_1',
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        bamboo_grass = 1,
        flower = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
        not_in_creative_inventory = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -8 / 16, -0.5, -8 / 16, 8 / 16, -5 / 16, 8 / 16 },
    },
    node_box = {
        type = 'fixed',
        fixed = {
            { 0, -0.3125, -0.0625, 0.5, -0.3125, 0.5 }, -- 3 small flowers top (A)
            { 0.375, -0.5, 0.0625, 0.4375, -0.3125, 0.125 }, -- stem A
            { 0.0625, -0.5, 0, 0.125, -0.3125, 0.0625 }, -- stem A
            { 0.1875, -0.5, 0.3125, 0.25, -0.3125, 0.375 }, -- stem A
            { -0.5, -0.4375, 0, 0, -0.4375, 0.5 }, -- 1 big flower top (D)
            { -0.25, -0.5, 0.1875, -0.1875, -0.4375, 0.25 }, -- stem D
        }
    }
})

Everness:register_node('everness:flowers_3', {
    description = S('Flowers'),
    short_description = S('Flowers'),
    drawtype = 'nodebox',
    -- Textures of node; +Y, -Y, +X, -X, +Z, -Z
    tiles = {
        'everness_flowers.png',
        'everness_flowers.png^[transformFY',
        'everness_flowers_side_x.png',
        'everness_flowers_side_x.png^[transformFX',
        'everness_flowers_side_z.png^[transformFX',
        'everness_flowers_side_z.png',
    },
    use_texture_alpha = 'clip',
    inventory_image = 'everness_flowers.png',
    wield_image = 'everness_flowers.png',
    paramtype = 'light',
    paramtype2 = 'facedir',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    drop = 'everness:flowers_1',
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        bamboo_grass = 1,
        flower = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
        not_in_creative_inventory = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -8 / 16, -0.5, -8 / 16, 8 / 16, -5 / 16, 8 / 16 },
    },
    node_box = {
        type = 'fixed',
        fixed = {
            { 0, -0.3125, -0.0625, 0.5, -0.3125, 0.5 }, -- 3 small flowers top (A)
            { 0.375, -0.5, 0.0625, 0.4375, -0.3125, 0.125 }, -- stem A
            { 0.0625, -0.5, 0, 0.125, -0.3125, 0.0625 }, -- stem A
            { 0.1875, -0.5, 0.3125, 0.25, -0.3125, 0.375 }, -- stem A
            { -0.5, -0.4375, 0, 0, -0.4375, 0.5 }, -- 1 big flower top (D)
            { -0.25, -0.5, 0.1875, -0.1875, -0.4375, 0.25 }, -- stem D
            { -0.5, -0.375, -0.5, 0, -0.375, 0 }, -- 2 small and 1 medium flowers top (C)
            { -0.125, -0.5, -0.1875, -0.0625, -0.375, -0.125 }, -- stem C
            { -0.4375, -0.5, -0.25, -0.375, -0.375, -0.1875 }, -- stem C
            { -0.3125, -0.5, -0.375, -0.1875, -0.375, -0.375 }, -- stem C
            { -0.25, -0.5, -0.4375, -0.25, -0.375, -0.3125 }, -- stem C
        }
    }
})

Everness:register_node('everness:flowers_4', {
    description = S('Flowers'),
    short_description = S('Flowers'),
    drawtype = 'nodebox',
    -- Textures of node; +Y, -Y, +X, -X, +Z, -Z
    tiles = {
        'everness_flowers.png',
        'everness_flowers.png^[transformFY',
        'everness_flowers_side_x.png',
        'everness_flowers_side_x.png^[transformFX',
        'everness_flowers_side_z.png^[transformFX',
        'everness_flowers_side_z.png',
    },
    use_texture_alpha = 'clip',
    inventory_image = 'everness_flowers.png',
    wield_image = 'everness_flowers.png',
    paramtype = 'light',
    paramtype2 = 'facedir',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    drop = 'everness:flowers_1',
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        bamboo_grass = 1,
        flower = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
        not_in_creative_inventory = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -8 / 16, -0.5, -8 / 16, 8 / 16, -5 / 16, 8 / 16 },
    },
    node_box = {
        type = 'fixed',
        fixed = {
            { 0, -0.3125, -0.0625, 0.5, -0.3125, 0.5 }, -- 3 small flowers top (A)
            { 0.375, -0.5, 0.0625, 0.4375, -0.3125, 0.125 }, -- stem A
            { 0.0625, -0.5, 0, 0.125, -0.3125, 0.0625 }, -- stem A
            { 0.1875, -0.5, 0.3125, 0.25, -0.3125, 0.375 }, -- stem A
            { 0, -0.375, -0.5, 0.5, -0.375, -0.0625 }, -- 1 big flower top (B)
            { 0.1875, -0.5, -0.3125, 0.25, -0.375, -0.25 }, -- stem B
            { -0.5, -0.375, -0.5, 0, -0.375, 0 }, -- 2 small and 1 medium flowers top (C)
            { -0.125, -0.5, -0.1875, -0.0625, -0.375, -0.125 }, -- stem C
            { -0.4375, -0.5, -0.25, -0.375, -0.375, -0.1875 }, -- stem C
            { -0.3125, -0.5, -0.375, -0.1875, -0.375, -0.375 }, -- stem C
            { -0.25, -0.5, -0.4375, -0.25, -0.375, -0.3125 }, -- stem C
            { -0.5, -0.4375, 0, 0, -0.4375, 0.5 }, -- 1 big flower top (D)
            { -0.25, -0.5, 0.1875, -0.1875, -0.4375, 0.25 }, -- stem D
        }
    }
})

Everness:register_node('everness:coral_burdock_1', {
    description = S('Coral Burdock'),
    short_description = S('Coral Burdock'),
    drawtype = 'plantlike',
    waving = 1,
    visual_scale = 1.69,
    tiles = { 'everness_coral_burdock_1.png' },
    inventory_image = 'everness_coral_burdock_1.png',
    wield_image = 'everness_coral_burdock_1.png',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        coral_grass = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16 },
    },
    on_place = function(itemstack, placer, pointed_thing)
        -- place a random burdock node
        local stack = ItemStack('everness:coral_burdock_' .. math.random(1, 2))
        local ret = minetest.item_place(stack, placer, pointed_thing)
        return ItemStack('everness:coral_burdock_1 ' .. itemstack:get_count() - (1 - ret:get_count()))
    end,
})

Everness:register_node('everness:coral_burdock_2', {
    description = S('Coral Burdock'),
    short_description = S('Coral Burdock'),
    drawtype = 'plantlike',
    waving = 1,
    visual_scale = 1.69,
    tiles = { 'everness_coral_burdock_2.png' },
    inventory_image = 'everness_coral_burdock_2.png',
    wield_image = 'everness_coral_burdock_2.png',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        coral_grass = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16 },
    },
    drop = 'everness:coral_burdock_1',
})

Everness:register_node('everness:coral_bush', {
    description = S('Coral Bush'),
    short_description = S('Coral Bush'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_coral_bush.png' },
    inventory_image = 'everness_coral_bush.png',
    wield_image = 'everness_coral_bush.png',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 0,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        coral_grass = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16 },
    }
})

Everness:register_node('everness:coral_shrub', {
    description = S('Coral Shrub'),
    short_description = S('Coral Shrub'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_coral_shrub.png' },
    inventory_image = 'everness_coral_shrub.png',
    wield_image = 'everness_coral_shrub.png',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 4,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        coral_grass = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16 },
    },
})

Everness:register_node('everness:coral_grass_orange', {
    description = S('Orange Coral Grass'),
    short_description = S('Orange Coral Grass'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_coral_grass_orange.png' },
    inventory_image = 'everness_coral_grass_orange.png',
    wield_image = 'everness_coral_grass_orange.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        coral_grass_under = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16 },
    },
    light_source = 6
})

Everness:register_node('everness:globulagus', {
    description = S('Globulagus'),
    short_description = S('Globulagus'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_coral_grass_globulagus.png' },
    inventory_image = 'everness_coral_grass_globulagus.png',
    wield_image = 'everness_coral_grass_globulagus.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        coral_grass_under = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16 },
    },
    light_source = 7
})

Everness:register_node('everness:coral_grass_tall', {
    description = S('Tall Coral Grass'),
    short_description = S('Tall Coral Grass'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_coral_grass_tall.png' },
    inventory_image = 'everness_coral_grass_tall.png',
    wield_image = 'everness_coral_grass_tall.png',
    visual_scale = 1.69,
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        coral_grass_under = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16 },
    },
    light_source = 7
})

Everness:register_node('everness:crystal_purple', {
    description = S('Purple Crystal'),
    short_description = S('Purple Crystal'),
    drawtype = 'plantlike',
    waving = 0,
    tiles = { 'everness_crystal_purple.png' },
    inventory_image = 'everness_crystal_purple.png',
    wield_image = 'everness_crystal_purple.png',
    paramtype = 'light',
    paramtype2 = 'wallmounted',
    sunlight_propagates = true,
    walkable = false,
    groups = {
        -- MTG
        cracky = 3,
        crystal_grass_under = 1,
        -- MCL
        handy = 1,
        deco_block = 1,
        -- glass = 1,
        -- building_block = 1,
        material_glass = 1,
        -- ALL
        flora = 1,
        attached_node = 1,
    },
    _mcl_blast_resistance = 0.3,
    _mcl_hardness = 0.3,
    sounds = Everness.node_sound_crystal_defaults(),
    light_source = 7,
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16 },
    },
})

Everness:register_node('everness:crystal_orange', {
    description = S('Orange Crystal'),
    short_description = S('Orange Crystal'),
    drawtype = 'plantlike',
    waving = 0,
    tiles = { 'everness_crystal_orange.png' },
    inventory_image = 'everness_crystal_orange.png',
    wield_image = 'everness_crystal_orange.png',
    paramtype = 'light',
    paramtype2 = 'wallmounted',
    sunlight_propagates = true,
    walkable = false,
    groups = {
        -- MTG
        cracky = 3,
        crystal_grass_under = 1,
        -- MCL
        handy = 1,
        deco_block = 1,
        -- glass = 1,
        -- building_block = 1,
        material_glass = 1,
        -- ALL
        flora = 1,
        attached_node = 1,
    },
    _mcl_blast_resistance = 0.3,
    _mcl_hardness = 0.3,
    sounds = Everness.node_sound_crystal_defaults(),
    light_source = 7,
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16 },
    },
})

Everness:register_node('everness:crystal_cyan', {
    description = S('Cyan Crystal'),
    short_description = S('Cyan Crystal'),
    drawtype = 'plantlike',
    waving = 0,
    tiles = { 'everness_crystal_cyan.png' },
    inventory_image = 'everness_crystal_cyan.png',
    wield_image = 'everness_crystal_cyan.png',
    paramtype = 'light',
    paramtype2 = 'wallmounted',
    sunlight_propagates = true,
    walkable = false,
    groups = {
        -- MTG
        cracky = 3,
        crystal_grass_under = 1,
        -- MCL
        handy = 1,
        deco_block = 1,
        -- glass = 1,
        -- building_block = 1,
        material_glass = 1,
        -- ALL
        flora = 1,
        attached_node = 1,
    },
    _mcl_blast_resistance = 0.3,
    _mcl_hardness = 0.3,
    sounds = Everness.node_sound_crystal_defaults(),
    light_source = 12,
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16 },
    },
})

Everness:register_node('everness:coral_plant_bioluminescent', {
    description = S('Coral Plant Bioluminescent'),
    short_description = S('Coral Plant Bioluminescent'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_coral_plant_bioluminescent.png' },
    inventory_image = 'everness_coral_plant_bioluminescent.png',
    wield_image = 'everness_coral_plant_bioluminescent.png',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        coral_grass_under = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 3,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 9
})

Everness:register_node('everness:blooming_cooksonia', {
    description = S('Blooming Cooksonia'),
    short_description = S('Blooming Cooksonia'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_blooming_cooksonia.png' },
    inventory_image = 'everness_blooming_cooksonia.png',
    wield_image = 'everness_blooming_cooksonia.png',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    is_ground_content = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        frosted_grass_under = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 9
})

Everness:register_node('everness:creeping_moss_spores', {
    description = S('Creeping Moss Spores'),
    short_description = S('Creeping Moss Spores'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_creeping_moss_spores.png' },
    inventory_image = 'everness_creeping_moss_spores.png',
    wield_image = 'everness_creeping_moss_spores.png',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 26,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    is_ground_content = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        frosted_grass_under = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 9
})

Everness:register_node('everness:frosted_icicle', {
    description = S('Frosted Icicle'),
    short_description = S('Frosted Icicle'),
    drawtype = 'plantlike',
    waving = 0,
    tiles = { 'everness_frosted_icicle.png' },
    inventory_image = 'everness_frosted_icicle.png',
    wield_image = 'everness_frosted_icicle.png',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    is_ground_content = true,
    groups = {
        -- MTG
        oddly_breakable_by_hand = 3,
        -- MCL
        handy = 1,
        deco_block = 1,
    },
    _mcl_blast_resistance = 0.3,
    _mcl_hardness = 0.3,
    sounds = Everness.node_sound_ice_defaults(),
    light_source = 9
})

Everness:register_node('everness:frosted_icicle_floor', {
    description = S('Frosted Icicle Floor'),
    short_description = S('Frosted Icicle Floor'),
    drawtype = 'plantlike',
    waving = 0,
    tiles = { 'everness_frosted_icicle.png^[transformFY' },
    inventory_image = 'everness_frosted_icicle.png^[transformFY',
    wield_image = 'everness_frosted_icicle.png^[transformFY',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 24,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    is_ground_content = true,
    groups = {
        -- MTG
        snappy = 3,
        frosted_grass_under = 1,
        -- MCL
        handy = 1,
        deco_block = 1,
        -- ALL
        attached_node = 1
    },
    _mcl_blast_resistance = 0.3,
    _mcl_hardness = 0.3,
    sounds = Everness.node_sound_ice_defaults(),
    light_source = 9,
    selection_box = {
        type = 'fixed',
        fixed = { -0.5, -0.5, -0.5, 0.5, 1, 0.5 },
    },
    collision_box = {
        type = 'fixed',
        fixed = { -0.5, -0.5, -0.5, 0.5, 1, 0.5 },
    },
})

Everness:register_node('everness:coral_grass_1', {
    description = S('Coral Grass'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_coral_grass_1.png' },
    -- Use texture of a taller grass stage in inventory
    inventory_image = 'everness_coral_grass_3.png',
    wield_image = 'everness_coral_grass_3.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        coral_grass = 1,
        normal_grass = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16 },
    },
    light_source = 1,
    on_place = function(itemstack, placer, pointed_thing)
        -- place a random grass node
        local stack = ItemStack('everness:coral_grass_' .. math.random(1, 5))
        local ret = minetest.item_place(stack, placer, pointed_thing)
        return ItemStack('everness:coral_grass_1 ' ..
            itemstack:get_count() - (1 - ret:get_count()))
    end,
})

for i = 2, 5 do
    Everness:register_node('everness:coral_grass_' .. i, {
        description = S('Coral Grass'),
        drawtype = 'plantlike',
        waving = 1,
        tiles = { 'everness_coral_grass_' .. i .. '.png' },
        inventory_image = 'everness_coral_grass_' .. i .. '.png',
        wield_image = 'everness_coral_grass_' .. i .. '.png',
        paramtype = 'light',
        sunlight_propagates = true,
        walkable = false,
        buildable_to = true,
        drop = 'everness:coral_grass_1',
        groups = {
            -- MTG
            snappy = 3,
            flora = 1,
            coral_grass = 1,
            normal_grass = 1,
            not_in_creative_inventory = 1,
            -- MCL
            handy = 1,
            shearsy = 1,
            deco_block = 1,
            plant = 1,
            non_mycelium_plant = 1,
            fire_encouragement = 60,
            fire_flammability = 100,
            dig_by_water = 1,
            destroy_by_lava_flow = 1,
            compostability = 30,
            -- ALL
            attached_node = 1,
            flammable = 1,
        },
        _mcl_blast_resistance = 0,
        _mcl_hardness = 0,
        sounds = Everness.node_sound_leaves_defaults(),
        light_source = i,
        selection_box = {
            type = 'fixed',
            fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16 },
        },
    })
end

minetest.register_node('everness:dry_grass_1', {
    description = S('Baobab Savanna Grass'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_dry_grass_1.png' },
    inventory_image = 'everness_dry_grass_3.png',
    wield_image = 'everness_dry_grass_3.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        -- Everness
        everness_dry_grass = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 3,
    },
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16 },
    },
    on_place = function(itemstack, placer, pointed_thing)
        -- place a random dry grass node
        local stack = ItemStack('everness:dry_grass_' .. math.random(1, 4))
        local ret = minetest.item_place(stack, placer, pointed_thing)
        return ItemStack('everness:dry_grass_1 ' ..
            itemstack:get_count() - (1 - ret:get_count()))
    end,
})

for i = 2, 4 do
    minetest.register_node('everness:dry_grass_' .. i, {
        description = S('Baobab Savanna Grass'),
        drawtype = 'plantlike',
        waving = 1,
        tiles = { 'everness_dry_grass_' .. i .. '.png' },
        inventory_image = 'everness_dry_grass_' .. i .. '.png',
        wield_image = 'everness_dry_grass_' .. i .. '.png',
        paramtype = 'light',
        sunlight_propagates = true,
        walkable = false,
        buildable_to = true,
        groups = {
            -- MTG
            snappy = 3,
            flora = 1,
            -- Everness
            everness_dry_grass = 1,
            -- MCL
            handy = 1,
            shearsy = 1,
            deco_block = 1,
            plant = 1,
            non_mycelium_plant = 1,
            fire_encouragement = 60,
            fire_flammability = 100,
            dig_by_water = 1,
            destroy_by_lava_flow = 1,
            compostability = 30,
            -- ALL
            attached_node = 1,
            flammable = 3,
            not_in_creative_inventory = 1
        },
        drop = 'everness:dry_grass_1',
        sounds = Everness.node_sound_leaves_defaults(),
        selection_box = {
            type = 'fixed',
            fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -1 / 16, 6 / 16 },
        },
    })
end

Everness:register_node('everness:red_castor_1', {
    description = S('Red Castor'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_red_castor_1.png' },
    -- Use texture of a taller grass stage in inventory
    inventory_image = 'everness_red_castor_3.png',
    wield_image = 'everness_red_castor_3.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        cursed_grass = 1,
        normal_grass = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16 },
    },
    light_source = 1,
    damage_per_second = 1,
    on_place = function(itemstack, placer, pointed_thing)
        -- place a random grass node
        local stack = ItemStack('everness:red_castor_' .. math.random(1, 4))
        local ret = minetest.item_place(stack, placer, pointed_thing)
        return ItemStack('everness:red_castor_1 ' ..
            itemstack:get_count() - (1 - ret:get_count()))
    end,
})

for i = 2, 4 do
    Everness:register_node('everness:red_castor_' .. i, {
        description = S('Red Castor'),
        drawtype = 'plantlike',
        waving = 1,
        tiles = { 'everness_red_castor_' .. i .. '.png' },
        inventory_image = 'everness_red_castor_' .. i .. '.png',
        wield_image = 'everness_red_castor_' .. i .. '.png',
        paramtype = 'light',
        sunlight_propagates = true,
        walkable = false,
        buildable_to = true,
        drop = 'everness:red_castor_1',
        groups = {
            -- MTG
            snappy = 3,
            flora = 1,
            cursed_grass = 1,
            normal_grass = 1,
            not_in_creative_inventory = 1,
            -- MCL
            handy = 1,
            shearsy = 1,
            deco_block = 1,
            plant = 1,
            non_mycelium_plant = 1,
            fire_encouragement = 60,
            fire_flammability = 100,
            dig_by_water = 1,
            destroy_by_lava_flow = 1,
            compostability = 30,
            -- ALL
            attached_node = 1,
            flammable = 1,
        },
        _mcl_blast_resistance = 0,
        _mcl_hardness = 0,
        sounds = Everness.node_sound_leaves_defaults(),
        light_source = i,
        selection_box = {
            type = 'fixed',
            fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16 },
        },
        damage_per_second = i,
    })
end

Everness:register_node('everness:crystal_mushrooms', {
    description = S('Crystal Mushrooms'),
    tiles = { 'everness_crystal_mushrooms.png' },
    inventory_image = 'everness_crystal_mushrooms.png',
    wield_image = 'everness_crystal_mushrooms.png',
    drawtype = 'plantlike',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 40,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        crystal_grass = 1,
        mushroom = 1,
        food_mushroom = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    on_use = minetest.item_eat(1),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16 },
    },
    light_source = 3,
})

Everness:register_node('everness:twisted_crystal_grass', {
    description = S('Twisted Crystal Grass'),
    short_description = S('Twisted Crystal Grass'),
    drawtype = 'plantlike',
    tiles = { 'everness_twisted_crystal_grass.png' },
    inventory_image = 'everness_twisted_crystal_grass.png',
    wield_image = 'everness_twisted_crystal_grass.png',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 40,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        crystal_grass_under = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7,
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16 },
    },
    waving = 1
})

Everness:register_node('everness:sparkling_crystal_grass', { -- custom
    description = S('Sparkling Crystal Grass'),
    drawtype = 'plantlike',
    tiles = { 'everness_sparkling_crystal_grass.png' },
    use_texture_alpha = 'blend',
    inventory_image = 'everness_sparkling_crystal_grass.png',
    wield_image = 'everness_sparkling_crystal_grass.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        crystal_grass = 1,
        normal_grass = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_grass_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16 },
    },
    light_source = 1,
})

Everness:register_node('everness:crystal_grass_1', {
    description = S('Crystal Grass'),
    drawtype = 'plantlike',
    tiles = { 'everness_crystal_grass_1.png' },
    use_texture_alpha = 'blend',
    -- Use texture of a taller grass stage in inventory
    inventory_image = 'everness_crystal_grass_2.png',
    wield_image = 'everness_crystal_grass_2.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        crystal_grass = 1,
        normal_grass = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_thin_glass_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16 },
    },
    light_source = 2,
    on_place = function(itemstack, placer, pointed_thing)
        -- place a random grass node
        local stack = ItemStack('everness:crystal_grass_' .. math.random(1, 3))
        local ret = minetest.item_place(stack, placer, pointed_thing)
        return ItemStack('everness:crystal_grass_1 ' ..
            itemstack:get_count() - (1 - ret:get_count()))
    end,
})

for i = 2, 3 do
    Everness:register_node('everness:crystal_grass_' .. i, {
        description = S('Coral Grass'),
        drawtype = 'plantlike',
        tiles = { 'everness_crystal_grass_' .. i .. '.png' },
        use_texture_alpha = 'blend',
        inventory_image = 'everness_crystal_grass_' .. i .. '.png',
        wield_image = 'everness_crystal_grass_' .. i .. '.png',
        paramtype = 'light',
        sunlight_propagates = true,
        walkable = false,
        buildable_to = true,
        drop = 'everness:crystal_grass_1',
        groups = {
            -- MTG
            snappy = 3,
            flora = 1,
            crystal_grass = 1,
            normal_grass = 1,
            not_in_creative_inventory = 1,
            -- MCL
            handy = 1,
            shearsy = 1,
            deco_block = 1,
            plant = 1,
            non_mycelium_plant = 1,
            fire_encouragement = 60,
            fire_flammability = 100,
            dig_by_water = 1,
            destroy_by_lava_flow = 1,
            compostability = 30,
            -- ALL
            attached_node = 1,
            flammable = 1,
        },
        _mcl_blast_resistance = 0,
        _mcl_hardness = 0,
        sounds = Everness.node_sound_thin_glass_defaults(),
        light_source = i + 1,
        selection_box = {
            type = 'fixed',
            fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16 },
        },
    })
end

Everness:register_node('everness:marsh_grass', {
    description = S('Marsh Grass'),
    drawtype = 'plantlike',
    waving = 1,
    visual_scale = 1.69,
    tiles = { 'everness_marsh_grass.png' },
    inventory_image = 'everness_marsh_grass.png',
    wield_image = 'everness_marsh_grass.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        cursed_grass = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16 },
    },
})

-- Forsaken desert plants

Everness:register_node('everness:forsaken_desert_plant_1', {
    description = S('Forsaken Plant'),
    short_description = S('Forsaken Plant'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_forsaken_desert_plant_1.png' },
    inventory_image = 'everness_forsaken_desert_plant_1.png',
    wield_image = 'everness_forsaken_desert_plant_1.png',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 11,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16 },
    },
})

Everness:register_node('everness:forsaken_desert_plant_2', {
    description = S('Forsaken Plant'),
    short_description = S('Forsaken Plant'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_forsaken_desert_plant_2.png' },
    inventory_image = 'everness_forsaken_desert_plant_2.png',
    wield_image = 'everness_forsaken_desert_plant_2.png',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 3,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16 },
    },
})

Everness:register_node('everness:forsaken_desert_plant_3', {
    description = S('Forsaken Plant'),
    short_description = S('Forsaken Plant'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_forsaken_desert_plant_3.png' },
    inventory_image = 'everness_forsaken_desert_plant_3.png',
    wield_image = 'everness_forsaken_desert_plant_3.png',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 3,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16 },
    },
})

Everness:register_node('everness:cactus_blue', {
    description = S('Blue Cactus'),
    tiles = {
        'everness_cactus_blue_top.png',
        'everness_cactus_blue_top.png',
        'everness_cactus_blue_side.png'
    },
    use_texture_alpha = 'clip',
    paramtype = 'light',
    paramtype2 = 'facedir',
    light_source = 7,
    groups = {
        -- MTG
        choppy = 3,
        -- MCL
        handy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        plant = 1,
        enderman_takable = 1,
        compostability = 50
    },
    _mcl_blast_resistance = 0.4,
    _mcl_hardness = 0.4,
    damage_per_second = 1,
    drawtype = 'nodebox',
    node_box = {
        type = 'fixed',
        fixed = {
            { -0.25, -0.5, -0.25, 0.25, 0.5, 0.25 },
            { -0.25, -0.5, -0.5, -0.25, 0.5, 0.5 },
            { 0.25, -0.5, -0.5, 0.25, 0.5, 0.5 },
            { -0.5, -0.5, -0.25, 0.5, 0.5, -0.25 },
            { -0.5, -0.5, 0.25, 0.5, 0.5, 0.25 },
            { -0.5, 0.5, -0.5, 0.5, 0.5, 0.5 }
        },
    },
    collision_box = {
        type = 'fixed',
        fixed = { -0.19, -0.5, -0.19, 0.19, 0.39, 0.19 },
    },
    selection_box = {
        type = 'fixed',
        fixed = {
            { -0.3125, -0.5000, -0.3125, 0.3125, 0.5000, 0.3125 },
        },
    },
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node,
})

Everness:register_node('everness:cave_barrel_cactus', {
    description = S('Cave Barrel Cactus'),
    paramtype = 'light',
    light_source = 7,
    groups = {
        -- MTG
        choppy = 3,
        -- MCL
        handy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        plant = 1,
        enderman_takable = 1,
        compostability = 50
    },
    _mcl_blast_resistance = 0.4,
    _mcl_hardness = 0.4,
    drawtype = 'mesh',
    mesh = 'everness_barrel_cactus.obj',
    tiles = { 'everness_cave_barrel_cactus_mesh.png' },
    inventory_image = 'everness_cave_barrel_cactus_item.png',
    wield_image = 'everness_cave_barrel_cactus_item.png',
    is_ground_content = false,
    walkable = true,
    use_texture_alpha = 'clip',
    sounds = Everness.node_sound_wood_defaults()
})

Everness:register_node('everness:venus_trap', {
    description = S('Venus Trap Plant'),
    paramtype = 'light',
    paramtype2 = 'facedir',
    groups = {
        -- MTG
        choppy = 3,
        -- MCL
        handy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        plant = 1,
        enderman_takable = 1,
        compostability = 50
    },
    _mcl_blast_resistance = 0.4,
    _mcl_hardness = 0.4,
    drawtype = 'mesh',
    mesh = 'everness_venus_trap.obj',
    tiles = { 'everness_venus_trap_mesh.png' },
    inventory_image = 'everness_venus_trap_item.png',
    wield_image = 'everness_venus_trap_item.png',
    is_ground_content = false,
    walkable = false,
    damage_per_second = 2,
    use_texture_alpha = 'clip',
    sounds = Everness.node_sound_leaves_defaults()
})

Everness:register_node('everness:illumi_root', {
    description = S('Illumi Root'),
    short_description = S('Illumi Root'),
    drawtype = 'plantlike',
    tiles = { 'everness_illumi_root.png' },
    inventory_image = 'everness_illumi_root.png',
    wield_image = 'everness_illumi_root.png',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 3,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    light_source = 7,
    visual_scale = 1.69,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16 },
    },
})

Everness:register_node('everness:crystal_waterlily', {
    description = S('Crystal Waterlily'),
    drawtype = 'nodebox',
    paramtype = 'light',
    paramtype2 = 'facedir',
    tiles = {
        'everness_crystal_lily_leaf_small.png',
        'everness_crystal_lily_leaf_small.png',
        'everness_crystal_lily_flower_small.png'
    },
    inventory_image = 'everness_crystal_lily_flower_small.png',
    wield_image = 'everness_crystal_lily_flower_small.png',
    use_texture_alpha = 'clip',
    liquids_pointable = true,
    walkable = true,
    buildable_to = true,
    floodable = true,
    groups = {
        -- MTG
        snappy = 3,
        flower = 1,
        flammable = 1,
        flora = 1,
        -- MCL
        deco_block = 1,
        plant = 1,
        compostability = 65,
        destroy_by_lava_flow = 1,
        dig_immediate = 3,
        dig_by_water = 1,
        dig_by_piston = 1,
    },
    sounds = Everness.node_sound_leaves_defaults(),
    node_placement_prediction = '',
    node_box = {
        type = 'fixed',
        fixed = {
            { 0, -31 / 64, -0.5, 0, 0.5, 0.5 },
            { -0.5, -31 / 64, 0, 0.5, 0.5, 0 },
            { -0.5, -31 / 64, -0.5, 0.5, -31 / 64, 0.5 }
        }
    },
    selection_box = {
        type = 'fixed',
        fixed = { -7 / 16, -0.5, -7 / 16, 7 / 16, -15 / 32, 7 / 16 }
    },
    collision_box = {
        type = 'fixed',
        fixed = { -7 / 16, -0.5, -7 / 16, 7 / 16, -15 / 32, 7 / 16 }
    },

    on_place = function(itemstack, placer, pointed_thing)
        local pos = pointed_thing.above
        local node = minetest.get_node(pointed_thing.under)
        local def = minetest.registered_nodes[node.name]

        if def and def.on_rightclick then
            return def.on_rightclick(pointed_thing.under, node, placer, itemstack, pointed_thing)
        end

        if def and def.liquidtype == 'source' and
            minetest.get_item_group(node.name, 'water') > 0
        then
            local player_name = placer and placer:get_player_name() or ''

            if not minetest.is_protected(pos, player_name) then
                minetest.set_node(pos, { name = 'everness:crystal_waterlily' })

                if not minetest.is_creative_enabled(player_name) then
                    itemstack:take_item()
                end
            else
                minetest.chat_send_player(player_name, 'Node is protected')
                minetest.record_protection_violation(pos, player_name)
            end
        end

        return itemstack
    end
})

-- Forsaken Tundra Plants

Everness:register_node('everness:cactus_orange', {
    description = S('Orange Cactus'),
    tiles = {
        'everness_cactus_top.png',
        'everness_cactus_top.png',
        'everness_cactus_side.png'
    },
    use_texture_alpha = 'clip',
    paramtype = 'light',
    paramtype2 = 'facedir',
    light_source = 4,
    groups = {
        -- MTG
        choppy = 3,
        -- MCL
        handy = 1,
        deco_block = 1,
        dig_by_piston = 1,
        plant = 1,
        enderman_takable = 1,
        compostability = 50
    },
    _mcl_blast_resistance = 0.4,
    _mcl_hardness = 0.4,
    damage_per_second = 1,
    drawtype = 'nodebox',
    node_box = {
        type = 'fixed',
        fixed = {
            { -0.25, -0.5, -0.25, 0.25, 0.5, 0.25 },
            { -0.25, -0.5, -0.5, -0.25, 0.5, 0.5 },
            { 0.25, -0.5, -0.5, 0.25, 0.5, 0.5 },
            { -0.5, -0.5, -0.25, 0.5, 0.5, -0.25 },
            { -0.5, -0.5, 0.25, 0.5, 0.5, 0.25 },
            { -0.5, 0.5, -0.5, 0.5, 0.5, 0.5 }
        },
    },
    collision_box = {
        type = 'fixed',
        fixed = { -0.19, -0.5, -0.19, 0.19, 0.39, 0.19 },
    },
    selection_box = {
        type = 'fixed',
        fixed = {
            { -0.3125, -0.5000, -0.3125, 0.3125, 0.5000, 0.3125 },
        },
    },
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node,
})

Everness:register_node('everness:agave_leaf_1', {
    description = S('Agave Leaf'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_agave_leaf_1.png' },
    -- Use texture of a taller grass stage in inventory
    inventory_image = 'everness_agave_leaf_2.png',
    wield_image = 'everness_agave_leaf_2.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        normal_grass = 1,
        forsaken_tundra_grass_under = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16 },
    },
    light_source = 5,
    on_place = function(itemstack, placer, pointed_thing)
        -- place a random grass node
        local stack = ItemStack('everness:agave_leaf_' .. math.random(1, 3))
        local ret = minetest.item_place(stack, placer, pointed_thing)
        return ItemStack('everness:agave_leaf_1 ' ..
            itemstack:get_count() - (1 - ret:get_count()))
    end,
})

for i = 2, 3 do
    Everness:register_node('everness:agave_leaf_' .. i, {
        description = S('Agave Leaf'),
        drawtype = 'plantlike',
        waving = 1,
        tiles = { 'everness_agave_leaf_' .. i .. '.png' },
        inventory_image = 'everness_agave_leaf_' .. i .. '.png',
        wield_image = 'everness_agave_leaf_' .. i .. '.png',
        paramtype = 'light',
        sunlight_propagates = true,
        walkable = false,
        buildable_to = true,
        drop = 'everness:agave_leaf_1',
        groups = {
            -- MTG
            snappy = 3,
            flora = 1,
            normal_grass = 1,
            forsaken_tundra_grass_under = 1,
            not_in_creative_inventory = 1,
            -- MCL
            handy = 1,
            shearsy = 1,
            deco_block = 1,
            plant = 1,
            non_mycelium_plant = 1,
            fire_encouragement = 60,
            fire_flammability = 100,
            dig_by_water = 1,
            destroy_by_lava_flow = 1,
            compostability = 30,
            -- ALL
            attached_node = 1,
            flammable = 1,
        },
        _mcl_blast_resistance = 0,
        _mcl_hardness = 0,
        sounds = Everness.node_sound_leaves_defaults(),
        light_source = 4 + i,
        selection_box = {
            type = 'fixed',
            fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16 },
        },
    })
end

-- Mese Fruit

Everness:register_node('everness:mese_tree_fruit', {
    description = S('Mese Fruit'),
    drawtype = 'nodebox',
    tiles = {
        'everness_mese_tree_fruit_top.png',
        'everness_mese_tree_fruit_top.png',
        'everness_mese_tree_fruit_side.png',
    },
    use_texture_alpha = 'clip',
    inventory_image = 'everness_mese_tree_fruit_item.png',
    wield_image = 'everness_mese_tree_fruit_item.png',
    paramtype = 'light',
    paramtype2 = 'wallmounted',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = false,
    groups = {
        -- MTG
        snappy = 3,
        leafdecay = 3,
        leafdecay_drop = 1,
        -- MCL
        handy = 1,
        hoey = 1,
        shearsy = 1,
        swordy = 1,
        dig_by_piston = 1,
        fire_encouragement = 30,
        fire_flammability = 60,
        deco_block = 1,
        compostability = 30,
        -- ALL
        -- attached_node = 1,
        flammable = 1,
    },
    _mcl_shears_drop = true,
    _mcl_blast_resistance = 0.2,
    _mcl_hardness = 0.2,
    sounds = Everness.node_sound_leaves_defaults(),
    node_box = {
        type = 'fixed',
        fixed = {
            -- bottom
            { -8 / 16, -7 / 16, -8 / 16, 8 / 16, -7 / 16, 8 / 16 },
            -- body (middle)
            { -4 / 16, -8 / 16, -4 / 16, 4 / 16, -1 / 16, 4 / 16 },
            -- top
            { -3 / 16, -1 / 16, -3 / 16, 3 / 16, 0, 3 / 16 }
        }
    },
    selection_box = {
        type = 'fixed',
        fixed = { -8 / 16, -8 / 16, -8 / 16, 8 / 16, -5 / 16, 8 / 16 },
    },
    light_source = 14,
    after_place_node = function(pos, placer, itemstack, pointed_thing)
        minetest.get_meta(pos):set_int('everness_prevent_leafdecay', 1)
    end
})

Everness:register_node('everness:mese_tree_sapling', {
    description = S('Mese Tree Sapling'),
    short_description = S('Mese Tree Sapling'),
    drawtype = 'plantlike',
    tiles = { 'everness_mese_tree_sapling.png' },
    inventory_image = 'everness_mese_tree_sapling.png',
    wield_image = 'everness_mese_tree_sapling.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    selection_box = {
        type = 'fixed',
        fixed = { -4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16 }
    },
    groups = {
        -- MTG
        snappy = 2,
        flammable = 2,
        -- MCL
        plant = 1,
        non_mycelium_plant = 1,
        deco_block = 1,
        dig_by_water = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        dig_immediate = 3,
        attached_node = 1,
        sapling = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    on_timer = function(...)
        Everness.grow_sapling(...)
    end,
    on_construct = function(pos)
        minetest.get_node_timer(pos):start(math.random(300, 1500))
    end,
    on_place = function(itemstack, placer, pointed_thing)
        local on_place_props = {
            sapling_name = 'everness:mese_tree_sapling',
            minp_relative = { x = -3, y = 1, z = -3 },
            maxp_relative = { x = 3, y = 11, z = 3 },
            interval = 4,
        }

        return Everness:sapling_on_place(itemstack, placer, pointed_thing, on_place_props)
    end,
})

-- Cursed Lands Plants

Everness:register_node('everness:egg_plant', {
    description = S('Egg plant'),
    drawtype = 'nodebox',
    tiles = {
        'everness_egg_plant_top.png',
        'everness_egg_plant_bottom.png',
        'everness_egg_plant_side.png',
    },
    use_texture_alpha = 'clip',
    -- Use texture of a taller grass stage in inventory
    inventory_image = 'everness_egg_plant_item.png',
    wield_image = 'everness_egg_plant_item.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        normal_grass = 1,
        cursed_grass_under = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    node_box = {
        type = 'fixed',
        fixed = {
            { -0.5, -0.4375, -0.5, 0.5, -0.4375, 0.5 },
            { -0.25, -0.5, -0.25, 0.25, -0.06250, 0.25 },
            { -0.1875, -0.06250, -0.1875, 0.1875, 0, 0.1875 }
        }
    },
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16 },
    },
    light_source = 8,
    damage_per_second = 1,
    move_resistance = 7,
})

Everness:register_node('everness:ivis_moss', {
    description = S('Ivis Moss'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_ivis_moss.png' },
    inventory_image = 'everness_ivis_moss.png',
    wield_image = 'everness_ivis_moss.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        normal_grass = 1,
        cursed_grass_under = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16 },
    },
    light_source = 7,
    paramtype2 = 'meshoptions',
    place_param2 = 3
})

Everness:register_node('everness:ngrass_1', {
    description = S('Ngrass'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_ngrass_1.png' },
    inventory_image = 'everness_ngrass_1.png',
    wield_image = 'everness_ngrass_1.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        normal_grass = 1,
        cursed_grass_under = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16 },
    },
    light_source = 5,
})

Everness:register_node('everness:ngrass_2', {
    description = S('Ngrass'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_ngrass_2.png' },
    inventory_image = 'everness_ngrass_2.png',
    wield_image = 'everness_ngrass_2.png',
    paramtype = 'light',
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        normal_grass = 1,
        cursed_grass_under = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    selection_box = {
        type = 'fixed',
        fixed = { -6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16 },
    },
    light_source = 6
})

-- Bamboo

-- small bamboo
Everness:register_node('everness:bamboo_1', {
    description = S('Bamboo'),
    -- +Y, -Y, +X, -X, +Z, -Z
    tiles = {
        'everness_bamboo_small_top.png',
        'everness_bamboo_small_top.png^[transformFY',
        'everness_bamboo_small_1.png^[transformFX',
        'everness_bamboo_small_1.png',
        'everness_bamboo_small_1.png',
        'everness_bamboo_small_1.png^[transformFX'
    },
    use_texture_alpha = 'clip',
    drawtype = 'nodebox',
    paramtype = 'light',
    sunlight_propagates = true,
    paramtype2 = 'facedir',
    node_box = {
        type = 'fixed',
        -- offset 4, size 2x2
        fixed = {
            { -0.2500, -0.5000, -0.2500, -0.1250, 0.5000, -0.1250 },
            { -0.1875, -0.5000, -0.5000, -0.1875, 0.5000, 0.5000 },
            { -0.5000, -0.5000, -0.1875, 0.5000, 0.5000, -0.1875 }
        },
    },
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/30 chance
                items = { 'everness:bamboo_sprout' },
                rarity = 30,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = { 'everness:bamboo_item' },
            }
        }
    },
    groups = {
        -- MTG
        snappy = 3,
        bamboo = 1,
        bamboo_small = 1,
        bamboo_grass = 1,
        not_in_creative_inventory = 1,
        -- MCL
        handy = 1,
        axey = 1,
        choppy = 1,
        dig_by_piston = 1,
        plant = 1,
        non_mycelium_plant = 1,
        -- ALL
        flammable = 2
    },
    _mcl_blast_resistance = 1,
    _mcl_hardness = 1.5,
    selection_box = {
        type = 'fixed',
        fixed = { -0.3125, -0.5000, -0.3125, -0.06250, 0.5000, -0.06250 },
    },
    collision_box = {
        type = 'fixed',
        fixed = { -0.2500, -0.5000, -0.2500, -0.1250, 0.5000, -0.1250 }
    },
    sounds = Everness.node_sound_bamboo_defaults(),
    after_place_node = function(...)
        Everness:place_bamboo(...)
    end,
    after_dig_node = function(...)
        Everness:dig_up_bamboo(...)
    end,
    on_timer = function(...)
        Everness:grow_bamboo(...)
    end,
})

Everness:register_node('everness:bamboo_2', {
    description = S('Bamboo'),
    -- +Y, -Y, +X, -X, +Z, -Z
    tiles = {
        'everness_bamboo_small_top.png',
        'everness_bamboo_small_top.png^[transformFY',
        'everness_bamboo_small_2.png^[transformFX',
        'everness_bamboo_small_2.png',
        'everness_bamboo_small_2.png',
        'everness_bamboo_small_2.png^[transformFX'
    },
    use_texture_alpha = 'clip',
    drawtype = 'nodebox',
    paramtype = 'light',
    sunlight_propagates = true,
    paramtype2 = 'facedir',
    node_box = {
        type = 'fixed',
        -- offset 4, size 2x2
        fixed = {
            { -0.2500, -0.5000, -0.2500, -0.1250, 0.5000, -0.1250 },
            { -0.1875, -0.5000, -0.5000, -0.1875, 0.5000, 0.5000 },
            { -0.5000, -0.5000, -0.1875, 0.5000, 0.5000, -0.1875 }
        },
    },
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/30 chance
                items = { 'everness:bamboo_sprout' },
                rarity = 30,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = { 'everness:bamboo_item' },
            }
        }
    },
    groups = {
        -- MTG
        snappy = 3,
        bamboo = 1,
        bamboo_small = 1,
        bamboo_grass = 1,
        not_in_creative_inventory = 1,
        -- MCL
        handy = 1,
        axey = 1,
        choppy = 1,
        dig_by_piston = 1,
        plant = 1,
        non_mycelium_plant = 1,
        -- ALL
        flammable = 2
    },
    _mcl_blast_resistance = 1,
    _mcl_hardness = 1.5,
    selection_box = {
        type = 'fixed',
        fixed = { -0.3125, -0.5000, -0.3125, -0.06250, 0.5000, -0.06250 },
    },
    collision_box = {
        type = 'fixed',
        fixed = { -0.2500, -0.5000, -0.2500, -0.1250, 0.5000, -0.1250 }
    },
    sounds = Everness.node_sound_bamboo_defaults(),
    after_place_node = function(...)
        Everness:place_bamboo(...)
    end,
    after_dig_node = function(...)
        Everness:dig_up_bamboo(...)
    end,
    on_timer = function(...)
        Everness:grow_bamboo(...)
    end,
})

-- large bamboo

Everness:register_node('everness:bamboo_3', {
    description = S('Bamboo'),
    -- +Y, -Y, +X, -X, +Z, -Z
    tiles = {
        'everness_bamboo_large_top.png',
        'everness_bamboo_large_bottom.png^[transformFY',
        'everness_bamboo_large_1.png^[transformFX',
        'everness_bamboo_large_1.png',
        'everness_bamboo_large_1.png',
        'everness_bamboo_large_1.png^[transformFX'
    },
    use_texture_alpha = 'clip',
    drawtype = 'nodebox',
    paramtype = 'light',
    sunlight_propagates = true,
    paramtype2 = 'facedir',
    node_box = {
        type = 'fixed',
        -- offset 4, size 4x4
        fixed = {
            { -0.2500, -0.5000, -0.2500, 0.000, 0.5000, 0.000 },
            { -0.1250, -0.5000, -0.5000, -0.1250, 0.5000, 0.5000 },
            { -0.5000, -0.5000, -0.1250, 0.5000, 0.5000, -0.1250 }
        }
    },
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = { 'everness:bamboo_sprout' },
                rarity = 20,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = { 'everness:bamboo_item' },
            }
        }
    },
    groups = {
        -- MTG
        snappy = 3,
        bamboo = 1,
        bamboo_large = 1,
        bamboo_grass = 1,
        not_in_creative_inventory = 1,
        -- MCL
        handy = 1,
        axey = 1,
        choppy = 1,
        dig_by_piston = 1,
        plant = 1,
        non_mycelium_plant = 1,
        -- ALL
        flammable = 2
    },
    _mcl_blast_resistance = 1,
    _mcl_hardness = 1.5,
    selection_box = {
        type = 'fixed',
        fixed = { -0.3125, -0.5000, -0.3125, 0.06250, 0.5000, 0.06250 },
    },
    sounds = Everness.node_sound_bamboo_defaults(),
    after_place_node = function(...)
        Everness:place_bamboo(...)
    end,
    after_dig_node = function(...)
        Everness:dig_up_bamboo(...)
    end,
    on_timer = function(...)
        Everness:grow_bamboo(...)
    end,
})

Everness:register_node('everness:bamboo_4', {
    description = S('Bamboo'),
    -- +Y, -Y, +X, -X, +Z, -Z
    tiles = {
        'everness_bamboo_large_top.png',
        'everness_bamboo_large_bottom.png^[transformFY',
        'everness_bamboo_large_2.png^[transformFX',
        'everness_bamboo_large_2.png',
        'everness_bamboo_large_2.png',
        'everness_bamboo_large_2.png^[transformFX'
    },
    use_texture_alpha = 'clip',
    drawtype = 'nodebox',
    paramtype = 'light',
    sunlight_propagates = true,
    paramtype2 = 'facedir',
    node_box = {
        type = 'fixed',
        -- offset 4, size 4x4
        fixed = {
            { -0.2500, -0.5000, -0.2500, 0.000, 0.5000, 0.000 },
            { -0.1250, -0.5000, -0.5000, -0.1250, 0.5000, 0.5000 },
            { -0.5000, -0.5000, -0.1250, 0.5000, 0.5000, -0.1250 }
        }
    },
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = { 'everness:bamboo_sprout' },
                rarity = 20,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = { 'everness:bamboo_item' },
            }
        }
    },
    groups = {
        -- MTG
        snappy = 3,
        bamboo = 1,
        bamboo_large = 1,
        bamboo_grass = 1,
        not_in_creative_inventory = 1,
        -- MCL
        handy = 1,
        axey = 1,
        choppy = 1,
        dig_by_piston = 1,
        plant = 1,
        non_mycelium_plant = 1,
        -- ALL
        flammable = 2
    },
    _mcl_blast_resistance = 1,
    _mcl_hardness = 1.5,
    selection_box = {
        type = 'fixed',
        fixed = { -0.3125, -0.5000, -0.3125, 0.06250, 0.5000, 0.06250 },
    },
    sounds = Everness.node_sound_bamboo_defaults(),
    after_place_node = function(...)
        Everness:place_bamboo(...)
    end,
    after_dig_node = function(...)
        Everness:dig_up_bamboo(...)
    end,
    on_timer = function(...)
        Everness:grow_bamboo(...)
    end,
})

Everness:register_node('everness:bamboo_5', {
    description = S('Bamboo'),
    -- +Y, -Y, +X, -X, +Z, -Z
    tiles = {
        'everness_bamboo_large_top.png',
        'everness_bamboo_large_bottom.png^[transformFY',
        'everness_bamboo_large_3.png^[transformFX',
        'everness_bamboo_large_3.png',
        'everness_bamboo_large_3.png',
        'everness_bamboo_large_3.png^[transformFX'
    },
    use_texture_alpha = 'clip',
    drawtype = 'nodebox',
    paramtype = 'light',
    sunlight_propagates = true,
    paramtype2 = 'facedir',
    node_box = {
        type = 'fixed',
        -- offset 4, size 4x4
        fixed = {
            { -0.2500, -0.5000, -0.2500, 0.000, 0.5000, 0.000 },
            { -0.1250, -0.5000, -0.5000, -0.1250, 0.5000, 0.5000 },
            { -0.5000, -0.5000, -0.1250, 0.5000, 0.5000, -0.1250 }
        }
    },
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = { 'everness:bamboo_sprout' },
                rarity = 20,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = { 'everness:bamboo_item' },
            }
        }
    },
    groups = {
        -- MTG
        snappy = 3,
        bamboo = 1,
        bamboo_large = 1,
        bamboo_grass = 1,
        not_in_creative_inventory = 1,
        -- MCL
        handy = 1,
        axey = 1,
        choppy = 1,
        dig_by_piston = 1,
        plant = 1,
        non_mycelium_plant = 1,
        -- ALL
        flammable = 2
    },
    _mcl_blast_resistance = 1,
    _mcl_hardness = 1.5,
    selection_box = {
        type = 'fixed',
        fixed = { -0.3125, -0.5000, -0.3125, 0.06250, 0.5000, 0.06250 },
    },
    sounds = Everness.node_sound_bamboo_defaults(),
    after_place_node = function(...)
        Everness:place_bamboo(...)
    end,
    after_dig_node = function(...)
        Everness:dig_up_bamboo(...)
    end,
    on_timer = function(...)
        Everness:grow_bamboo(...)
    end,
})

Everness:register_node('everness:bamboo_sprout', {
    description = S('Bamboo Sprout'),
    tiles = { 'everness_bamboo_sprout.png' },
    inventory_image = 'everness_bamboo_sprout.png',
    wield_image = 'everness_bamboo_sprout.png',
    drawtype = 'plantlike',
    groups = {
        -- MTG
        seed = 1,
        snappy = 3,
        flammable = 2,
        bamboo = 1,
        bamboo_grass = 1,
        -- MCL
        plant = 1,
        non_mycelium_plant = 1,
        deco_block = 1,
        dig_by_water = 1,
        dig_by_piston = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        dig_immediate = 3,
        attached_node = 1,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    walkable = false,
    sunlight_propagates = true,
    selection_box = {
        type = 'fixed',
        fixed = { -0.5, -0.5, -0.5, 0.5, -5 / 16, 0.5 },
    },
    sounds = Everness.node_sound_leaves_defaults(),
    after_place_node = function(pos, placer, itemstack, pointed_thing)
        Everness:tick_bamboo_again(pos)
    end,
    on_timer = function(...)
        Everness:grow_bamboo(...)
    end,
})

-- Forsaken Tundra Plants

Everness:register_node('everness:bloodspore_plant', {
    description = S('Blood Spoore Plant'),
    short_description = S('Blood Spoore Plant'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_bloodspore_plant.png' },
    inventory_image = 'everness_bloodspore_plant.png',
    wield_image = 'everness_bloodspore_plant.png',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        normal_grass = 1,
        forsaken_tundra_grass = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 3,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7
})

Everness:register_node('everness:bloodspore_plant_small', {
    description = S('Blood Spoore Plant Small'),
    short_description = S('Blood Spoore Plant Small'),
    drawtype = 'plantlike',
    waving = 1,
    tiles = { 'everness_bloodspore_plant_small.png' },
    inventory_image = 'everness_bloodspore_plant_small.png',
    wield_image = 'everness_bloodspore_plant_small.png',
    paramtype = 'light',
    paramtype2 = 'meshoptions',
    place_param2 = 8,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        normal_grass = 1,
        forsaken_tundra_grass_under = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 3,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7
})

Everness:register_node('everness:termite_block', {
    description = S('Termite Block'),
    tiles = { 'everness_termite_block.png' },
    drawtype = 'glasslike',
    paramtype = 'light',
    move_resistance = 7,
    drowning = 2,
    walkable = false,
    climbable = false,
    post_effect_color = { r = 47, g = 28, b = 18, a = 255 },
    damage_per_second = 1,
    groups = {
        -- MTG
        crumbly = 3,
        disable_jump = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        building_block = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
})

Everness:register_node('everness:bamboo_block', {
    description = S('Bamboo Block'),
    tiles = {
        'everness_bamboo_block_top.png',
        'everness_bamboo_block_top.png',
        'everness_bamboo_block_side.png'
    },
    paramtype2 = 'facedir',
    groups = {
        -- MTG
        choppy = 3,
        -- MCL
        handy = 1,
        axey = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 3,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_bamboo_defaults({
        dug = { name = 'everness_bamboo_hit', gain = 1.25 }
    }),
    on_place = minetest.rotate_node,
})

Everness:register_node('everness:bamboo_dry_block', {
    description = S('Bamboo Block'),
    tiles = {
        'everness_dry_bamboo_block_top.png',
        'everness_dry_bamboo_block_top.png',
        'everness_dry_bamboo_block_side.png'
    },
    paramtype2 = 'facedir',
    groups = {
        -- MTG
        choppy = 3,
        -- MCL
        handy = 1,
        axey = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 3,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_bamboo_defaults({
        dug = { name = 'everness_bamboo_hit', gain = 1.25 }
    }),
    on_place = minetest.rotate_node,
})

Everness:register_node('everness:bamboo_wood', {
    description = S('Bamboo Planks'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_dry_bamboo_block_side.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 3,
        oddly_breakable_by_hand = 2,
        -- Everness
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        building_block = 1,
        material_wood = 1,
        -- ALL
        flammable = 2,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

Everness:register_node('everness:bamboo_mosaic_wood', {
    description = S('Bamboo Mosaic'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_bamboo_mosaic.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 2,
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 2,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

Everness:register_node('everness:baobab_wood', {
    description = S('Baobab Wood Planks'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_baobab_wood.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 3,
        oddly_breakable_by_hand = 2,
        -- Everness
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 3,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

Everness:register_node('everness:sequoia_wood', {
    description = S('Sequoia Wood Planks'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_sequoia_wood.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 3,
        oddly_breakable_by_hand = 2,
        -- Everness
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 3,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

Everness:register_node('everness:mese_wood', {
    description = S('Mese Wood Planks'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_mese_wood.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 3,
        oddly_breakable_by_hand = 2,
        -- Everness
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 3,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

--
-- Corals
--

local function coral_on_place(itemstack, placer, pointed_thing, params)
    if pointed_thing.type ~= 'node' or not placer then
        return itemstack
    end

    local _params = params or {}
    local ignore_water = _params.ignore_water or false
    local node_under_name = _params.node_under_name or 'everness:coral_skeleton'
    local player_name = placer:get_player_name()
    local pos_under = pointed_thing.under
    local pos_above = pointed_thing.above
    local node_under = minetest.get_node(pos_under)
    local def_under = minetest.registered_nodes[node_under.name]

    if def_under and def_under.on_rightclick and not placer:get_player_control().sneak then
        return def_under.on_rightclick(pos_under, node_under,
                placer, itemstack, pointed_thing) or itemstack
    end

    if node_under.name ~= node_under_name
        or (minetest.get_item_group(minetest.get_node(pos_above).name, 'water') == 0 and not ignore_water)
    then
        return itemstack
    end

    if minetest.is_protected(pos_under, player_name) or
        minetest.is_protected(pos_above, player_name) then

        if minetest.get_modpath('default') or minetest.global_exists('default') then
            Everness.log_player_action(placer,
                'tried to place', itemstack:get_name(),
                'at protected position', pos_under)
        end

        minetest.record_protection_violation(pos_under, player_name)
        return itemstack
    end

    node_under.name = itemstack:get_name()
    minetest.set_node(pos_under, node_under)
    if not minetest.is_creative_enabled(player_name) then
        itemstack:take_item()
    end

    return itemstack
end

Everness:register_node('everness:coral_corals', {
    description = S('Coral Corals'),
    drawtype = 'plantlike_rooted',
    waving = 1,
    paramtype = 'light',
    tiles = { 'everness_coral_skeleton.png' },
    special_tiles = { { name = 'everness_coral_corals.png', tileable_vertical = true } },
    inventory_image = 'everness_coral_corals.png',
    wield_image = 'everness_coral_corals.png',
    groups = {
        -- MTG
        snappy = 3,
        -- MCL
        dig_immediate = 3,
        deco_block = 1,
        coral = 1,
    },
    _mcl_hardness = 0,
    _mcl_blast_resistance = 0,
    _mcl_silk_touch_drop = true,
    selection_box = {
        type = 'fixed',
        fixed = {
            { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 },
            { -4 / 16, 0.5, -4 / 16, 4 / 16, 1.5, 4 / 16 },
        },
    },
    node_dig_prediction = 'everness:coral_skeleton',
    node_placement_prediction = '',
    sounds = Everness.node_sound_stone_defaults({
        dig = { name = 'everness_plant_hit', gain = 0.2 },
        dug = { name = 'everness_grass_footstep', gain = 0.25 },
    }),
    on_place = coral_on_place,
    after_destruct = function(pos, oldnode)
        minetest.set_node(pos, { name = 'everness:coral_skeleton' })
    end,
})

Everness:register_node('everness:coral_jellyfish', {
    description = S('Coral Corals'),
    drawtype = 'plantlike_rooted',
    waving = 1,
    paramtype = 'light',
    tiles = { 'everness_coral_skeleton.png' },
    special_tiles = { { name = 'everness_coral_jellyfish.png', tileable_vertical = true } },
    inventory_image = 'everness_coral_jellyfish.png',
    wield_image = 'everness_coral_jellyfish.png',
    groups = {
        -- MTG
        snappy = 3,
        -- MCL
        dig_immediate = 3,
        deco_block = 1,
        coral = 1,
    },
    _mcl_hardness = 0,
    _mcl_blast_resistance = 0,
    _mcl_silk_touch_drop = true,
    selection_box = {
        type = 'fixed',
        fixed = {
            { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 },
            { -4 / 16, 0.5, -4 / 16, 4 / 16, 1.5, 4 / 16 },
        },
    },
    node_dig_prediction = 'everness:coral_skeleton',
    node_placement_prediction = '',
    sounds = Everness.node_sound_stone_defaults({
        dig = { name = 'everness_plant_hit', gain = 0.2 },
        dug = { name = 'everness_grass_footstep', gain = 0.25 },
    }),
    on_place = coral_on_place,
    after_destruct = function(pos, oldnode)
        minetest.set_node(pos, { name = 'everness:coral_skeleton' })
    end,
})

Everness:register_node('everness:coral_frosted', {
    description = S('Coral Frosted'),
    drawtype = 'plantlike_rooted',
    waving = 1,
    paramtype = 'light',
    tiles = { 'everness_coral_skeleton.png' },
    special_tiles = { { name = 'everness_frosted_coral.png', tileable_vertical = true } },
    inventory_image = 'everness_frosted_coral.png',
    wield_image = 'everness_frosted_coral.png',
    groups = {
        -- MTG
        snappy = 3,
        -- MCL
        dig_immediate = 3,
        deco_block = 1,
        coral = 1,
    },
    _mcl_hardness = 0,
    _mcl_blast_resistance = 0,
    _mcl_silk_touch_drop = true,
    selection_box = {
        type = 'fixed',
        fixed = {
            { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 },
            { -4 / 16, 0.5, -4 / 16, 4 / 16, 1.5, 4 / 16 },
        },
    },
    node_dig_prediction = 'everness:coral_skeleton',
    node_placement_prediction = '',
    sounds = Everness.node_sound_stone_defaults({
        dig = { name = 'everness_plant_hit', gain = 0.2 },
        dug = { name = 'everness_grass_footstep', gain = 0.25 },
    }),
    on_place = coral_on_place,
    after_destruct = function(pos, oldnode)
        minetest.set_node(pos, { name = 'everness:coral_skeleton' })
    end,
})

Everness:register_node('everness:coral_starfish', {
    description = S('Coral Starfish'),
    drawtype = 'plantlike_rooted',
    waving = 1,
    paramtype = 'light',
    tiles = { 'everness_coral_skeleton.png' },
    special_tiles = { { name = 'everness_starfish.png', tileable_vertical = true } },
    inventory_image = 'everness_starfish.png',
    wield_image = 'everness_starfish.png',
    groups = {
        -- MTG
        snappy = 3,
        -- MCL
        dig_immediate = 3,
        deco_block = 1,
        coral = 1,
    },
    _mcl_hardness = 0,
    _mcl_blast_resistance = 0,
    _mcl_silk_touch_drop = true,
    selection_box = {
        type = 'fixed',
        fixed = {
            { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 },
            { -4 / 16, 0.5, -4 / 16, 4 / 16, 1.5, 4 / 16 },
        },
    },
    node_dig_prediction = 'everness:coral_skeleton',
    node_placement_prediction = '',
    sounds = Everness.node_sound_stone_defaults({
        dig = { name = 'everness_plant_hit', gain = 0.2 },
        dug = { name = 'everness_grass_footstep', gain = 0.25 },
    }),
    on_place = coral_on_place,
    after_destruct = function(pos, oldnode)
        minetest.set_node(pos, { name = 'everness:coral_skeleton' })
    end,
})

Everness:register_node('everness:sand_with_spine_kelp', {
    description = S('Spine Kelp'),
    drawtype = 'plantlike_rooted',
    waving = 1,
    tiles = { 'everness_cursed_stone.png' },
    special_tiles = { { name = 'everness_spine_kelp.png', tileable_vertical = true } },
    inventory_image = 'everness_spine_kelp.png',
    wield_image = 'everness_spine_kelp.png',
    paramtype = 'light',
    paramtype2 = 'leveled',
    groups = {
        -- MTG
        snappy = 3,
        -- MCL
        dig_immediate = 3,
        deco_block = 1,
        coral = 1,
    },
    _mcl_hardness = 0,
    _mcl_blast_resistance = 0,
    _mcl_silk_touch_drop = true,
    selection_box = {
        type = 'fixed',
        fixed = {
            { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 },
            { -2 / 16, 0.5, -2 / 16, 2 / 16, 3.5, 2 / 16 },
        },
    },
    node_dig_prediction = 'everness:cursed_stone',
    node_placement_prediction = '',
    sounds = Everness.node_sound_sand_defaults({
        dig = { name = 'everness_plant_hit', gain = 0.2 },
        dug = { name = 'everness_grass_footstep', gain = 0.25 },
    }),

    on_place = function(itemstack, placer, pointed_thing)
        -- Call on_rightclick if the pointed node defines it
        if pointed_thing.type == 'node' and placer and
            not placer:get_player_control().sneak then
            local node_ptu = minetest.get_node(pointed_thing.under)
            local def_ptu = minetest.registered_nodes[node_ptu.name]
            if def_ptu and def_ptu.on_rightclick then
                return def_ptu.on_rightclick(pointed_thing.under, node_ptu, placer,
                    itemstack, pointed_thing)
            end
        end

        local pos = pointed_thing.under
        if minetest.get_node(pos).name ~= 'everness:cursed_stone' then
            return itemstack
        end

        local height = math.random(4, 6)
        local pos_top = { x = pos.x, y = pos.y + height, z = pos.z }
        local node_top = minetest.get_node(pos_top)
        local def_top = minetest.registered_nodes[node_top.name]
        local player_name = placer:get_player_name()

        if def_top and def_top.liquidtype == 'source' and
            minetest.get_item_group(node_top.name, 'water') > 0 then
            if not minetest.is_protected(pos, player_name) and
                not minetest.is_protected(pos_top, player_name) then
                minetest.set_node(pos, { name = 'everness:sand_with_spine_kelp',
                    param2 = height * 16 })
                if not minetest.is_creative_enabled(player_name) then
                    itemstack:take_item()
                end
            else
                minetest.chat_send_player(player_name, 'Node is protected')
                minetest.record_protection_violation(pos, player_name)
            end
        end

        return itemstack
    end,

    after_destruct = function(pos, oldnode)
        minetest.set_node(pos, { name = 'everness:cursed_stone' })
    end
})

Everness:register_node('everness:coral_forest_deep_ocean_coral_plant_1', {
    description = S('Coral Bulbs'),
    drawtype = 'plantlike_rooted',
    waving = 1,
    paramtype = 'light',
    light_source = 12,
    tiles = { 'everness_deep_ocean_sand.png' },
    special_tiles = { { name = 'everness_deep_ocean_coral_plant_1.png', tileable_vertical = true } },
    inventory_image = 'everness_deep_ocean_coral_plant_1.png',
    wield_image = 'everness_deep_ocean_coral_plant_1.png',
    groups = {
        -- MTG
        snappy = 3,
        -- MCL
        dig_immediate = 3,
        deco_block = 1,
        coral = 1,
    },
    _mcl_hardness = 0,
    _mcl_blast_resistance = 0,
    _mcl_silk_touch_drop = true,
    selection_box = {
        type = 'fixed',
        fixed = {
            { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 },
            { -4 / 16, 0.5, -4 / 16, 4 / 16, 1.5, 4 / 16 },
        },
    },
    node_dig_prediction = 'everness:coral_forest_deep_ocean_sand',
    node_placement_prediction = '',
    sounds = Everness.node_sound_stone_defaults({
        dig = { name = 'everness_plant_hit', gain = 0.2 },
        dug = { name = 'everness_grass_footstep', gain = 0.25 },
    }),
    on_place = function(itemstack, placer, pointed_thing)
        coral_on_place(
            itemstack,
            placer,
            pointed_thing,
            {
                ignore_water = true,
                node_under_name = 'everness:coral_forest_deep_ocean_sand'
            }
        )
    end,
    after_destruct = function(pos, oldnode)
        minetest.set_node(pos, { name = 'everness:coral_forest_deep_ocean_sand' })
    end,
})

Everness:register_node('everness:coral_forest_deep_ocean_coral_plant_2', {
    description = S('Coral Tree'),
    drawtype = 'plantlike_rooted',
    waving = 1,
    paramtype = 'light',
    light_source = 12,
    tiles = { 'everness_deep_ocean_sand.png' },
    special_tiles = { { name = 'everness_deep_ocean_coral_plant_2.png', tileable_vertical = true } },
    inventory_image = 'everness_deep_ocean_coral_plant_2.png',
    wield_image = 'everness_deep_ocean_coral_plant_2.png',
    groups = {
        -- MTG
        snappy = 3,
        -- MCL
        dig_immediate = 3,
        deco_block = 1,
        coral = 1,
    },
    _mcl_hardness = 0,
    _mcl_blast_resistance = 0,
    _mcl_silk_touch_drop = true,
    selection_box = {
        type = 'fixed',
        fixed = {
            { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 },
            { -4 / 16, 0.5, -4 / 16, 4 / 16, 1.5, 4 / 16 },
        },
    },
    node_dig_prediction = 'everness:coral_forest_deep_ocean_sand',
    node_placement_prediction = '',
    sounds = Everness.node_sound_stone_defaults({
        dig = { name = 'everness_plant_hit', gain = 0.2 },
        dug = { name = 'everness_grass_footstep', gain = 0.25 },
    }),
    on_place = function(itemstack, placer, pointed_thing)
        coral_on_place(
            itemstack,
            placer,
            pointed_thing,
            {
                ignore_water = true,
                node_under_name = 'everness:coral_forest_deep_ocean_sand'
            }
        )
    end,
    after_destruct = function(pos, oldnode)
        minetest.set_node(pos, { name = 'everness:coral_forest_deep_ocean_sand' })
    end,
})

Everness:register_node('everness:coral_forest_deep_ocean_coral_plant_3', {
    description = S('Coral Palm'),
    drawtype = 'plantlike_rooted',
    waving = 1,
    paramtype = 'light',
    light_source = 12,
    tiles = { 'everness_deep_ocean_sand.png' },
    special_tiles = { { name = 'everness_deep_ocean_coral_plant_3.png', tileable_vertical = true } },
    inventory_image = 'everness_deep_ocean_coral_plant_3.png',
    wield_image = 'everness_deep_ocean_coral_plant_3.png',
    groups = {
        -- MTG
        snappy = 3,
        -- MCL
        dig_immediate = 3,
        deco_block = 1,
        coral = 1,
    },
    _mcl_hardness = 0,
    _mcl_blast_resistance = 0,
    _mcl_silk_touch_drop = true,
    selection_box = {
        type = 'fixed',
        fixed = {
            { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 },
            { -4 / 16, 0.5, -4 / 16, 4 / 16, 1.5, 4 / 16 },
        },
    },
    node_dig_prediction = 'everness:coral_forest_deep_ocean_sand',
    node_placement_prediction = '',
    sounds = Everness.node_sound_stone_defaults({
        dig = { name = 'everness_plant_hit', gain = 0.2 },
        dug = { name = 'everness_grass_footstep', gain = 0.25 },
    }),
    on_place = function(itemstack, placer, pointed_thing)
        coral_on_place(
            itemstack,
            placer,
            pointed_thing,
            {
                ignore_water = true,
                node_under_name = 'everness:coral_forest_deep_ocean_sand'
            }
        )
    end,
    after_destruct = function(pos, oldnode)
        minetest.set_node(pos, { name = 'everness:coral_forest_deep_ocean_sand' })
    end,
})

Everness:register_node('everness:cursed_lands_deep_ocean_coral_plant_anemone', {
    description = S('Coral Anemone'),
    drawtype = 'plantlike_rooted',
    waving = 1,
    paramtype = 'light',
    light_source = 12,
    tiles = { 'everness_cursed_lands_deep_ocean_sand.png' },
    special_tiles = { { name = 'everness_cursed_lands_deep_ocean_coral_anemone.png', tileable_vertical = true } },
    inventory_image = 'everness_cursed_lands_deep_ocean_coral_anemone.png',
    wield_image = 'everness_cursed_lands_deep_ocean_coral_anemone.png',
    groups = {
        -- MTG
        snappy = 3,
        -- MCL
        dig_immediate = 3,
        deco_block = 1,
        coral = 1,
    },
    _mcl_hardness = 0,
    _mcl_blast_resistance = 0,
    _mcl_silk_touch_drop = true,
    selection_box = {
        type = 'fixed',
        fixed = {
            { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 },
            { -4 / 16, 0.5, -4 / 16, 4 / 16, 1.5, 4 / 16 },
        },
    },
    node_dig_prediction = 'everness:cursed_lands_deep_ocean_sand',
    node_placement_prediction = '',
    sounds = Everness.node_sound_stone_defaults({
        dig = { name = 'everness_plant_hit', gain = 0.2 },
        dug = { name = 'everness_grass_footstep', gain = 0.25 },
    }),
    on_place = function(itemstack, placer, pointed_thing)
        coral_on_place(
            itemstack,
            placer,
            pointed_thing,
            {
                ignore_water = true,
                node_under_name = 'everness:cursed_lands_deep_ocean_sand'
            }
        )
    end,
    after_destruct = function(pos, oldnode)
        minetest.set_node(pos, { name = 'everness:cursed_lands_deep_ocean_sand' })
    end,
})

Everness:register_node('everness:cursed_lands_deep_ocean_coral_plant_darkilluma', {
    description = S('Coral Darkilluma'),
    drawtype = 'plantlike_rooted',
    waving = 1,
    paramtype = 'light',
    light_source = 12,
    tiles = { 'everness_cursed_lands_deep_ocean_sand.png' },
    special_tiles = { { name = 'everness_cursed_lands_deep_ocean_coral_darkilluma.png', tileable_vertical = true } },
    inventory_image = 'everness_cursed_lands_deep_ocean_coral_darkilluma.png',
    wield_image = 'everness_cursed_lands_deep_ocean_coral_darkilluma.png',
    groups = {
        -- MTG
        snappy = 3,
        -- MCL
        dig_immediate = 3,
        deco_block = 1,
        coral = 1,
    },
    _mcl_hardness = 0,
    _mcl_blast_resistance = 0,
    _mcl_silk_touch_drop = true,
    selection_box = {
        type = 'fixed',
        fixed = {
            { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 },
            { -4 / 16, 0.5, -4 / 16, 4 / 16, 1.5, 4 / 16 },
        },
    },
    node_dig_prediction = 'everness:cursed_lands_deep_ocean_sand',
    node_placement_prediction = '',
    sounds = Everness.node_sound_stone_defaults({
        dig = { name = 'everness_plant_hit', gain = 0.2 },
        dug = { name = 'everness_grass_footstep', gain = 0.25 },
    }),
    on_place = function(itemstack, placer, pointed_thing)
        coral_on_place(
            itemstack,
            placer,
            pointed_thing,
            {
                ignore_water = true,
                node_under_name = 'everness:cursed_lands_deep_ocean_sand'
            }
        )
    end,
    after_destruct = function(pos, oldnode)
        minetest.set_node(pos, { name = 'everness:cursed_lands_deep_ocean_sand' })
    end,
})

Everness:register_node('everness:cursed_lands_deep_ocean_coral_plant_demon', {
    description = S('Coral Demon'),
    drawtype = 'plantlike_rooted',
    waving = 1,
    paramtype = 'light',
    light_source = 12,
    tiles = { 'everness_cursed_lands_deep_ocean_sand.png' },
    special_tiles = { { name = 'everness_cursed_lands_deep_ocean_coral_demon.png', tileable_vertical = true } },
    inventory_image = 'everness_cursed_lands_deep_ocean_coral_demon.png',
    wield_image = 'everness_cursed_lands_deep_ocean_coral_demon.png',
    groups = {
        -- MTG
        snappy = 3,
        -- MCL
        dig_immediate = 3,
        deco_block = 1,
        coral = 1,
    },
    _mcl_hardness = 0,
    _mcl_blast_resistance = 0,
    _mcl_silk_touch_drop = true,
    selection_box = {
        type = 'fixed',
        fixed = {
            { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 },
            { -4 / 16, 0.5, -4 / 16, 4 / 16, 1.5, 4 / 16 },
        },
    },
    node_dig_prediction = 'everness:cursed_lands_deep_ocean_sand',
    node_placement_prediction = '',
    sounds = Everness.node_sound_stone_defaults({
        dig = { name = 'everness_plant_hit', gain = 0.2 },
        dug = { name = 'everness_grass_footstep', gain = 0.25 },
    }),
    on_place = function(itemstack, placer, pointed_thing)
        coral_on_place(
            itemstack,
            placer,
            pointed_thing,
            {
                ignore_water = true,
                node_under_name = 'everness:cursed_lands_deep_ocean_sand'
            }
        )
    end,
    after_destruct = function(pos, oldnode)
        minetest.set_node(pos, { name = 'everness:cursed_lands_deep_ocean_sand' })
    end,
})

Everness:register_node('everness:crystal_forest_deep_ocean_coral_plant_1', {
    description = S('Crystal Forest Deep Ocean Coral Plant Cyan'),
    drawtype = 'plantlike_rooted',
    waving = 1,
    paramtype = 'light',
    light_source = 12,
    tiles = { 'everness_crystal_forest_deep_ocean_sand.png' },
    special_tiles = { { name = 'everness_crystal_forest_deep_ocean_coral_plant_1.png', tileable_vertical = true } },
    inventory_image = 'everness_crystal_forest_deep_ocean_coral_plant_1.png',
    wield_image = 'everness_crystal_forest_deep_ocean_coral_plant_1.png',
    groups = {
        -- MTG
        snappy = 3,
        -- MCL
        dig_immediate = 3,
        deco_block = 1,
        coral = 1,
    },
    _mcl_hardness = 0,
    _mcl_blast_resistance = 0,
    _mcl_silk_touch_drop = true,
    selection_box = {
        type = 'fixed',
        fixed = {
            { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 },
            { -4 / 16, 0.5, -4 / 16, 4 / 16, 1.5, 4 / 16 },
        },
    },
    node_dig_prediction = 'everness:crystal_forest_deep_ocean_sand',
    node_placement_prediction = '',
    sounds = Everness.node_sound_stone_defaults({
        dig = { name = 'everness_plant_hit', gain = 0.2 },
        dug = { name = 'everness_grass_footstep', gain = 0.25 },
    }),
    on_place = function(itemstack, placer, pointed_thing)
        coral_on_place(
            itemstack,
            placer,
            pointed_thing,
            {
                ignore_water = true,
                node_under_name = 'everness:crystal_forest_deep_ocean_sand'
            }
        )
    end,
    after_destruct = function(pos, oldnode)
        minetest.set_node(pos, { name = 'everness:crystal_forest_deep_ocean_sand' })
    end,
})

Everness:register_node('everness:crystal_forest_deep_ocean_coral_plant_2', {
    description = S('Crystal Forest Deep Ocean Coral Plant Orange'),
    drawtype = 'plantlike_rooted',
    waving = 1,
    paramtype = 'light',
    light_source = 12,
    tiles = { 'everness_crystal_forest_deep_ocean_sand.png' },
    special_tiles = { { name = 'everness_crystal_forest_deep_ocean_coral_plant_2.png', tileable_vertical = true } },
    inventory_image = 'everness_crystal_forest_deep_ocean_coral_plant_2.png',
    wield_image = 'everness_crystal_forest_deep_ocean_coral_plant_2.png',
    groups = {
        -- MTG
        snappy = 3,
        -- MCL
        dig_immediate = 3,
        deco_block = 1,
        coral = 1,
    },
    _mcl_hardness = 0,
    _mcl_blast_resistance = 0,
    _mcl_silk_touch_drop = true,
    selection_box = {
        type = 'fixed',
        fixed = {
            { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 },
            { -4 / 16, 0.5, -4 / 16, 4 / 16, 1.5, 4 / 16 },
        },
    },
    node_dig_prediction = 'everness:crystal_forest_deep_ocean_sand',
    node_placement_prediction = '',
    sounds = Everness.node_sound_stone_defaults({
        dig = { name = 'everness_plant_hit', gain = 0.2 },
        dug = { name = 'everness_grass_footstep', gain = 0.25 },
    }),
    on_place = function(itemstack, placer, pointed_thing)
        coral_on_place(
            itemstack,
            placer,
            pointed_thing,
            {
                ignore_water = true,
                node_under_name = 'everness:crystal_forest_deep_ocean_sand'
            }
        )
    end,
    after_destruct = function(pos, oldnode)
        minetest.set_node(pos, { name = 'everness:crystal_forest_deep_ocean_sand' })
    end,
})

Everness:register_node('everness:crystal_forest_deep_ocean_coral_plant_3', {
    description = S('Crystal Forest Deep Ocean Coral Plant Pink'),
    drawtype = 'plantlike_rooted',
    waving = 1,
    paramtype = 'light',
    light_source = 12,
    tiles = { 'everness_crystal_forest_deep_ocean_sand.png' },
    special_tiles = { { name = 'everness_crystal_forest_deep_ocean_coral_plant_3.png', tileable_vertical = true } },
    inventory_image = 'everness_crystal_forest_deep_ocean_coral_plant_3.png',
    wield_image = 'everness_crystal_forest_deep_ocean_coral_plant_3.png',
    groups = {
        -- MTG
        snappy = 3,
        -- MCL
        dig_immediate = 3,
        deco_block = 1,
        coral = 1,
    },
    _mcl_hardness = 0,
    _mcl_blast_resistance = 0,
    _mcl_silk_touch_drop = true,
    selection_box = {
        type = 'fixed',
        fixed = {
            { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 },
            { -4 / 16, 0.5, -4 / 16, 4 / 16, 1.5, 4 / 16 },
        },
    },
    node_dig_prediction = 'everness:crystal_forest_deep_ocean_sand',
    node_placement_prediction = '',
    sounds = Everness.node_sound_stone_defaults({
        dig = { name = 'everness_plant_hit', gain = 0.2 },
        dug = { name = 'everness_grass_footstep', gain = 0.25 },
    }),
    on_place = function(itemstack, placer, pointed_thing)
        coral_on_place(
            itemstack,
            placer,
            pointed_thing,
            {
                ignore_water = true,
                node_under_name = 'everness:crystal_forest_deep_ocean_sand'
            }
        )
    end,
    after_destruct = function(pos, oldnode)
        minetest.set_node(pos, { name = 'everness:crystal_forest_deep_ocean_sand' })
    end,
})

Everness:register_node('everness:crystal_coral_dark', {
    description = S('Crystal Coral Dark'),
    tiles = { 'everness_crystal_coral_dark_block.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        coral = 1,
    },
    _mcl_hardness = 1.5,
    _mcl_blast_resistance = 6,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:crystal_coral_light', {
    description = S('Crystal Coral Light'),
    tiles = { 'everness_crystal_coral_light_block.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        coral = 1,
    },
    _mcl_hardness = 1.5,
    _mcl_blast_resistance = 6,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_forest_deep_ocean_coral_1', {
    description = S('Coral Forest Deep Ocean Coral Pink'),
    tiles = { 'everness_deep_ocean_coral_1.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- Everness
        everness_coral_forest_deep_ocean_coral = 1,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        coral = 1,
    },
    _mcl_hardness = 1.5,
    _mcl_blast_resistance = 6,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_forest_deep_ocean_coral_2', {
    description = S('Coral Forest Deep Ocean Coral Cyan'),
    tiles = { 'everness_deep_ocean_coral_2.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- Everness
        everness_coral_forest_deep_ocean_coral = 1,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        coral = 1,
    },
    _mcl_hardness = 1.5,
    _mcl_blast_resistance = 6,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_forest_deep_ocean_coral_3', {
    description = S('Coral Forest Deep Ocean Coral Green'),
    tiles = { 'everness_deep_ocean_coral_3.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- Everness
        everness_coral_forest_deep_ocean_coral = 1,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        coral = 1,
    },
    _mcl_hardness = 1.5,
    _mcl_blast_resistance = 6,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_forest_deep_ocean_coral_4', {
    description = S('Coral Forest Deep Ocean Coral Red'),
    tiles = { 'everness_deep_ocean_coral_4.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- Everness
        everness_coral_forest_deep_ocean_coral = 1,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        coral = 1,
    },
    _mcl_hardness = 1.5,
    _mcl_blast_resistance = 6,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:cursed_lands_deep_ocean_coral_alcyonacea', {
    description = S('Coral Alcyonacea'),
    tiles = { 'everness_cursed_lands_deep_ocean_coral_alcyonacea.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- Everness
        everness_cursed_lands_deep_ocean_coral = 1,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        coral = 1,
    },
    _mcl_hardness = 1.5,
    _mcl_blast_resistance = 6,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:cursed_lands_deep_ocean_coral_ostracod', {
    description = S('Coral Ostracod'),
    tiles = { 'everness_cursed_lands_deep_ocean_coral_ostracod.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- Everness
        everness_cursed_lands_deep_ocean_coral = 1,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        coral = 1,
    },
    _mcl_hardness = 1.5,
    _mcl_blast_resistance = 6,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:cursed_lands_deep_ocean_coral_octocurse', {
    description = S('Coral Octocurse'),
    tiles = { 'everness_cursed_lands_deep_ocean_coral_octocurse.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- Everness
        everness_cursed_lands_deep_ocean_coral = 1,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        coral = 1,
    },
    _mcl_hardness = 1.5,
    _mcl_blast_resistance = 6,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:crystal_forest_deep_ocean_coral_1', {
    description = S('Crystal Forest Deep Ocean Coral Green'),
    tiles = { 'everness_crystal_forest_deep_ocean_coral_1.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- Everness
        everness_crystal_forest_deep_ocean_coral = 1,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        coral = 1,
    },
    _mcl_hardness = 1.5,
    _mcl_blast_resistance = 6,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:crystal_forest_deep_ocean_coral_2', {
    description = S('Crystal Forest Deep Ocean Coral Orange'),
    tiles = { 'everness_crystal_forest_deep_ocean_coral_2.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- Everness
        everness_crystal_forest_deep_ocean_coral = 1,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        coral = 1,
    },
    _mcl_hardness = 1.5,
    _mcl_blast_resistance = 6,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:crystal_forest_deep_ocean_coral_3', {
    description = S('Crystal Forest Deep Ocean Coral Cyan'),
    tiles = { 'everness_crystal_forest_deep_ocean_coral_3.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- Everness
        everness_crystal_forest_deep_ocean_coral = 1,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        coral = 1,
    },
    _mcl_hardness = 1.5,
    _mcl_blast_resistance = 6,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

Everness:register_node('everness:coral_skeleton', {
    description = S('Coral Skeleton'),
    tiles = { 'everness_coral_skeleton.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        coral = 1,
    },
    _mcl_hardness = 1.5,
    _mcl_blast_resistance = 6,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

--
-- Meshes
--

-- Skull with candle

Everness:register_node('everness:skull_with_candle', {
    description = S('Skull with Candle'),
    short_description = S('Skull with Candle'),
    drawtype = 'mesh',
    mesh = 'everness_skull_with_candle.obj',
    tiles = {
        {
            name = 'everness_candle_flame_animated.png',
            animation = {
                type = 'vertical_frames',
                aspect_w = 8,
                aspect_h = 8,
                length = 2
            },
            backface_culling = false
        },
    },
    inventory_image = 'everness_scull_with_candle_inventory.png',
    wield_image = 'everness_scull_with_candle_inventory.png',
    paramtype = 'light',
    paramtype2 = 'facedir',
    is_ground_content = false,
    walkable = true,
    selection_box = {
        type = 'fixed',
        fixed = { -1 / 2 + 3 / 16, -1 / 2, -1 / 2 + 3 / 16, 1 / 2 - 3 / 16, 1 / 2, 1 / 2 - 3 / 16 }
    },
    collision_box = {
        type = 'fixed',
        fixed = { -1 / 2 + 3 / 16, -1 / 2, -1 / 2 + 3 / 16, 1 / 2 - 3 / 16, 0.1, 1 / 2 - 3 / 16 }
    },
    groups = {
        -- MTG
        choppy = 2,
        dig_immediate = 3,
        torch = 1,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        attached_node = 1
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
    sunlight_propagates = true,
    light_source = 12,
    liquids_pointable = false,
    use_texture_alpha = 'clip',
})

-- Forsythia Bush

Everness:register_node('everness:forsythia_bush', {
    description = S('Forsythia Bush'),
    short_description = S('Forsythia Bush'),
    drawtype = 'mesh',
    mesh = 'everness_forsythia_mesh.obj',
    tiles = { 'everness_forsythia_mesh.png' },
    inventory_image = 'everness_forsythia_item.png',
    wield_image = 'everness_forsythia_item.png',
    paramtype = 'light',
    is_ground_content = false,
    walkable = true,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        bamboo_grass_under = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    sounds = Everness.node_sound_leaves_defaults(),
    sunlight_propagates = true,
    use_texture_alpha = 'clip',
})

-- Glowing Pillar

Everness:register_node('everness:glowing_pillar', {
    description = S('Glowing Pillar'),
    short_description = S('Glowing Pillar'),
    drawtype = 'mesh',
    mesh = 'everness_glowing_pillar.obj',
    tiles = {
        'everness_glowing_pillar_roots.png',
        'everness_glowing_pillar_luminophor.png',
        'everness_glowing_pillar_leaves.png',
    },
    inventory_image = 'everness_glowing_pillar_item.png',
    wield_image = 'everness_glowing_pillar_item.png',
    paramtype = 'light',
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        forsaken_tundra_grass_under = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    selection_box = {
        type = 'fixed',
        fixed = { -0.63, -0.5, -0.63, 0.63, 3.23, 0.63 }
    },
    collision_box = {
        type = 'fixed',
        fixed = { -0.5, -0.5, -0.5, 0.5, 1.5, 0.5 }
    },
    sounds = Everness.node_sound_leaves_defaults(),
    sunlight_propagates = true,
    use_texture_alpha = 'clip',
    light_source = 12,
})

-- Blue Vine Lantern

Everness:register_node('everness:blue_vine_lantern', {
    description = S('Blue Vine Lantern'),
    short_description = S('Blue Vine Lantern'),
    drawtype = 'mesh',
    mesh = 'everness_glowing_pillar.obj',
    tiles = {
        'everness_blue_vine_lantern_roots.png',
        'everness_blue_vine_lantern.png',
        'everness_blue_vine_lantern_leaves.png',
    },
    inventory_image = 'everness_blue_vine_lantern_item.png',
    wield_image = 'everness_blue_vine_lantern_item.png',
    paramtype = 'light',
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        bamboo_grass_under = 1,
        lantern = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    selection_box = {
        type = 'fixed',
        fixed = { -0.63, -0.5, -0.63, 0.63, 3.23, 0.63 }
    },
    collision_box = {
        type = 'fixed',
        fixed = { -0.5, -0.5, -0.5, 0.5, 1.5, 0.5 }
    },
    sounds = Everness.node_sound_leaves_defaults(),
    sunlight_propagates = true,
    use_texture_alpha = 'clip',
    light_source = 12,
})

-- Amaranita Lantern

Everness:register_node('everness:amaranita_lantern', {
    description = S('Amaranita Lantern'),
    short_description = S('Amaranita Lantern'),
    drawtype = 'mesh',
    mesh = 'everness_glowing_pillar.obj',
    tiles = {
        'everness_amaranita_lantern_roots.png',
        'everness_amaranita_lantern_light.png',
        'everness_amaranita_lantern_fur.png',
    },
    inventory_image = 'everness_amaranita_lantern_item.png',
    wield_image = 'everness_amaranita_lantern_item.png',
    paramtype = 'light',
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        frosted_grass_under = 1,
        lantern = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    selection_box = {
        type = 'fixed',
        fixed = { -0.63, -0.5, -0.63, 0.63, 3.23, 0.63 }
    },
    collision_box = {
        type = 'fixed',
        fixed = { -0.5, -0.5, -0.5, 0.5, 1.5, 0.5 }
    },
    sounds = Everness.node_sound_leaves_defaults(),
    sunlight_propagates = true,
    use_texture_alpha = 'clip',
    light_source = 12,
})

Everness:register_node('everness:lumecorn', {
    description = S('Lumecorn'),
    short_description = S('Lumecorn'),
    drawtype = 'mesh',
    mesh = 'everness_lumecorn.obj',
    tiles = {
        {
            name = 'everness_lumecorn_root.png',
            backface_culling = false
        },
        {
            name = 'everness_lumecorn_leaf.png',
            backface_culling = false
        },
        {
            name = 'everness_lumecorn_light.png',
            backface_culling = false
        },
    },
    inventory_image = 'everness_lumecorn_item.png',
    wield_image = 'everness_lumecorn_item.png',
    paramtype = 'light',
    waving = 1,
    groups = {
        -- MTG
        snappy = 3,
        flora = 1,
        coral_grass_under = 1,
        lantern = 1,
        -- MCL
        handy = 1,
        shearsy = 1,
        deco_block = 1,
        plant = 1,
        non_mycelium_plant = 1,
        fire_encouragement = 60,
        fire_flammability = 100,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        compostability = 30,
        -- ALL
        attached_node = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 0,
    _mcl_hardness = 0,
    selection_box = {
        type = 'fixed',
        fixed = { -0.63, -0.5, -0.63, 0.63, 3.23, 0.63 }
    },
    sounds = Everness.node_sound_leaves_defaults(),
    sunlight_propagates = true,
    use_texture_alpha = 'clip',
    light_source = 12,
})

--
-- Tools / 'Advanced' crafting / Non-'natural'
--

Everness:register_node('everness:glass', {
    description = S('Everness Glass'),
    drawtype = 'glasslike_framed_optional',
    tiles = { 'everness_glass.png', 'everness_glass_detail.png' },
    use_texture_alpha = 'clip', -- only needed for stairs API
    paramtype = 'light',
    sunlight_propagates = true,
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        oddly_breakable_by_hand = 3,
        glass = 1,
        -- MCL
        handy = 1,
        building_block = 1,
        material_glass = 1
    },
    _mcl_blast_resistance = 0.3,
    _mcl_hardness = 0.3,
    sounds = Everness.node_sound_glass_defaults(),
})

Everness:register_node('everness:tinted_glass_red', {
    description = S('Tinted Glass Red'),
    drawtype = 'glasslike_framed_optional',
    tiles = { 'everness_tinted_glass_base.png^[colorize:#3A0907:122', 'everness_tinted_glass_detail.png^[colorize:#3A0907:122' },
    use_texture_alpha = 'blend', -- 'clip' needed for stairs API
    -- paramtype = 'light',
    is_ground_content = false,
    sunlight_propagates = false,
    sounds = Everness.node_sound_glass_defaults(),
    groups = {
        -- MTG
        cracky = 3,
        oddly_breakable_by_hand = 3,
        glass = 1,
        -- MCL
        handy = 1,
        building_block = 1,
        material_glass = 1
    },
    _mcl_blast_resistance = 0.3,
    _mcl_hardness = 0.3,
})

minetest.register_lbm({
    label = 'everness:bamboo',
    name = 'everness:bamboo',
    nodenames = 'group:bamboo',
    action = function(pos, node)
        Everness:tick_bamboo_again(pos)
    end,
})

minetest.register_lbm({
    label = 'everness:sulfur_stone',
    name = 'everness:sulfur_stone',
    nodenames = 'everness:sulfur_stone',
    run_at_every_load = true,
    action = function(pos, node)
        Everness:tick_sulfur_stone(pos)
    end,
})

Everness:register_node('everness:pyrite_lantern', {
    description = S('Pyrite Lantern'),
    drawtype = 'glasslike',
    tiles = { 'everness_pyrite_lantern.png' },
    paramtype = 'light',
    sunlight_propagates = true,
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        oddly_breakable_by_hand = 3,
        lantern = 1,
        -- MCL
        handy = 1,
        building_block = 1,
        material_glass = 1
    },
    _mcl_blast_resistance = 0.3,
    _mcl_hardness = 0.3,
    sounds = Everness.node_sound_glass_defaults(),
    light_source = 12,
})

Everness:register_node('everness:pyrite_glass', {
    description = S('Pyrite Glass'),
    drawtype = 'glasslike_framed_optional',
    tiles = { 'everness_pyrite_glass.png' },
    use_texture_alpha = 'clip',
    paramtype = 'light',
    sunlight_propagates = true,
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        oddly_breakable_by_hand = 3,
        glass = 1,
        -- MCL
        handy = 1,
        building_block = 1,
        material_glass = 1
    },
    _mcl_blast_resistance = 0.3,
    _mcl_hardness = 0.3,
    sounds = Everness.node_sound_glass_defaults(),
})

Everness:register_node('everness:lumabus_vine_lantern', {
    description = S('Lumabus Vine Lantern'),
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
        cracky = 3,
        oddly_breakable_by_hand = 3,
        lantern = 1,
        -- MCL
        handy = 1,
        building_block = 1,
        material_glass = 1
    },
    _mcl_blast_resistance = 0.3,
    _mcl_hardness = 0.3,
    sounds = Everness.node_sound_glass_defaults(),
    light_source = 7,
    paramtype2 = 'wallmounted',
    selection_box = {
        type = 'fixed',
        fixed = { -1 / 2 + 3 / 16, -1 / 2, -1 / 2 + 3 / 16, 1 / 2 - 3 / 16, 1 / 2 - 6 / 16, 1 / 2 - 3 / 16 }
    },
})

Everness:register_node('everness:eye_vine_lantern', {
    description = S('Eye Vine Lantern'),
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
        cracky = 3,
        oddly_breakable_by_hand = 3,
        lantern = 1,
        -- MCL
        handy = 1,
        building_block = 1,
        material_glass = 1
    },
    _mcl_blast_resistance = 0.3,
    _mcl_hardness = 0.3,
    sounds = Everness.node_sound_leaves_defaults(),
    light_source = 7,
    paramtype2 = 'facedir',
    on_place = minetest.rotate_node,
})

Everness:register_node('everness:cursed_pumpkin_lantern', {
    description = S('Cursed Pumpkin Lantern'),
    short_description = S('Cursed Pumpkin Lantern'),
    tiles = {
        'everness_cursed_pumpkin_top.png',
        'everness_cursed_pumpkin_bottom.png',
        'everness_cursed_pumpkin_side.png',
        'everness_cursed_pumpkin_side.png',
        'everness_cursed_pumpkin_side.png',
        'everness_cursed_pumpkin_front.png'
    },
    paramtype = 'light',
    paramtype2 = 'facedir',
    sounds = Everness.node_sound_wood_defaults(),
    is_ground_content = false,
    light_source = 12,
    groups = {
        -- MTG
        snappy = 3,
        lantern = 1,
        fall_damage_add_percent = -30,
        -- MCL
        handy = 1,
        building_block = 1,
        material_glass = 1,
        -- ALL
        flammable = 4,
    },
    _mcl_blast_resistance = 0.3,
    _mcl_hardness = 0.3,
})

Everness:register_node('everness:floating_crystal', {
    description = S('Floating Crystal'),
    drawtype = 'plantlike',
    tiles = {
        {
            name = 'everness_floating_crystal_animated.png',
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 3
            },
        }
    },
    waving = 3,
    paramtype = 'light',
    sunlight_propagates = true,
    buildable_to = true,
    walkable = false,
    groups = {
        -- MTG
        snappy = 3,
        not_in_creative_inventory = 1,
        -- MLC
        handy = 1,
        building_block = 1,
        material_glass = 1,
    },
    _mcl_blast_resistance = 0.3,
    _mcl_hardness = 0.3,
    selection_box = {
        type = 'fixed',
        fixed = { -0.25, -0.4, -0.25, 0.25, 0.4, 0.25 },
    },
    drop = '',
    sounds = Everness.node_sound_thin_glass_defaults(),
    on_rotate = function()
        return false
    end,
    light_source = 12,
    on_timer = function(pos, elapsed)
        minetest.remove_node(pos)
    end,
    on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        local meta = minetest.get_meta(pos)

        if meta:get_int('activated') == 1 then
            return itemstack
        end

        meta:set_int('activated', 1)

        local position = { x = pos.x, y = pos.y, z = pos.z }
        local position_prev = { x = pos.x, y = pos.y, z = pos.z }

        for i = 1, math.random(2, 6), 1 do
            local positions = minetest.find_nodes_in_area(
                { x = position.x - 3, y = position.y - 1, z = position.z - 3 },
                { x = position.x + 3, y = position.y + 1, z = position.z + 3 },
                { 'air' }
            )

            local temp_pos

            while not temp_pos or vector.distance(position_prev, temp_pos) < 2 do
                temp_pos = positions[math.random(1, #positions)]
            end

            position_prev = position
            position = temp_pos

            minetest.after(i - 1, function(v_position, v_position_prev)
                if minetest.has_feature({ dynamic_add_media_table = true, particlespawner_tweenable = true }) then
                    minetest.add_particlespawner({
                        amount = 50,
                        time = 1,
                        size = {
                            min = 0.5,
                            max = 1,
                        },
                        exptime = 2,
                        pos = v_position_prev,
                        texture = {
                            name = 'everness_particle.png^[colorize:#FFEE83:255',
                            alpha_tween = {
                                1, 0.5,
                                style = 'fwd',
                                reps = 1
                            },
                            scale_tween = {
                                1, 0.5,
                                style = 'fwd',
                                reps = 1
                            }
                        },
                        radius = { min = 0.2, max = 0.4 },
                        attract = {
                            kind = 'point',
                            strength = 1,
                            origin = v_position,
                        },
                        glow = 12
                    })
                end

                minetest.after(1, function(v_position2, v_position_prev2)
                    minetest.set_node(v_position2, { name = 'everness:floating_crystal' })
                    minetest.get_node_timer(v_position2):start(math.random(85, 95))
                end, v_position, v_position_prev)
            end, position, position_prev)
        end

        return itemstack
    end
})

Everness:register_node('everness:coral_forest_deep_ocean_lantern', {
    description = S('Coral Forest Deep Ocean Lantern'),
    tiles = {
        { name = 'everness_coral_forest_deep_ocean_lantern_top.png' },
        { name = 'everness_coral_forest_deep_ocean_lantern_bottom.png' },
        {
            name = 'everness_coral_forest_deep_ocean_lantern_animated.png',
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 2,
            },
        },
    },
    sunlight_propagates = true,
    is_ground_content = false,
    sounds = Everness.node_sound_glass_defaults(),
    groups = {
        -- MTG
        cracky = 3,
        oddly_breakable_by_hand = 3,
        lantern = 1,
        -- MCL
        handy = 1,
        building_block = 1,
        material_glass = 1,
    },
    _mcl_blast_resistance = 0.3,
    _mcl_hardness = 0.3,
    paramtype = 'light',
    light_source = 14,
})
