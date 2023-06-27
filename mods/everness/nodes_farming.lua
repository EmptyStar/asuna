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

minetest.override_item('everness:coral_dirt', {
    soil = {
        base = 'everness:coral_dirt',
        dry = 'everness:coral_dirt_soil',
        wet = 'everness:coral_dirt_soil_wet'
    }
})

minetest.override_item('everness:dirt_with_coral_grass', {
    soil = {
        base = 'everness:dirt_with_coral_grass',
        dry = 'everness:coral_dirt_soil',
        wet = 'everness:coral_dirt_soil_wet'
    }
})

minetest.override_item('everness:dirt_1', {
    soil = {
        base = 'everness:dirt_1',
        dry = 'everness:dirt_1_soil',
        wet = 'everness:dirt_1_soil_wet'
    }
})

minetest.override_item('everness:dirt_with_grass_1', {
    soil = {
        base = 'everness:dirt_with_grass_1',
        dry = 'everness:dirt_1_soil',
        wet = 'everness:dirt_1_soil_wet'
    }
})

minetest.override_item('everness:dry_dirt', {
    soil = {
        base = 'everness:dry_dirt',
        dry = 'everness:dry_dirt_soil',
        wet = 'everness:dry_dirt_soil_wet'
    }
})

minetest.override_item('everness:dry_dirt_with_dry_grass', {
    soil = {
        base = 'everness:dry_dirt_with_dry_grass',
        dry = 'everness:dry_dirt_soil',
        wet = 'everness:dry_dirt_soil_wet'
    }
})

minetest.override_item('everness:dirt_with_grass_extras_1', {
    soil = {
        base = 'everness:dirt_with_grass_extras_1',
        dry = 'everness:dirt_1_soil',
        wet = 'everness:dirt_1_soil_wet'
    }
})

minetest.override_item('everness:dirt_with_grass_extras_2', {
    soil = {
        base = 'everness:dirt_with_grass_extras_2',
        dry = 'everness:dirt_1_soil',
        wet = 'everness:dirt_1_soil_wet'
    }
})

minetest.override_item('everness:crystal_dirt', {
    soil = {
        base = 'everness:crystal_dirt',
        dry = 'everness:crystal_dirt_soil',
        wet = 'everness:crystal_dirt_soil_wet'
    }
})

minetest.override_item('everness:dirt_with_crystal_grass', {
    soil = {
        base = 'everness:dirt_with_crystal_grass',
        dry = 'everness:crystal_dirt_soil',
        wet = 'everness:crystal_dirt_soil_wet'
    }
})

minetest.override_item('everness:crystal_cave_dirt', {
    soil = {
        base = 'everness:crystal_cave_dirt',
        dry = 'everness:crystal_cave_dirt_soil',
        wet = 'everness:crystal_cave_dirt_soil_wet'
    }
})

minetest.override_item('everness:crystal_cave_dirt_with_moss', {
    soil = {
        base = 'everness:crystal_cave_dirt_with_moss',
        dry = 'everness:crystal_cave_dirt_soil',
        wet = 'everness:crystal_cave_dirt_soil_wet'
    }
})

minetest.override_item('everness:cursed_dirt', {
    soil = {
        base = 'everness:cursed_dirt',
        dry = 'everness:cursed_dirt_soil',
        wet = 'everness:cursed_dirt_soil_wet'
    }
})

minetest.override_item('everness:dirt_with_cursed_grass', {
    soil = {
        base = 'everness:dirt_with_cursed_grass',
        dry = 'everness:cursed_dirt_soil',
        wet = 'everness:cursed_dirt_soil_wet'
    }
})

-- normal soil
minetest.register_node('everness:coral_dirt_soil', {
    description = S('Coral Dirt Soil'),
    tiles = {
        'everness_coral_dirt.png^(everness_coral_dirt.png^[mask:everness_farming_soil_overlay.png^[multiply:#A05F3A80)',
        'everness_coral_dirt.png'
    },
    drop = 'everness:coral_dirt',
    groups = {
        -- MTG
        crumbly = 3,
        not_in_creative_inventory = 1,
        soil = 2,
        grassland = 1,
        field = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:coral_dirt',
        dry = 'everness:coral_dirt_soil',
        wet = 'everness:coral_dirt_soil_wet'
    }
})

