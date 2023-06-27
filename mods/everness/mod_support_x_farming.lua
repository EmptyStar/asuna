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
-- Bonemeal Trees
--

x_farming.x_bonemeal:register_tree_defs({
    {
        -- sapling name
        name = 'everness:coral_tree_sapling',
        -- 1 out of `chance`, e.g. 2 = 50% chance
        chance = 3,
        -- grow tree from sapling
        grow_tree = function(pos)
            if not x_farming.x_bonemeal.is_on_soil(pos) then
                return false
            end

            Everness.grow_coral_tree(pos)

            return true
        end
    },
    {
        -- sapling name
        name = 'everness:coral_tree_bioluminescent_sapling',
        -- 1 out of `chance`, e.g. 2 = 50% chance
        chance = 3,
        -- grow tree from sapling
        grow_tree = function(pos)
            if not x_farming.x_bonemeal.is_on_soil(pos) then
                return false
            end

            Everness.coral_tree_bioluminescent(pos)

            return true
        end
    },
    {
        -- sapling name
        name = 'everness:crystal_bush_sapling',
        -- 1 out of `chance`, e.g. 2 = 50% chance
        chance = 3,
        -- grow tree from sapling
        grow_tree = function(pos)
            if not x_farming.x_bonemeal.is_on_soil(pos) then
                return false
            end

            Everness.grow_crystal_bush(pos)

            return true
        end
    },
    {
        -- sapling name
        name = 'everness:cursed_bush_sapling',
        -- 1 out of `chance`, e.g. 2 = 50% chance
        chance = 3,
        -- grow tree from sapling
        grow_tree = function(pos)
            if not x_farming.x_bonemeal.is_on_soil(pos) then
                return false
            end

            Everness.grow_cursed_bush(pos)

            return true
        end
    },
    {
        -- sapling name
        name = 'everness:baobab_sapling',
        -- 1 out of `chance`, e.g. 2 = 50% chance
        chance = 3,
        -- grow tree from sapling
        grow_tree = function(pos)
            if not x_farming.x_bonemeal.is_on_soil(pos) then
                return false
            end

            Everness.grow_baobab_tree(pos)

            return true
        end
    },
    {
        -- sapling name
        name = 'everness:dry_tree_sapling',
        -- 1 out of `chance`, e.g. 2 = 50% chance
        chance = 3,
        -- grow tree from sapling
        grow_tree = function(pos)
            if not x_farming.x_bonemeal.is_on_soil(pos) then
                return false
            end

            Everness.grow_dry_tree(pos)

            return true
        end
    },
    {
        -- sapling name
        name = 'everness:willow_tree_sapling',
        -- 1 out of `chance`, e.g. 2 = 50% chance
        chance = 3,
        -- grow tree from sapling
        grow_tree = function(pos)
            if not x_farming.x_bonemeal.is_on_soil(pos) then
                return false
            end

            Everness.grow_willow_tree(pos)

            return true
        end
    },
    {
        -- sapling name
        name = 'everness:sequoia_tree_sapling',
        -- 1 out of `chance`, e.g. 2 = 50% chance
        chance = 3,
        -- grow tree from sapling
        grow_tree = function(pos)
            if not x_farming.x_bonemeal.is_on_soil(pos) then
                return false
            end

            Everness.grow_sequoia_tree(pos)

            return true
        end
    },
    {
        -- sapling name
        name = 'everness:crystal_tree_sapling',
        -- 1 out of `chance`, e.g. 2 = 50% chance
        chance = 3,
        -- grow tree from sapling
        grow_tree = function(pos)
            if not x_farming.x_bonemeal.is_on_soil(pos) then
                return false
            end

            Everness.grow_crystal_tree(pos)

            return true
        end
    },
    {
        -- sapling name
        name = 'everness:crystal_tree_large_sapling',
        -- 1 out of `chance`, e.g. 2 = 50% chance
        chance = 3,
        -- grow tree from sapling
        grow_tree = function(pos)
            if not x_farming.x_bonemeal.is_on_soil(pos) then
                return false
            end

            Everness.grow_crystal_large_tree(pos)

            return true
        end
    },
    {
        -- sapling name
        name = 'everness:cursed_dream_tree_sapling',
        -- 1 out of `chance`, e.g. 2 = 50% chance
        chance = 3,
        -- grow tree from sapling
        grow_tree = function(pos)
            if not x_farming.x_bonemeal.is_on_soil(pos) then
                return false
            end

            Everness.grow_cursed_dream_tree(pos)

            return true
        end
    },
    {
        -- sapling name
        name = 'everness:mese_tree_sapling',
        -- 1 out of `chance`, e.g. 2 = 50% chance
        chance = 4,
        -- grow tree from sapling
        grow_tree = function(pos)
            if not x_farming.x_bonemeal.is_on_soil(pos) then
                return false
            end

            Everness.grow_mese_tree(pos)

            return true
        end
    },
})

--
-- Recipes
--

minetest.register_craft({
    output = 'x_farming:bonemeal 4',
    recipe = {
        { 'everness:bone' }
    }
})
