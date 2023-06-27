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

minetest.register_lbm({
    label = 'Everness Loot Chests',
    name = 'everness:loot_chests_marker_replace',
    nodenames = {
        'everness:japanese_shrine_lootchest_marker',
        'everness:jungle_temple_lootchest_marker',
        'everness:haunted_house_lootchest_marker',
        'everness:quartz_temple_lootchest_marker',
        'everness:forsaken_desert_temple_marker',
        'everness:forsaken_desert_temple_2_marker',
        'everness:coral_forest_deep_ocean_house_marker',
        'everness:cursed_lands_deep_ocean_skull_marker',
        'everness:frosted_icesheet_igloo_marker',
        'everness:crystal_forest_deep_ocean_ruins_marker',
    },
    run_at_every_load = true,
    action = function(pos, node)
        minetest.set_node(pos, { name = 'everness:chest', param2 = minetest.get_node(pos).param2 })

        local rand = PcgRandom(pos.x * pos.y * pos.z)
        local inv = minetest.get_inventory({ type = 'node', pos = pos })

        for index, value in ipairs(inv:get_list('main')) do
            if node.name == 'everness:japanese_shrine_lootchest_marker' then
                --
                -- Japanese Shrine
                --
                local item_def = Everness.loot_chest.default[rand:next(1, #Everness.loot_chest.default)]

                if not minetest.registered_items[item_def.name] then
                    return
                end

                if rand:next(0, 100) <= item_def.chance then
                    local stack = ItemStack(item_def.name)

                    if minetest.registered_tools[item_def.name] then
                        stack:set_wear(rand:next(1, 65535))
                    else
                        stack:set_count(rand:next(1, item_def.max_count))
                    end

                    inv:set_stack('main', index, stack)
                end
            elseif node.name == 'everness:jungle_temple_lootchest_marker' then
                --
                -- Jungle Temple
                --
                local item_def = Everness.loot_chest.default[rand:next(1, #Everness.loot_chest.default)]

                if not minetest.registered_items[item_def.name] then
                    return
                end

                if rand:next(0, 100) <= item_def.chance then
                    local stack = ItemStack(item_def.name)

                    if minetest.registered_tools[item_def.name] then
                        stack:set_wear(rand:next(1, 65535))
                    else
                        stack:set_count(rand:next(1, item_def.max_count))
                    end

                    inv:set_stack('main', index, stack)
                end
            elseif node.name == 'everness:haunted_house_lootchest_marker' then
                --
                -- Haunted House
                --
                local item_def = Everness.loot_chest.default[rand:next(1, #Everness.loot_chest.default)]

                if not minetest.registered_items[item_def.name] then
                    return
                end

                if rand:next(0, 100) <= item_def.chance then
                    local stack = ItemStack(item_def.name)

                    if minetest.registered_tools[item_def.name] then
                        stack:set_wear(rand:next(1, 65535))
                    else
                        stack:set_count(rand:next(1, item_def.max_count))
                    end

                    inv:set_stack('main', index, stack)
                end
            elseif node.name == 'everness:quartz_temple_lootchest_marker' then
                --
                -- Quartz Temple
                --
                local item_def = Everness.loot_chest.default[rand:next(1, #Everness.loot_chest.default)]

                if not minetest.registered_items[item_def.name] then
                    return
                end

                if rand:next(0, 100) <= item_def.chance then
                    local stack = ItemStack(item_def.name)

                    if minetest.registered_tools[item_def.name] then
                        stack:set_wear(rand:next(1, 65535))
                    else
                        stack:set_count(rand:next(1, item_def.max_count))
                    end

                    inv:set_stack('main', index, stack)
                end
            elseif node.name == 'everness:forsaken_desert_temple_marker' then
                --
                -- Forsaken Desert Temple
                --
                local item_def = Everness.loot_chest.default[rand:next(1, #Everness.loot_chest.default)]

                if not minetest.registered_items[item_def.name] then
                    return
                end

                if rand:next(0, 100) <= item_def.chance then
                    local stack = ItemStack(item_def.name)

                    if minetest.registered_tools[item_def.name] then
                        stack:set_wear(rand:next(1, 65535))
                    else
                        stack:set_count(rand:next(1, item_def.max_count))
                    end

                    inv:set_stack('main', index, stack)
                end
            elseif node.name == 'everness:forsaken_desert_temple_2_marker' then
                --
                -- Forsaken Desert Temple 2 (under)
                --
                local item_def = Everness.loot_chest.default[rand:next(1, #Everness.loot_chest.default)]

                if not minetest.registered_items[item_def.name] then
                    return
                end

                if rand:next(0, 100) <= item_def.chance then
                    local stack = ItemStack(item_def.name)

                    if minetest.registered_tools[item_def.name] then
                        stack:set_wear(rand:next(1, 65535))
                    else
                        stack:set_count(rand:next(1, item_def.max_count))
                    end

                    inv:set_stack('main', index, stack)
                end
            elseif node.name == 'everness:coral_forest_deep_ocean_house_marker' then
                --
                -- Deep Ocean House
                --
                local item_def = Everness.loot_chest.default[rand:next(1, #Everness.loot_chest.default)]

                if not minetest.registered_items[item_def.name] then
                    return
                end

                if rand:next(0, 100) <= item_def.chance then
                    local stack = ItemStack(item_def.name)

                    if minetest.registered_tools[item_def.name] then
                        stack:set_wear(rand:next(1, 65535))
                    else
                        stack:set_count(rand:next(1, item_def.max_count))
                    end

                    inv:set_stack('main', index, stack)
                end
            elseif node.name == 'everness:cursed_lands_deep_ocean_skull_marker' then
                --
                -- Deep Ocean Skull
                --
                local item_def = Everness.loot_chest.default[rand:next(1, #Everness.loot_chest.default)]

                if not minetest.registered_items[item_def.name] then
                    return
                end

                if rand:next(0, 100) <= item_def.chance then
                    local stack = ItemStack(item_def.name)

                    if minetest.registered_tools[item_def.name] then
                        stack:set_wear(rand:next(1, 65535))
                    else
                        stack:set_count(rand:next(1, item_def.max_count))
                    end

                    inv:set_stack('main', index, stack)
                end
            elseif node.name == 'everness:frosted_icesheet_igloo_marker' then
                --
                -- Igloo
                --
                local item_def = Everness.loot_chest.default[rand:next(1, #Everness.loot_chest.default)]

                if not minetest.registered_items[item_def.name] then
                    return
                end

                if rand:next(0, 100) <= item_def.chance then
                    local stack = ItemStack(item_def.name)

                    if minetest.registered_tools[item_def.name] then
                        stack:set_wear(rand:next(1, 65535))
                    else
                        stack:set_count(rand:next(1, item_def.max_count))
                    end

                    inv:set_stack('main', index, stack)
                end
            elseif node.name == 'everness:crystal_forest_deep_ocean_ruins_marker' then
                --
                -- Crystal Forest Deep Ocean Ruins
                --
                local item_def = Everness.loot_chest.default[rand:next(1, #Everness.loot_chest.default)]

                if not minetest.registered_items[item_def.name] then
                    return
                end

                if rand:next(0, 100) <= item_def.chance then
                    local stack = ItemStack(item_def.name)

                    if minetest.registered_tools[item_def.name] then
                        stack:set_wear(rand:next(1, 65535))
                    else
                        stack:set_count(rand:next(1, item_def.max_count))
                    end

                    inv:set_stack('main', index, stack)
                end
            end
        end

        minetest.log('action', '[Everness] Loot chests inventory populated at ' .. pos:to_string())
    end,
})
