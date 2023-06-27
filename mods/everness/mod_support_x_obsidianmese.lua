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

local mod_start_time = minetest.get_us_time()

-- Bamboo Forest

local path_nodes_bamboo_forest = {
    ['everness:dirt_with_grass_1'] = {
        name = 'dirt_with_grass_1',
        mod_origin = 'everness',
        descritption = 'Dirt with Grass Path',
        drop = 'everness:dirt_1',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^(everness_grass_top.png^[mask:x_obsidianmese_path_overlay.png)',
            'x_obsidianmese_path_dirt_base.png',
            'x_obsidianmese_dirt_path_side.png'
        },
        sounds = Everness.node_sound_dirt_defaults()
    },
    ['everness:dirt_with_grass_extras_1'] = {
        name = 'dirt_with_grass_extras_1',
        mod_origin = 'everness',
        descritption = 'Dirt with Grass Path',
        drop = 'everness:dirt_1',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^(everness_grass_top.png^[mask:x_obsidianmese_path_overlay.png)',
            'x_obsidianmese_path_dirt_base.png',
            'x_obsidianmese_dirt_path_side.png'
        },
        sounds = Everness.node_sound_dirt_defaults()
    },
    ['everness:dirt_with_grass_extras_2'] = {
        name = 'dirt_with_grass_extras_2',
        mod_origin = 'everness',
        descritption = 'Dirt with Grass Path',
        drop = 'everness:dirt_1',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^(everness_grass_top.png^[mask:x_obsidianmese_path_overlay.png)',
            'x_obsidianmese_path_dirt_base.png',
            'x_obsidianmese_dirt_path_side.png'
        },
        sounds = Everness.node_sound_dirt_defaults()
    },
    ['everness:dirt_1'] = {
        name = 'dirt_1',
        mod_origin = 'everness',
        descritption = 'Dirt Path',
        drop = 'everness:dirt_1',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^(everness_dirt.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png',
            'x_obsidianmese_dirt_path_side.png'
        },
        sounds = Everness.node_sound_dirt_defaults()
    }
}

local path_nodes_baobab_savanna = {
    ['everness:dry_dirt_with_dry_grass'] = {
        name = 'dry_dirt_with_dry_grass',
        mod_origin = 'everness',
        descritption = 'Dry Dirt with Dry Grass Path',
        drop = 'everness:dry_dirt',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#B88C5E:127^(everness_dry_grass_top.png^[mask:x_obsidianmese_path_overlay.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#B88C5E:127',
            'x_obsidianmese_dirt_path_side.png^[colorize:#B88C5E:127'
        },
        sounds = Everness.node_sound_dirt_defaults()
    },
    ['everness:dry_dirt'] = {
        name = 'dry_dirt',
        mod_origin = 'everness',
        descritption = 'Dry Dirt Path',
        drop = 'everness:dry_dirt',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#B88C5E:127^(everness_dry_dirt.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#B88C5E:127',
            'x_obsidianmese_dirt_path_side.png^[colorize:#B88C5E:127'
        },
        sounds = Everness.node_sound_dirt_defaults()
    }
}

-- Crystal Forest

local path_nodes_crystal_forest = {
    ['everness:dirt_with_crystal_grass'] = {
        name = 'dirt_with_crystal_grass',
        mod_origin = 'everness',
        descritption = 'Dirt with Crystal Grass Path',
        drop = 'everness:crystal_dirt',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#755069:127^(everness_crystal_grass.png^[mask:x_obsidianmese_path_overlay.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#755069:127',
            'x_obsidianmese_dirt_path_side.png^[colorize:#755069:127'
        },
        sounds = Everness.node_sound_dirt_defaults()
    },
    ['everness:crystal_dirt'] = {
        name = 'crystal_dirt',
        mod_origin = 'everness',
        descritption = 'Crystal Dirt Path',
        drop = 'everness:crystal_dirt',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#755069:127^(everness_crystal_dirt.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#755069:127',
            'x_obsidianmese_dirt_path_side.png^[colorize:#755069:127'
        },
        sounds = Everness.node_sound_dirt_defaults()
    },
}

local path_nodes_crystal_forest_dunes = {
    ['everness:crystal_sand'] = {
        name = 'crystal_sand',
        mod_origin = 'everness',
        descritption = 'Crystal Sand Path',
        drop = 'everness:crystal_sand',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#845D88:170^(everness_crystal_sand.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#845D88:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#845D88:170'
        },
        sounds = Everness.node_sound_sand_defaults()
    },
}

local path_nodes_crystal_forest_shore = {
    ['everness:crystal_sand'] = {
        name = 'crystal_sand',
        mod_origin = 'everness',
        descritption = 'Crystal Sand Path',
        drop = 'everness:crystal_sand',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#845D88:170^(everness_crystal_sand.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#845D88:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#845D88:170'
        },
        sounds = Everness.node_sound_sand_defaults()
    },
}

