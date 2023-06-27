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
-- Convert dirt to something that fits the environment
--

local grass_covered_mapping = {
    ['everness:coral_dirt'] = { 'everness:dirt_with_coral_grass' },
    ['everness:cursed_dirt'] = { 'everness:dirt_with_cursed_grass' },
    ['everness:crystal_dirt'] = { 'everness:dirt_with_crystal_grass' },
    ['everness:dirt_1'] = {
        'everness:dirt_with_grass_1',
        'everness:dirt_with_grass_extras_1',
        'everness:dirt_with_grass_extras_2',
    },
    ['everness:dry_dirt'] = { 'everness:dry_dirt_with_dry_grass' }
}

local grass_covered_mapping_under = {
    ['everness:coral_desert_stone'] = { 'everness:coral_desert_stone_with_moss' },
    ['everness:soul_sandstone'] = { 'everness:soul_sandstone_veined' },
    ['everness:crystal_cave_dirt'] = { 'everness:crystal_cave_dirt_with_moss' },
    ['everness:mold_cobble'] = { 'everness:mold_stone_with_moss' },
}

-- Spread grass on dirt

minetest.register_abm({
    label = 'Everness Grass spread',
    nodenames = {
        'everness:coral_dirt',
        'everness:cursed_dirt',
        'everness:crystal_dirt',
        'everness:dirt_1',
        'everness:dry_dirt',
    },
    neighbors = {
        'air',
        'group:coral_grass',
        'group:cursed_grass',
        'group:crystal_grass',
        'group:bamboo_grass',
        'group:everness_dry_grass'
    },
    interval = 6,
    chance = 50,
    catch_up = false,
    action = function(pos, node)
        -- Check for darkness: night, shadow or under a light-blocking node
        -- Returns if ignore above
        local above = { x = pos.x, y = pos.y + 1, z = pos.z }
        if (minetest.get_node_light(above) or 0) < 13 then
            return
        end

        -- Look for spreading dirt-type neighbours
        local p2 = minetest.find_node_near(pos, 1, 'group:everness_spreading_dirt_type')

        if p2 then
            local n3_def = grass_covered_mapping[node.name]

            if not n3_def then
                return
            end

            local n3_name = n3_def[1]

            if #n3_def > 1 then
                n3_name = n3_def[math.random(1, #n3_def)]
            end

            minetest.set_node(pos, { name = n3_name })
            return
        end

        -- Else, any seeding nodes on top?
        local name = minetest.get_node(above).name

        if minetest.get_item_group(name, 'coral_grass') ~= 0 and node.name == 'everness:coral_dirt' then
            minetest.set_node(pos, { name = 'everness:dirt_with_coral_grass' })
        elseif minetest.get_item_group(name, 'cursed_grass') ~= 0 and node.name == 'everness:cursed_dirt' then
            minetest.set_node(pos, { name = 'everness:dirt_with_cursed_grass' })
        elseif minetest.get_item_group(name, 'crystal_grass') ~= 0 and node.name == 'everness:crystal_dirt' then
            minetest.set_node(pos, { name = 'everness:dirt_with_crystal_grass' })
        elseif minetest.get_item_group(name, 'bamboo_grass') ~= 0 and node.name == 'everness:dirt_1' then
            local bamboo_grass_covered_types = {
                'everness:dirt_with_grass_1',
                'everness:dirt_with_grass_extras_1',
                'everness:dirt_with_grass_extras_2'
            }

            minetest.set_node(pos, { name = bamboo_grass_covered_types[math.random(1, #bamboo_grass_covered_types)] })
        elseif minetest.get_item_group(name, 'everness_dry_grass') ~= 0 and node.name == 'everness:dry_dirt' then
            minetest.set_node(pos, { name = 'everness:dry_dirt_with_dry_grass' })
        end
    end
})

-- Spread mold/moss on stone/dirt - under

minetest.register_abm({
    label = 'Everness Grass spread under',
    nodenames = {
        'everness:coral_desert_stone',
        'everness:soul_sandstone',
        'everness:crystal_cave_dirt',
        'everness:mold_cobble',
    },
    neighbors = {
        'air',
        'group:coral_grass_under',
        'group:cursed_grass_under',
        'group:crystal_grass_under',
        'group:forsaken_tundra_grass_under',
    },
    interval = 6,
    chance = 50,
    catch_up = false,
    action = function(pos, node)
        -- Check for darkness: night, shadow or under a light-blocking node
        -- Returns if ignore above
        local above = { x = pos.x, y = pos.y + 1, z = pos.z }
        if (minetest.get_node_light(above) or 0) < 13 then
            return
        end

        -- Look for spreading dirt-type neighbours
        local p2 = minetest.find_node_near(pos, 1, 'group:everness_spreading_dirt_type_under')

        if p2 then
            local n3_def = grass_covered_mapping_under[node.name]

            if not n3_def then
                return
            end

            local n3_name = n3_def[1]

            if #n3_def > 1 then
                n3_name = n3_def[math.random(1, #n3_def)]
            end

            minetest.set_node(pos, {name = n3_name})
            return
        end

        -- Else, any seeding nodes on top?
        local name = minetest.get_node(above).name

        if minetest.get_item_group(name, 'coral_grass_under') ~= 0 and node.name == 'everness:coral_desert_stone' then
            minetest.set_node(pos, { name = 'everness:coral_desert_stone_with_moss' })
        elseif minetest.get_item_group(name, 'cursed_grass_under') ~= 0 and node.name == 'everness:soul_sandstone' then
            minetest.set_node(pos, { name = 'everness:soul_sandstone_veined' })
        elseif minetest.get_item_group(name, 'crystal_grass_under') ~= 0 and node.name == 'everness:crystal_cave_dirt' then
            minetest.set_node(pos, { name = 'everness:crystal_cave_dirt_with_moss' })
        elseif minetest.get_item_group(name, 'forsaken_tundra_grass_under') ~= 0 and node.name == 'everness:mold_cobble' then
            minetest.set_node(pos, { name = 'everness:mold_stone_with_moss' })
        end
    end
})

--
-- Grass and dry grass removed in darkness
--

minetest.register_abm({
    label = 'Everness Grass covered',
    nodenames = {
        'group:everness_spreading_dirt_type',
        'group:everness_spreading_dirt_type_under',
    },
    interval = 8,
    chance = 50,
    catch_up = false,
    action = function(pos, node)
        local above = { x = pos.x, y = pos.y + 1, z = pos.z }
        local name = minetest.get_node(above).name
        local nodedef = minetest.registered_nodes[name]

        if name ~= 'ignore'
            and nodedef
            and not (
                (nodedef.sunlight_propagates or nodedef.paramtype == 'light')
                and nodedef.liquidtype == 'none'
            )
        then
            if node.name == 'everness:dirt_with_coral_grass' then
                minetest.set_node(pos, { name = 'everness:coral_dirt' })
            elseif node.name == 'everness:dirt_with_cursed_grass' then
                minetest.set_node(pos, { name = 'everness:cursed_dirt' })
            elseif node.name == 'everness:dirt_with_crystal_grass' then
                minetest.set_node(pos, { name = 'everness:crystal_dirt' })
            elseif node.name == 'everness:dirt_with_grass_1'
                or node.name == 'everness:dirt_with_grass_extras_1'
                or node.name == 'everness:dirt_with_grass_extras_2'
            then
                minetest.set_node(pos, { name = 'everness:dirt_1' })
            elseif node.name == 'everness:coral_desert_stone_with_moss' then
                minetest.set_node(pos, { name = 'everness:coral_desert_stone' })
            elseif node.name == 'everness:dry_dirt_with_dry_grass' then
                minetest.set_node(pos, { name = 'everness:dry_dirt' })
            elseif node.name == 'everness:soul_sandstone_veined' then
                minetest.set_node(pos, { name = 'everness:soul_sandstone' })
            elseif node.name == 'everness:crystal_cave_dirt_with_moss' then
                minetest.set_node(pos, { name = 'everness:crystal_cave_dirt' })
            elseif node.name == 'everness:mold_stone_with_moss' then
                minetest.set_node(pos, { name = 'everness:mold_cobble' })
            end
        end
    end
})

--
-- Leafdecay
--

Everness:register_leafdecay({
    trunks = {
        'everness:coral_tree',
        'everness:crystal_bush_stem',
        'everness:cursed_bush_stem',
        'everness:willow_tree',
        'everness:sequoia_tree',
        'everness:mese_tree',
    },
    leaves = {
        'everness:coral_leaves',
        'everness:crystal_bush_leaves',
        'everness:willow_leaves',
        'everness:sequoia_leaves',
        'everness:mese_leaves',
        'everness:mese_tree_fruit'
    },
    radius = 3
})

-- Baobab Tree
Everness:register_leafdecay({
    trunks = {
        'everness:baobab_tree',
        'everness:crystal_tree',
        'everness:dry_tree',
    },
    leaves = {
        'everness:baobab_leaves',
        'everness:baobab_fruit_renewable',
        'everness:crystal_leaves',
        'everness:dry_branches',
    },
    radius = 4,
})

--
-- Moss growth on cobble near water
--

local moss_correspondences = {
    ['everness:coral_desert_cobble'] = 'everness:coral_desert_mossy_cobble',
}

local moss_nodenames_correspondences = {
    'everness:coral_desert_cobble',
}

if minetest.get_modpath('default') then
    moss_correspondences['stairs:slab_coral_desert_cobble'] = 'stairs:slab_coral_desert_mossy_cobble'
    moss_correspondences['stairs:stair_coral_desert_cobble'] = 'stairs:stair_coral_desert_mossy_cobble'
    moss_correspondences['stairs:stair_inner_coral_desert_cobble'] = 'stairs:stair_inner_coral_desert_mossy_cobble'
    moss_correspondences['stairs:stair_outer_coral_desert_cobble'] = 'stairs:stair_outer_coral_desert_mossy_cobble'
    moss_correspondences['everness:coral_desert_cobble_wall'] = 'everness:coral_desert_mossy_cobble_wall'

    table.insert(moss_nodenames_correspondences, 'stairs:slab_coral_desert_cobble')
    table.insert(moss_nodenames_correspondences, 'stairs:stair_coral_desert_cobble')
    table.insert(moss_nodenames_correspondences, 'stairs:stair_inner_coral_desert_cobble')
    table.insert(moss_nodenames_correspondences, 'stairs:stair_outer_coral_desert_cobble')
    table.insert(moss_nodenames_correspondences, 'everness:coral_desert_cobble_wall')
end

minetest.register_abm({
    label = 'Everness Moss growth',
    nodenames = moss_nodenames_correspondences,
    neighbors = { 'group:water' },
    interval = 16,
    chance = 200,
    catch_up = false,
    action = function(pos, node)
        node.name = moss_correspondences[node.name]

        if node.name then
            minetest.set_node(pos, node)
        end
    end
})

--
-- Magma growth on cobble near lava
--

local magma_correspondences = {
    ['everness:volcanic_rock'] = 'everness:volcanic_rock_with_magma',
}

local magma_nodenames_correspondences = {
    'everness:volcanic_rock'
}

if minetest.get_modpath('default') then
    magma_correspondences['default:cobble'] = 'everness:magmacobble'
    magma_correspondences['stairs:slab_cobble'] = 'stairs:slab_magmacobble'
    magma_correspondences['stairs:stair_cobble'] = 'stairs:stair_magmacobble'
    magma_correspondences['stairs:stair_inner_cobble'] = 'stairs:stair_inner_magmacobble'
    magma_correspondences['stairs:stair_outer_cobble'] = 'stairs:stair_outer_magmacobble'
    magma_correspondences['walls:cobble'] = 'everness:magmacobble_wall'
    magma_correspondences['stairs:slab_volcanic_rock'] = 'stairs:slab_volcanic_rock_with_magma'
    magma_correspondences['stairs:stair_volcanic_rock'] = 'stairs:stair_volcanic_rock_with_magma'
    magma_correspondences['stairs:stair_inner_volcanic_rock'] = 'stairs:stair_inner_volcanic_rock_with_magma'
    magma_correspondences['stairs:stair_outer_volcanic_rock'] = 'stairs:stair_outer_volcanic_rock_with_magma'
    magma_correspondences['everness:volcanic_rock_wall'] = 'everness:volcanic_rock_with_magma_wall'

    table.insert(magma_nodenames_correspondences, 'default:cobble')
    table.insert(magma_nodenames_correspondences, 'stairs:slab_cobble')
    table.insert(magma_nodenames_correspondences, 'stairs:stair_cobble')
    table.insert(magma_nodenames_correspondences, 'stairs:stair_inner_cobble')
    table.insert(magma_nodenames_correspondences, 'stairs:stair_outer_cobble')
    table.insert(magma_nodenames_correspondences, 'walls:cobble')
    table.insert(magma_nodenames_correspondences, 'stairs:slab_volcanic_rock')
    table.insert(magma_nodenames_correspondences, 'stairs:stair_volcanic_rock')
    table.insert(magma_nodenames_correspondences, 'stairs:stair_inner_volcanic_rock')
    table.insert(magma_nodenames_correspondences, 'stairs:stair_outer_volcanic_rock')
    table.insert(magma_nodenames_correspondences, 'everness:volcanic_rock_wall')
end

minetest.register_abm({
    label = 'Everness Magma growth',
    nodenames = magma_nodenames_correspondences,
    neighbors = { 'group:lava' },
    interval = 16,
    chance = 200,
    catch_up = false,
    action = function(pos, node)
        node.name = magma_correspondences[node.name]

        if node.name then
            minetest.set_node(pos, node)
        end
    end
})

--
-- Falling leaves
--

minetest.register_abm({
    label = 'everness:falling_leaves',
    nodenames = { 'group:falling_leaves' },
    neighbors = { 'air' },
    interval = 16,
    chance = 16,
    catch_up = false,
    action = function(pos, node)
        if not minetest.settings:get_bool('enable_particles', true) then
            return
        end

        local air_below = minetest.find_nodes_in_area(pos, { x = pos.x, y = pos.y + 3, z = pos.z }, { 'air' })

        if #air_below < 3 then
            return
        end

        -- particles
        local particlespawner_def = {
            amount = 5,
            time = 1,
            minpos = { x = pos.x - 0.5, y = pos.y - 0.5, z = pos.z - 0.5 },
            maxpos = { x = pos.x + 0.5, y = pos.y - 0.5, z = pos.z + 0.5 },
            minvel = { x = -0.25, y = -0.25, z = -0.25 },
            maxvel = { x = 0.25, y = -0.5, z = 0.25 },
            minacc = { x = -0.25, y = -0.25, z = -0.25 },
            maxacc = { x = 0.25, y = -0.5, z = 0.25 },
            minexptime = 3,
            maxexptime = 6,
            minsize = 0.5,
            maxsize = 1.5,
            node = node
        }

        if minetest.has_feature({ dynamic_add_media_table = true, particlespawner_tweenable = true }) then
            -- new syntax, after v5.6.0
            particlespawner_def = {
                amount = 5,
                time = 1,
                size = {
                    min = 0.5,
                    max = 1.5,
                },
                exptime = {
                    min = 3,
                    max = 6
                },
                pos = {
                    min = vector.new({ x = pos.x - 0.5, y = pos.y - 0.5, z = pos.z - 0.5 }),
                    max = vector.new({ x = pos.x + 0.5, y = pos.y - 0.5, z = pos.z + 0.5 }),
                },
                vel = {
                    min = vector.new({ x = -0.25, y = -0.25, z = -0.25 }),
                    max = vector.new({ x = 0.25, y = -0.5, z = 0.25 })
                },
                acc = {
                    min = vector.new({ x = -0.25, y = -0.25, z = -0.25 }),
                    max = vector.new({ x = 0.25, y = -0.5, z = 0.25 })
                },
                node = {
                    name = node.name
                }
            }
        end

        minetest.add_particlespawner(particlespawner_def)
    end
})

--
-- Falling leaves - vines
--

minetest.register_abm({
    label = 'everness:falling_vines',
    nodenames = { 'group:falling_vines' },
    neighbors = { 'air' },
    interval = 16,
    chance = 16,
    catch_up = false,
    action = function(pos, node)
        if not minetest.settings:get_bool('enable_particles', true) then
            return
        end

        local air_around = minetest.find_nodes_in_area(
            { x = pos.x - 1, y = pos.y, z = pos.z - 1 },
            { x = pos.x + 1, y = pos.y, z = pos.z + 1 },
            { 'air' }
        )

        if #air_around < 3 then
            return
        end

        -- particles
        local particlespawner_def = {
            amount = 5,
            time = 1,
            minpos = { x = pos.x - 0.5, y = pos.y - 0.5, z = pos.z - 0.5 },
            maxpos = { x = pos.x + 0.5, y = pos.y - 0.5, z = pos.z + 0.5 },
            minvel = { x = -0.25, y = -0.25, z = -0.25 },
            maxvel = { x = 0.25, y = -0.5, z = 0.25 },
            minacc = { x = -0.25, y = -0.25, z = -0.25 },
            maxacc = { x = 0.25, y = -0.5, z = 0.25 },
            minexptime = 15,
            maxexptime = 30,
            minsize = 0.5,
            maxsize = 1.5,
            node = node,
            glow = 7
        }

        if minetest.has_feature({ dynamic_add_media_table = true, particlespawner_tweenable = true }) then
            -- new syntax, after v5.6.0
            particlespawner_def = {
                amount = 5,
                time = 1,
                size = {
                    min = 0.5,
                    max = 1.5,
                },
                exptime = {
                    min = 15,
                    max = 30
                },
                pos = {
                    min = vector.new(pos.x - 0.5, pos.y - 0.5, pos.z - 0.5),
                    max = vector.new(pos.x + 0.5, pos.y - 0.5, pos.z + 0.5),
                },
                vel = {
                    min = vector.new(-0.25, -0.15, -0.25),
                    max = vector.new(0.25, -0.25, 0.25)
                },
                acc = {
                    min = vector.new(-0.25, -0.05, -0.25),
                    max = vector.new(0.25, -0.1, 0.25)
                },
                node = {
                    name = node.name
                },
                glow = 7
            }
        end

        minetest.add_particlespawner(particlespawner_def)
    end
})

minetest.register_abm({
    label = 'Grow orange cactus',
    nodenames = {
        'everness:cactus_orange',
        'everness:cactus_blue'
    },
    neighbors = { 'group:sand', 'group:everness_sand' },
    interval = 12,
    chance = 83,
    action = function(...)
        Everness:grow_cactus(...)
    end
})

--
-- Bio Bubbles
--

minetest.register_abm({
    label = 'everness:bio_bubbles',
    nodenames = { 'group:bio_bubbles' },
    neighbors = { 'group:water' },
    interval = 16,
    chance = 2,
    catch_up = false,
    action = function(pos, node)
        if not minetest.settings:get_bool('enable_particles', true) then
            return
        end

        local water_above = minetest.find_nodes_in_area(pos, { x = pos.x, y = pos.y + 10, z = pos.z }, { 'group:water' })

        if #water_above < 10 then
            return
        end

        -- particles
        local particlespawner_def = {
            amount = 50,
            time = 10,
            minpos = vector.new({ x = pos.x - 0.1, y = pos.y + 0.6, z = pos.z - 0.1 }),
            maxpos = vector.new({ x = pos.x + 0.1, y = pos.y + 0.6, z = pos.z + 0.1 }),
            minvel = vector.new({ x = -0.1, y = 0.25, z = -0.1 }),
            maxvel = vector.new({ x = 0.1, y = 0.5, z = 0.1 }),
            minacc = vector.new({ x = -0.1, y = 0.25, z = -0.1 }),
            maxacc = vector.new({ x = 0.1, y = 0.5, z = 0.1 }),
            minexptime = 5,
            maxexptime = 7,
            minsize = 2,
            maxsize = 3.5,
            texture = 'everness_bubble.png',
            glow = 7
        }

        if minetest.has_feature({ dynamic_add_media_table = true, particlespawner_tweenable = true }) then
            -- new syntax, after v5.6.0
            particlespawner_def = {
                amount = 50,
                time = 10,
                size = {
                    min = 2,
                    max = 3.5,
                },
                exptime = {
                    min = 5,
                    max = 7
                },
                pos = {
                    min = vector.new({ x = pos.x - 0.1, y = pos.y + 0.6, z = pos.z - 0.1 }),
                    max = vector.new({ x = pos.x + 0.1, y = pos.y + 0.6, z = pos.z + 0.1 }),
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
                    name = 'everness_bubble.png',
                    alpha_tween = {
                        1, 0,
                        style = 'fwd',
                        reps = 1
                    },
                    scale_tween = {
                        0.5, 1,
                        style = 'fwd',
                        reps = 1
                    }
                },
                glow = 7
            }
        end

        minetest.add_particlespawner(particlespawner_def)
    end
})

--
-- Rising Souls
--

minetest.register_abm({
    label = 'everness:rising_souls',
    nodenames = { 'group:rising_souls' },
    neighbors = { 'group:water' },
    interval = 16,
    chance = 2,
    catch_up = false,
    action = function(pos, node)
        if not minetest.settings:get_bool('enable_particles', true) then
            return
        end

        local water_above = minetest.find_nodes_in_area(pos, { x = pos.x, y = pos.y + 10, z = pos.z }, { 'group:water' })

        if #water_above < 10 then
            return
        end

        -- particles
        local particlespawner_def = {
            amount = 17,
            time = 10,
            minpos = vector.new({ x = pos.x - 0.3, y = pos.y + 0.6, z = pos.z - 0.3 }),
            maxpos = vector.new({ x = pos.x + 0.3, y = pos.y + 0.6, z = pos.z + 0.3 }),
            minvel = vector.new({ x = -0.1, y = 0.25, z = -0.1 }),
            maxvel = vector.new({ x = 0.1, y = 0.5, z = 0.1 }),
            minacc = vector.new({ x = -0.1, y = 0.25, z = -0.1 }),
            maxacc = vector.new({ x = 0.1, y = 0.5, z = 0.1 }),
            minexptime = 4,
            maxexptime = 6,
            minsize = 4,
            maxsize = 6,
            texture = 'everness_rising_soul_particle.png',
            glow = 7
        }

        if minetest.has_feature({ dynamic_add_media_table = true, particlespawner_tweenable = true }) then
            -- new syntax, after v5.6.0
            particlespawner_def = {
                amount = 17,
                time = 10,
                size = {
                    min = 4,
                    max = 6,
                },
                exptime = {
                    min = 4,
                    max = 6
                },
                pos = {
                    min = vector.new({ x = pos.x - 0.3, y = pos.y + 0.6, z = pos.z - 0.3 }),
                    max = vector.new({ x = pos.x + 0.3, y = pos.y + 0.6, z = pos.z + 0.3 }),
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
                    name = 'everness_rising_soul_particle.png',
                    animation = {
                        type = 'vertical_frames',
                        aspect_w = 16,
                        aspect_h = 16,
                        length = 2,
                    },
                    alpha_tween = {
                        1, 0,
                        style = 'fwd',
                        reps = 1
                    },
                    scale_tween = {
                        0.5, 1,
                        style = 'fwd',
                        reps = 1
                    }
                },
                glow = 7
            }
        end

        minetest.add_particlespawner(particlespawner_def)
    end
})

--
-- Rising Crystals
--

minetest.register_abm({
    label = 'everness:rising_souls',
    nodenames = { 'group:rising_crystals' },
    neighbors = { 'group:water' },
    interval = 16,
    chance = 2,
    catch_up = false,
    action = function(pos, node)
        if not minetest.settings:get_bool('enable_particles', true) then
            return
        end

        local water_above = minetest.find_nodes_in_area(pos, { x = pos.x, y = pos.y + 10, z = pos.z }, { 'group:water' })

        if #water_above < 10 then
            return
        end

        -- particles
        local particlespawner_def = {
            amount = 17,
            time = 10,
            minpos = vector.new({ x = pos.x - 0.3, y = pos.y + 0.6, z = pos.z - 0.3 }),
            maxpos = vector.new({ x = pos.x + 0.3, y = pos.y + 0.6, z = pos.z + 0.3 }),
            minvel = vector.new({ x = -0.1, y = 0.25, z = -0.1 }),
            maxvel = vector.new({ x = 0.1, y = 0.5, z = 0.1 }),
            minacc = vector.new({ x = -0.1, y = 0.25, z = -0.1 }),
            maxacc = vector.new({ x = 0.1, y = 0.5, z = 0.1 }),
            minexptime = 4,
            maxexptime = 6,
            minsize = 4,
            maxsize = 6,
            texture = 'everness_rising_soul_particle.png',
            glow = 7
        }

        if minetest.has_feature({ dynamic_add_media_table = true, particlespawner_tweenable = true }) then
            -- new syntax, after v5.6.0
            particlespawner_def = {
                amount = 25,
                time = 10,
                size = {
                    min = 6,
                    max = 8,
                },
                exptime = {
                    min = 4,
                    max = 6
                },
                pos = {
                    min = vector.new({ x = pos.x - 0.3, y = pos.y + 0.6, z = pos.z - 0.3 }),
                    max = vector.new({ x = pos.x + 0.3, y = pos.y + 0.6, z = pos.z + 0.3 }),
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
                    name = 'everness_crystal_forest_deep_ocean_sand_bubbles.png',
                    animation = {
                        type = 'vertical_frames',
                        aspect_w = 16,
                        aspect_h = 16,
                        length = 1,
                    },
                    alpha_tween = {
                        1, 0.5,
                        style = 'fwd',
                        reps = 1
                    }
                },
                glow = 7
            }
        end

        minetest.add_particlespawner(particlespawner_def)
    end
})