minetest.register_node('everness:dirt_1_soil', {
    description = S('Dirt Soil'),
    tiles = {
        'everness_dirt.png^(everness_dirt.png^[mask:everness_farming_soil_overlay.png^[multiply:#51341E80)',
        'everness_dirt.png'
    },
    drop = 'everness:dirt_1',
    groups = {
        -- MTG
        crumbly = 3,
        not_in_creative_inventory = 1,
        soil = 2,
        grassland = 1,
        field = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:dirt_1',
        dry = 'everness:dirt_1_soil',
        wet = 'everness:dirt_1_soil_wet'
    }
})

minetest.register_node('everness:crystal_dirt_soil', {
    description = S('Crystal Dirt Soil'),
    tiles = {
        'everness_crystal_dirt.png^(everness_crystal_dirt.png^[mask:everness_farming_soil_overlay.png^[multiply:#75506980)',
        'everness_crystal_dirt.png'
    },
    drop = 'everness:crystal_dirt',
    groups = {
        -- MTG
        crumbly = 3,
        not_in_creative_inventory = 1,
        soil = 2,
        grassland = 1,
        field = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:crystal_dirt',
        dry = 'everness:crystal_dirt_soil',
        wet = 'everness:crystal_dirt_soil_wet'
    }
})

minetest.register_node('everness:crystal_cave_dirt_soil', {
    description = S('Crystal Cave Dirt Soil'),
    tiles = {
        'everness_crystal_cave_dirt.png^(everness_crystal_cave_dirt.png^[mask:everness_farming_soil_overlay.png^[multiply:#CCB17E80)',
        'everness_crystal_cave_dirt.png'
    },
    drop = 'everness:crystal_cave_dirt',
    groups = {
        -- MTG
        crumbly = 3,
        not_in_creative_inventory = 1,
        soil = 2,
        grassland = 1,
        field = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:crystal_cave_dirt',
        dry = 'everness:crystal_cave_dirt_soil',
        wet = 'everness:crystal_cave_dirt_soil_wet'
    }
})

minetest.register_node('everness:cursed_dirt_soil', {
    description = S('Cursed Dirt Soil'),
    tiles = {
        'everness_cursed_dirt.png^(everness_cursed_dirt.png^[mask:everness_farming_soil_overlay.png^[multiply:#625B4B80)',
        'everness_cursed_dirt.png'
    },
    drop = 'everness:cursed_dirt',
    groups = {
        -- MTG
        crumbly = 3,
        not_in_creative_inventory = 1,
        soil = 2,
        grassland = 1,
        field = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:cursed_dirt',
        dry = 'everness:cursed_dirt_soil',
        wet = 'everness:cursed_dirt_soil_wet'
    }
})

minetest.register_node('everness:dry_dirt_soil', {
    description = S('Dry Dirt Soil'),
    tiles = {
        'everness_dry_dirt.png^(everness_dry_dirt.png^[mask:everness_farming_soil_overlay.png^[multiply:#9F754780)',
        'everness_dry_dirt.png'
    },
    drop = 'everness:dry_dirt',
    groups = {
        -- MTG
        crumbly = 3,
        not_in_creative_inventory = 1,
        soil = 2,
        grassland = 1,
        field = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:dry_dirt',
        dry = 'everness:dry_dirt_soil',
        wet = 'everness:dry_dirt_soil_wet'
    }
})

-- wet soil
minetest.register_node('everness:coral_dirt_soil_wet', {
    description = S('Coral Dirt Wet Soil'),
    tiles = {
        'everness_coral_dirt.png^(everness_coral_dirt.png^[mask:everness_farming_soil_wet_overlay.png^[multiply:#A05F3A80)',
        'everness_coral_dirt.png^(everness_coral_dirt.png^[mask:everness_farming_soil_wet_side_overlay.png^[multiply:#A05F3A80)',
    },
    drop = 'everness:coral_dirt',
    groups = {
        -- MTG
        crumbly = 3,
        not_in_creative_inventory = 1,
        soil = 3,
        wet = 1,
        grassland = 1,
        field = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:coral_dirt',
        dry = 'everness:coral_dirt_soil',
        wet = 'everness:coral_dirt_soil_wet'
    }
})