local path_nodes_crystal_forest_ocean = {
    ['everness:crystal_sand'] = {
        name = 'crystal_sand',
        mod_origin = 'everness',
        descritption = 'Crystal Sand Path',
        drop = 'everness:crystal_sand',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#845D88:170^(everness_crystal_sand.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#845D88:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#845D88:170'
        },
        sounds = Everness.node_sound_sand_defaults()
    },
}

local path_nodes_crystal_forest_under = {
    ['everness:crystal_cave_dirt_with_moss'] = {
        name = 'crystal_cave_dirt_with_moss',
        mod_origin = 'everness',
        descritption = 'Crystal Cave Dirt with Moss Path',
        drop = 'everness:crystal_cave_dirt',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#EEDDB2:127^(everness_crystal_cave_dirt_top.png^[mask:x_obsidianmese_path_overlay.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#EEDDB2:127',
            'x_obsidianmese_dirt_path_side.png^[colorize:#EEDDB2:127'
        },
        sounds = Everness.node_sound_dirt_defaults()
    },
    ['everness:crystal_cave_dirt'] = {
        name = 'crystal_cave_dirt',
        mod_origin = 'everness',
        descritption = 'Crystal Cave Dirt',
        drop = 'everness:crystal_cave_dirt',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#EEDDB2:127^(everness_crystal_cave_dirt.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#EEDDB2:127',
            'x_obsidianmese_dirt_path_side.png^[colorize:#EEDDB2:127'
        },
        sounds = Everness.node_sound_dirt_defaults()
    },
}

-- Forsaken Tundra

local path_nodes_forsaken_tundra = {
    ['everness:forsaken_tundra_dirt_with_grass'] = {
        name = 'forsaken_tundra_dirt_with_grass',
        mod_origin = 'everness',
        descritption = 'Forsaken Tundra Dirt with Grass Path',
        drop = 'everness:forsaken_tundra_dirt_with_grass',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#151611:170^(everness_forsaken_tundra_grass.png^[mask:x_obsidianmese_path_overlay.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#151611:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#151611:170'
        },
        sounds = Everness.node_sound_dirt_defaults()
    },
    ['everness:forsaken_tundra_dirt'] = {
        name = 'forsaken_tundra_dirt',
        mod_origin = 'everness',
        descritption = 'Forsaken Tundra Dirt Path',
        drop = 'everness:forsaken_tundra_dirt',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#151611:170^(everness_forsaken_tundra_dirt.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#151611:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#151611:170'
        },
        sounds = Everness.node_sound_dirt_defaults()
    },
    ['everness:forsaken_tundra_beach_sand'] = {
        name = 'forsaken_tundra_beach_sand',
        mod_origin = 'everness',
        descritption = 'Forsaken Tundra Beach Sand Path',
        drop = 'everness:forsaken_tundra_beach_sand',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#4C4341:170^(everness_forsaken_tundra_beach_sand.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#4C4341:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#4C4341:170'
        },
        sounds = Everness.node_sound_sand_defaults()
    },
}

local path_nodes_forsaken_tundra_beach = {
    ['everness:forsaken_tundra_beach_sand'] = {
        name = 'forsaken_tundra_beach_sand',
        mod_origin = 'everness',
        descritption = 'Forsaken Tundra Beach Sand Path',
        drop = 'everness:forsaken_tundra_beach_sand',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#4C4341:170^(everness_forsaken_tundra_beach_sand.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#4C4341:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#4C4341:170'
        },
        sounds = Everness.node_sound_sand_defaults()
    },
    ['everness:forsaken_tundra_beach_sand_with_shells'] = {
        name = 'forsaken_tundra_beach_sand_with_shells',
        mod_origin = 'everness',
        descritption = 'Forsaken Tundra Beach Sand with Shells',
        drop = 'everness:forsaken_tundra_beach_sand_with_shells',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#4C4341:170^(everness_forsaken_tundra_beach_sand_with_shells.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#4C4341:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#4C4341:170'
        },
        sounds = Everness.node_sound_sand_defaults()
    },
}

local path_nodes_forsaken_tundra_ocean = {
    ['everness:forsaken_tundra_beach_sand'] = {
        name = 'forsaken_tundra_beach_sand',
        mod_origin = 'everness',
        descritption = 'Forsaken Tundra Beach Sand Path',
        drop = 'everness:forsaken_tundra_beach_sand',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#4C4341:170^(everness_forsaken_tundra_beach_sand.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#4C4341:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#4C4341:170'
        },
        sounds = Everness.node_sound_sand_defaults()
    },
    ['everness:forsaken_tundra_beach_sand_with_shells'] = {
        name = 'forsaken_tundra_beach_sand_with_shells',
        mod_origin = 'everness',
        descritption = 'Forsaken Tundra Beach Sand with Shells',
        drop = 'everness:forsaken_tundra_beach_sand_with_shells',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#4C4341:170^(everness_forsaken_tundra_beach_sand_with_shells.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#4C4341:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#4C4341:170'
        },
        sounds = Everness.node_sound_sand_defaults()
    },
}

