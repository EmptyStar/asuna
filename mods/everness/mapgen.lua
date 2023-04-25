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

--
-- Register ores
--

-- Scatter ores

-- Pyrite

minetest.register_ore({
    ore_type = 'scatter',
    ore = 'everness:stone_with_pyrite',
    wherein = 'default:stone',
    clust_scarcity = 13 * 13 * 13,
    clust_num_ores = 5,
    clust_size = 3,
    y_max = 31000,
    y_min = 1025,
})

minetest.register_ore({
    ore_type = 'scatter',
    ore = 'everness:stone_with_pyrite',
    wherein = 'default:stone',
    clust_scarcity = 15 * 15 * 15,
    clust_num_ores = 3,
    clust_size = 2,
    y_max = -256,
    y_min = -511,
})

minetest.register_ore({
    ore_type = 'scatter',
    ore = 'everness:stone_with_pyrite',
    wherein = 'default:stone',
    clust_scarcity = 13 * 13 * 13,
    clust_num_ores = 5,
    clust_size = 3,
    y_max = -512,
    y_min = -31000,
})

-- Quartz

minetest.register_ore({
    ore_type = 'scatter',
    ore = 'everness:quartz_ore',
    wherein = { 'default:stone' },
    clust_scarcity = 10 * 10 * 10,
    clust_num_ores = 6,
    clust_size = 5,
    y_max = -5,
    y_min = -31000,
})

--
-- Decorations
--

local all_biomes_mese_tree_place_on = {
    'everness:coral_desert_stone_with_moss',
    'everness:coral_sand',
    'everness:crystal_moss_block',
    'everness:crystal_sand',
    'everness:cursed_dirt',
    'everness:cursed_sand',
    'everness:cursed_stone',
    'everness:dirt_with_coral_grass',
    'everness:dirt_with_crystal_grass',
    'everness:dirt_with_cursed_grass',
    'everness:dirt_with_grass_1',
    'everness:dry_dirt',
    'everness:dry_dirt_with_dry_grass',
    'everness:forsaken_desert_brick',
    'everness:forsaken_desert_chiseled_stone',
    'everness:forsaken_desert_engraved_stone',
    'everness:forsaken_desert_sand',
    'everness:forsaken_tundra_beach_sand',
    'everness:forsaken_tundra_dirt',
    'everness:forsaken_tundra_dirt_with_grass',
    'everness:frosted_ice',
    'everness:frosted_ice_translucent',
    'everness:frosted_snowblock',
    'everness:sulfur_stone',
    'everness:volcanic_sulfur'
}

if minetest.get_modpath('default') then
    table.insert_all(all_biomes_mese_tree_place_on, {
        'default:desert_sand',
        'default:dirt',
        'default:dirt_with_coniferous_litter',
        'default:dirt_with_grass',
        'default:dirt_with_rainforest_litter',
        'default:dirt_with_snow',
        'default:dry_dirt',
        'default:dry_dirt_with_dry_grass',
        'default:gravel',
        'default:permafrost_with_moss',
        'default:permafrost_with_stones',
        'default:sand',
        'default:silver_sand',
    })
end

if minetest.get_modpath('asuna_core') then
    for name,def in pairs(asuna.biomes) do
        if def.nodes[1] ~= 'default:stone' then
            table.insert(all_biomes_mese_tree_place_on,def.nodes[1])
        end
    end
end

--[[minetest.register_decoration({
    name = 'everness:all_biomes_mese_tree',
    deco_type = 'schematic',
    place_on = all_biomes_mese_tree_place_on,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    y_max = 250,
    y_min = 80,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_mese_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})]]

--[[minetest.register_decoration({
    name = 'everness:all_biomes_mese_tree_2',
    deco_type = 'schematic',
    place_on = all_biomes_mese_tree_place_on,
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    y_max = 31000,
    y_min = 80,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_mese_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})]]

minetest.register_decoration({
    name = 'everness:all_biomes_mese_tree_2',
    deco_type = 'schematic',
    place_on = all_biomes_mese_tree_place_on,
    sidelen = 8,
    noise_params = {
        offset = -0.00575,
        scale = 0.0087125,
        spread = { x = 5, y = 5, z = 5 },
        seed = 137,
        octaves = 2,
        persist = 0.675,
        lacunarity = 1.36,
    },
    --[[noise_params = {
        offset = -0.00525, -- -0.00425
        scale = 0.0075, -- 0.0075
        spread = { x = 10, y = 10, z = 10 }, -- 10
        seed = 137,
        octaves = 2,
        persist = 0.9, -- 0.7
        lacunarity = 1.9,
    },]]
    y_max = 31000,
    y_min = 80,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_mese_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random'
})