minetest.register_node('everness:dirt_1_soil_wet', {
    description = S('Coral Dirt Wet Soil'),
    tiles = {
        'everness_dirt.png^(everness_dirt.png^[mask:everness_farming_soil_wet_overlay.png^[multiply:#51341E80)',
        'everness_dirt.png^(everness_dirt.png^[mask:everness_farming_soil_wet_side_overlay.png^[multiply:#51341E80)',
    },
    drop = 'everness:dirt_1',
    groups = {
        -- MTG
        crumbly = 3,
        not_in_creative_inventory = 1,
        soil = 3,
        wet = 1,
        grassland = 1,
        field = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:dirt_1',
        dry = 'everness:dirt_1_soil',
        wet = 'everness:dirt_1_soil_wet'
    }
})

minetest.register_node('everness:crystal_dirt_soil_wet', {
    description = S('Crystal Dirt Wet Soil'),
    tiles = {
        'everness_crystal_dirt.png^(everness_crystal_dirt.png^[mask:everness_farming_soil_wet_overlay.png^[multiply:#75506980)',
        'everness_crystal_dirt.png^(everness_crystal_dirt.png^[mask:everness_farming_soil_wet_side_overlay.png^[multiply:#75506980)',
    },
    drop = 'everness:crystal_dirt',
    groups = {
        -- MTG
        crumbly = 3,
        not_in_creative_inventory = 1,
        soil = 3,
        wet = 1,
        grassland = 1,
        field = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:crystal_dirt',
        dry = 'everness:crystal_dirt_soil',
        wet = 'everness:crystal_dirt_soil_wet'
    }
})

minetest.register_node('everness:crystal_cave_dirt_soil_wet', {
    description = S('Crystal Cave Dirt Wet Soil'),
    tiles = {
        'everness_crystal_cave_dirt.png^(everness_crystal_cave_dirt.png^[mask:everness_farming_soil_wet_overlay.png^[multiply:#CCB17E80)',
        'everness_crystal_cave_dirt.png^(everness_crystal_cave_dirt.png^[mask:everness_farming_soil_wet_side_overlay.png^[multiply:#CCB17E80)',
    },
    drop = 'everness:crystal_cave_dirt',
    groups = {
        -- MTG
        crumbly = 3,
        not_in_creative_inventory = 1,
        soil = 3,
        wet = 1,
        grassland = 1,
        field = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:crystal_cave_dirt',
        dry = 'everness:crystal_cave_dirt_soil',
        wet = 'everness:crystal_cave_dirt_soil_wet'
    }
})

minetest.register_node('everness:cursed_dirt_soil_wet', {
    description = S('Cursed Dirt Wet Soil'),
    tiles = {
        'everness_cursed_dirt.png^(everness_cursed_dirt.png^[mask:everness_farming_soil_wet_overlay.png^[multiply:#625B4B80)',
        'everness_cursed_dirt.png^(everness_cursed_dirt.png^[mask:everness_farming_soil_wet_side_overlay.png^[multiply:#625B4B80)',
    },
    drop = 'everness:cursed_dirt',
    groups = {
        -- MTG
        crumbly = 3,
        not_in_creative_inventory = 1,
        soil = 3,
        wet = 1,
        grassland = 1,
        field = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:cursed_dirt',
        dry = 'everness:cursed_dirt_soil',
        wet = 'everness:cursed_dirt_soil_wet'
    }
})

minetest.register_node('everness:dry_dirt_soil_wet', {
    description = S('Cursed Dirt Wet Soil'),
    tiles = {
        'everness_dry_dirt.png^(everness_dry_dirt.png^[mask:everness_farming_soil_wet_overlay.png^[multiply:#9F754780)',
        'everness_dry_dirt.png^(everness_dry_dirt.png^[mask:everness_farming_soil_wet_side_overlay.png^[multiply:#9F754780)',
    },
    drop = 'everness:dry_dirt',
    groups = {
        -- MTG
        crumbly = 3,
        not_in_creative_inventory = 1,
        soil = 3,
        wet = 1,
        grassland = 1,
        field = 1,
        -- MCL
        handy = 1,
        shovely = 1,
        dirt = 1,
        soil_sapling = 2,
        soil_sugarcane = 1,
        cultivatable = 2,
        enderman_takable = 1,
        building_block = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    sounds = Everness.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:dry_dirt',
        dry = 'everness:dry_dirt_soil',
        wet = 'everness:dry_dirt_soil_wet'
    }
})