-- Forsaken Desert

local path_nodes_forsaken_desert = {
    ['everness:forsaken_desert_sand'] = {
        name = 'forsaken_desert_sand',
        mod_origin = 'everness',
        descritption = 'Forsaken Desert Sand Path',
        drop = 'everness:forsaken_desert_sand',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#D1906A:170^(everness_forsaken_desert_sand.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#D1906A:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#D1906A:170'
        },
        sounds = Everness.node_sound_sand_defaults()
    }
}

local path_nodes_forsaken_desert_ocean = {
    ['everness:dry_ocean_dirt'] = {
        name = 'dry_ocean_dirt',
        mod_origin = 'everness',
        descritption = 'Dry Ocean Dirt Path',
        drop = 'everness:dry_ocean_dirt',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#AB7D54:127^(everness_forsaken_desert_dry_ocean_dirt.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#AB7D54:127',
            'x_obsidianmese_dirt_path_side.png^[colorize:#AB7D54:127'
        },
        sounds = Everness.node_sound_dirt_defaults()
    }
}

local path_nodes_forsaken_desert_under = {
    ['everness:forsaken_desert_sand'] = {
        name = 'forsaken_desert_sand',
        mod_origin = 'everness',
        descritption = 'Forsaken Desert Sand Path',
        drop = 'everness:forsaken_desert_sand',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#D1906A:170^(everness_forsaken_desert_sand.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#D1906A:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#D1906A:170'
        },
        sounds = Everness.node_sound_sand_defaults()
    }
}

--  Cursed Lands

local path_nodes_cursed_lands_and_dunes_ocean = {
    ['everness:dirt_with_cursed_grass'] = {
        name = 'dirt_with_cursed_grass',
        mod_origin = 'everness',
        descritption = 'Dirt with Cursed Grass Path',
        drop = 'everness:cursed_dirt',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#696151:170^(everness_cursed_grass.png^[mask:x_obsidianmese_path_overlay.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#696151:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#696151:170'
        },
        sounds = Everness.node_sound_mud_defaults()
    },
    ['everness:cursed_dirt'] = {
        name = 'cursed_dirt',
        mod_origin = 'everness',
        descritption = 'Cursed Dirt Path',
        drop = 'everness:cursed_dirt',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#696151:170^(everness_cursed_dirt.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#696151:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#696151:170'
        },
        sounds = Everness.node_sound_mud_defaults()
    },
    ['everness:cursed_sand'] = {
        name = 'cursed_sand',
        mod_origin = 'everness',
        descritption = 'Cursed Sand Path',
        drop = 'everness:cursed_sand',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#856F58:170^(everness_cursed_sand.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#856F58:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#856F58:170'
        },
        sounds = Everness.node_sound_sand_defaults()
    },
}

-- Coral Forest

local path_nodes_coral_forest_and_dunes = {
    ['everness:dirt_with_coral_grass'] = {
        name = 'dirt_with_coral_grass',
        mod_origin = 'everness',
        descritption = 'Dirt with Coral Grass Path',
        drop = 'everness:coral_dirt',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#AA683F:127^(everness_coral_grass.png^[mask:x_obsidianmese_path_overlay.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#AA683F:127',
            'x_obsidianmese_dirt_path_side.png^[colorize:#AA683F:127'
        },
        sounds = Everness.node_sound_dirt_defaults()
    },
    ['everness:coral_dirt'] = {
        name = 'coral_dirt',
        mod_origin = 'everness',
        descritption = 'Coral Dirt Path',
        drop = 'everness:coral_dirt',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#AA683F:127^(everness_coral_dirt.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#AA683F:127',
            'x_obsidianmese_dirt_path_side.png^[colorize:#AA683F:127'
        },
        sounds = Everness.node_sound_dirt_defaults()
    },
    ['everness:coral_sand'] = {
        name = 'coral_sand',
        mod_origin = 'everness',
        descritption = 'Coral Sand Path',
        drop = 'everness:coral_sand',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#AB633D:170^(everness_coral_sand.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#AB633D:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#AB633D:170'
        },
        sounds = Everness.node_sound_sand_defaults()
    },
    ['everness:coral_white_sand'] = {
        name = 'coral_white_sand',
        mod_origin = 'everness',
        descritption = 'Coral White Sand Path',
        drop = 'everness:coral_white_sand',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#F9F4FB:170^(everness_coral_white_sand.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#F9F4FB:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#F9F4FB:170'
        },
        sounds = Everness.node_sound_sand_defaults()
    },
}

