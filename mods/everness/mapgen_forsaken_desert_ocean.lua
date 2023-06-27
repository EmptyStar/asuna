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
-- Register biomes
--

local y_max = Everness.settings.biomes.everness_forsaken_desert_ocean.y_max
local y_min = Everness.settings.biomes.everness_forsaken_desert_ocean.y_min

-- Forsaken Desert Ocean

--[[minetest.register_biome({
    name = 'everness_forsaken_desert_ocean',
    node_top = 'everness:dry_ocean_dirt',
    depth_top = 1,
    node_stone = 'everness:forsaken_desert_stone',
    node_filler = 'everness:dry_ocean_dirt',
    depth_filler = 3,
    node_water_top = 'everness:dry_ocean_dirt',
    depth_water_top = 10,
    node_river_water = 'everness:dry_ocean_dirt',
    node_riverbed = 'everness:dry_ocean_dirt',
    depth_riverbed = 2,
    node_dungeon = 'everness:forsaken_desert_brick',
    node_dungeon_alt = 'everness:forsaken_desert_brick_red',
    node_dungeon_stair = 'stairs:stair_forsaken_desert_brick',
    y_max = y_max,
    y_min = y_min,
    heat_point = 100,
    humidity_point = 30,
})]]

--
-- Register decorations
--