local path_nodes_coral_forest_ocean = {
    ['everness:coral_white_sand'] = {
        name = 'coral_white_sand',
        mod_origin = 'everness',
        descritption = 'Coral White Sand Path',
        drop = 'everness:coral_white_sand',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#F9F4FB:170^(everness_coral_white_sand.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#F9F4FB:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#F9F4FB:170'
        },
        sounds = Everness.node_sound_sand_defaults()
    },
}

-- Frosted Icesheet

local path_nodes_frosted_icesheet = {
    ['everness:frosted_snowblock'] = {
        name = 'frosted_snowblock',
        mod_origin = 'everness',
        descritption = 'Frosted Snow Block Path',
        drop = 'everness:frosted_snowblock',
        tiles = {
            'x_obsidianmese_path_dirt_base.png^[colorize:#FCFCFC:170^(everness_frosted_snow.png^[mask:x_obsidianmese_path_overlay_2.png)',
            'x_obsidianmese_path_dirt_base.png^[colorize:#FCFCFC:170',
            'x_obsidianmese_dirt_path_side.png^[colorize:#FCFCFC:170'
        },
        sounds = Everness.node_sound_snow_defaults()
    },
}

-- Bamboo Forest

if Everness.settings.biomes.everness_bamboo_forest.enabled then
    x_obsidianmese:register_path_node(path_nodes_bamboo_forest)
end

-- Baobab Savanna

if Everness.settings.biomes.everness_baobab_savanna.enabled then
    x_obsidianmese:register_path_node(path_nodes_baobab_savanna)
end

-- Crystal Forest

if Everness.settings.biomes.everness_crystal_forest.enabled then
    x_obsidianmese:register_path_node(path_nodes_crystal_forest)
end

if Everness.settings.biomes.everness_crystal_forest_dunes.enabled then
    x_obsidianmese:register_path_node(path_nodes_crystal_forest_dunes)
end

if Everness.settings.biomes.everness_crystal_forest_shore.enabled then
    x_obsidianmese:register_path_node(path_nodes_crystal_forest_shore)
end

if Everness.settings.biomes.everness_crystal_forest_ocean.enabled then
    x_obsidianmese:register_path_node(path_nodes_crystal_forest_ocean)
end

if Everness.settings.biomes.everness_crystal_forest_under.enabled then
    x_obsidianmese:register_path_node(path_nodes_crystal_forest_under)
end

-- Forsaken Tundra

if Everness.settings.biomes.everness_forsaken_tundra.enabled then
    x_obsidianmese:register_path_node(path_nodes_forsaken_tundra)
end

if Everness.settings.biomes.everness_forsaken_tundra_beach.enabled then
    x_obsidianmese:register_path_node(path_nodes_forsaken_tundra_beach)
end

if Everness.settings.biomes.everness_forsaken_tundra_ocean.enabled then
    x_obsidianmese:register_path_node(path_nodes_forsaken_tundra_ocean)
end

-- Cursed Lands

if Everness.settings.biomes.everness_cursed_lands.enabled
    or Everness.settings.biomes.everness_cursed_lands_dunes.enabled
    or Everness.settings.biomes.everness_cursed_lands_ocean.enabled
then
    x_obsidianmese:register_path_node(path_nodes_cursed_lands_and_dunes_ocean)
end

-- Coral Forest

if Everness.settings.biomes.everness_coral_forest.enabled
    or Everness.settings.biomes.everness_coral_forest_dunes.enabled
then
    x_obsidianmese:register_path_node(path_nodes_coral_forest_and_dunes)
end

if Everness.settings.biomes.everness_coral_forest_ocean.enabled then
    x_obsidianmese:register_path_node(path_nodes_coral_forest_ocean)
end

-- Forsaken Desert

if Everness.settings.biomes.everness_forsaken_desert.enabled then
    x_obsidianmese:register_path_node(path_nodes_forsaken_desert)
end

if Everness.settings.biomes.everness_forsaken_desert_ocean.enabled then
    x_obsidianmese:register_path_node(path_nodes_forsaken_desert_ocean)
end

if Everness.settings.biomes.everness_forsaken_desert_under.enabled then
    x_obsidianmese:register_path_node(path_nodes_forsaken_desert_under)
end

-- Frosted Icesheet

if Everness.settings.biomes.everness_frosted_icesheet.enabled then
    x_obsidianmese:register_path_node(path_nodes_frosted_icesheet)
end

local mod_end_time = (minetest.get_us_time() - mod_start_time) / 1000000

print('[Mod] everness: x_obsidianmese support loaded.. [' .. mod_end_time .. 's]')
