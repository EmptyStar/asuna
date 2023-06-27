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

local SOUND_DEFS = {
    everness_cursed_lands = {
        day = {
            {
                name = 'everness_ambience_graveyard_1',
                length = 7,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_graveyard_7',
                length = 7,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_graveyard_8',
                length = 7,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_graveyard_9',
                length = 7,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_graveyard_10',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_graveyard_2',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_graveyard_3',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_graveyard_4',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_graveyard_5',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_graveyard_6',
                length = 6,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_ghost_1',
                length = 1.9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_ghost_2',
                length = 11,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_ghost_3',
                length = 6,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_ghost_4',
                length = 10,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_ghost_5',
                length = 14,
                gain = 0.6,
            },
        },
        night = {
            {
                name = 'everness_ambience_night_crickets_1',
                length = 7,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_night_crickets_2',
                length = 7,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_night_crickets_3',
                length = 7,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_night_crickets_4',
                length = 7,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_night_crickets_5',
                length = 6.5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_owl_1',
                length = 12,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_ghost_1',
                length = 1.9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_ghost_2',
                length = 11,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_ghost_3',
                length = 6,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_ghost_4',
                length = 10,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_ghost_5',
                length = 14,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_ghost_6',
                length = 10,
                gain = 0.6,
            },
        }
    },
    everness_cursed_lands_swamp = {
        day = {
            {
                name = 'everness_ambience_swamp_1',
                length = 6.8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_swamp_2',
                length = 8.8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_swamp_3',
                length = 8.7,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_swamp_4',
                length = 12,
                gain = 0.6,
            },
        }
    },
    everness_cursed_lands_under = {
        day = {
            {
                name = 'everness_ambience_monster_sigh_cave',
                length = 2,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_rocks_falling_cave',
                length = 12,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_water_drips_cave_1',
                length = 11,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_water_drips_cave_2',
                length = 13,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_1',
                length = 15,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_2',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_3',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_4',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_5',
                length = 7.5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_1',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_2',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_3',
                length = 5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_4',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_5',
                length = 8.5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_6',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_7',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_8',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_9',
                length = 10,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_creepy_cave_1',
                length = 5.5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_ghost_1',
                length = 1.9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_ghost_2',
                length = 11,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_ghost_3',
                length = 6,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_ghost_4',
                length = 10,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_ghost_5',
                length = 14,
                gain = 0.6,
            },
        }
    },
    everness_coral_forest_under = {
        day = {
            {
                name = 'everness_ambience_monster_sigh_cave',
                length = 2,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_rocks_falling_cave',
                length = 12,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_water_drips_cave_1',
                length = 11,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_water_drips_cave_2',
                length = 13,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_1',
                length = 15,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_2',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_3',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_4',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_5',
                length = 7.5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_1',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_2',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_3',
                length = 5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_4',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_5',
                length = 8.5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_6',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_7',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_8',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_9',
                length = 10,
                gain = 0.6,
            },
        }
    },
    everness_frosted_icesheet = {
        day = {
            {
                name = 'everness_ambience_snow_storm_1',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_snow_storm_2',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_snow_storm_3',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_snow_storm_4',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_ice_cracking_1',
                length = 2.4,
                gain = 1.5,
            },
            {
                name = 'everness_ambience_ice_cracking_2',
                length = 2.5,
                gain = 1.5,
            },
            {
                name = 'everness_ambience_ice_cracking_3',
                length = 3,
                gain = 1.5,
            },
        }
    },
    everness_frosted_icesheet_ocean = {
        day = {
            {
                name = 'everness_ambience_snow_storm_1',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_snow_storm_2',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_snow_storm_3',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_snow_storm_4',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_ice_cracking_1',
                length = 2.4,
                gain = 1.5,
            },
            {
                name = 'everness_ambience_ice_cracking_2',
                length = 2.5,
                gain = 1.5,
            },
            {
                name = 'everness_ambience_ice_cracking_3',
                length = 3,
                gain = 1.5,
            },
        }
    },
    everness_frosted_icesheet_under = {
        day = {
            {
                name = 'everness_ambience_monster_sigh_cave',
                length = 2,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_rocks_falling_cave',
                length = 12,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_water_drips_cave_1',
                length = 11,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_water_drips_cave_2',
                length = 13,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_1',
                length = 15,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_2',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_3',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_4',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_5',
                length = 7.5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_1',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_2',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_3',
                length = 5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_4',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_5',
                length = 8.5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_6',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_7',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_8',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_9',
                length = 10,
                gain = 0.6,
            },
        }
    },
    everness_crystal_forest_under = {
        day = {
            {
                name = 'everness_ambience_monster_sigh_cave',
                length = 2,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_rocks_falling_cave',
                length = 12,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_water_drips_cave_1',
                length = 11,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_water_drips_cave_2',
                length = 13,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_1',
                length = 15,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_2',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_3',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_4',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_5',
                length = 7.5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_1',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_2',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_3',
                length = 5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_4',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_5',
                length = 8.5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_6',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_7',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_8',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_9',
                length = 10,
                gain = 0.6,
            },
        }
    },
    everness_bamboo_forest_under = {
        day = {
            {
                name = 'everness_ambience_monster_sigh_cave',
                length = 2,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_rocks_falling_cave',
                length = 12,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_water_drips_cave_1',
                length = 11,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_water_drips_cave_2',
                length = 13,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_1',
                length = 15,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_2',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_3',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_4',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_5',
                length = 7.5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_1',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_2',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_3',
                length = 5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_4',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_5',
                length = 8.5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_6',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_7',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_8',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_9',
                length = 10,
                gain = 0.6,
            },
        }
    },
    everness_forsaken_desert_under = {
        day = {
            {
                name = 'everness_ambience_monster_sigh_cave',
                length = 2,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_rocks_falling_cave',
                length = 12,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_water_drips_cave_1',
                length = 11,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_water_drips_cave_2',
                length = 13,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_1',
                length = 15,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_2',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_3',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_4',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_5',
                length = 7.5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_1',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_2',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_3',
                length = 5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_4',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_5',
                length = 8.5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_6',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_7',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_8',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_9',
                length = 10,
                gain = 0.6,
            },
        }
    },
    everness_forsaken_tundra = {
        day = {
            {
                name = 'everness_ambience_sulfur_1',
                length = 5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_sulfur_2',
                length = 5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_sulfur_3',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_sulfur_4',
                length = 5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_hot_stone_1',
                length = 9,
                gain = 1.5,
            },
            {
                name = 'everness_ambience_hot_stone_2',
                length = 9,
                gain = 1.5,
            },
        }
    },
    everness_forsaken_tundra_under = {
        day = {
            {
                name = 'everness_ambience_monster_sigh_cave',
                length = 2,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_rocks_falling_cave',
                length = 12,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_water_drips_cave_1',
                length = 11,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_water_drips_cave_2',
                length = 13,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_1',
                length = 15,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_2',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_3',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_4',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_wind_cave_5',
                length = 7.5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_1',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_2',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_3',
                length = 5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_4',
                length = 8,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_5',
                length = 8.5,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_6',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_7',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_8',
                length = 9,
                gain = 0.6,
            },
            {
                name = 'everness_ambience_cave_9',
                length = 10,
                gain = 0.6,
            },
        }
    },
}

local PLAYER_SOUNDS = {}

-- Update sound for player
local function update_sound(player)
    local player_name = player:get_player_name()
    local player_pos = player:get_pos()
    local biome_data = minetest.get_biome_data(player_pos)

    if not biome_data then
        return
    end

    local biome_name = minetest.get_biome_name(biome_data.biome)

    if not biome_name then
        return
    end

    if not PLAYER_SOUNDS[player_name] then
        local sound_def_biome = SOUND_DEFS[biome_name]

        if not sound_def_biome then
            return
        end

        local sound_def = sound_def_biome.day[1]

        -- day
        if #sound_def_biome.day > 1 then
            sound_def = sound_def_biome.day[math.random(1, #sound_def_biome.day)]
        end

        -- night between 19:19:12 - 04:48:00
        if sound_def_biome.night then
            local tod = minetest.get_timeofday()

            if tod > 0.805 or tod < 0.2 then
                sound_def = sound_def_biome.night[1]

                if #sound_def_biome.night > 1 then
                    sound_def = sound_def_biome.night[math.random(1, #sound_def_biome.night)]
                end
            end
        end

        PLAYER_SOUNDS[player_name] = minetest.sound_play(sound_def.name, {
            to_player = player_name,
            gain = 0,
        }, false)

        -- fade in
        minetest.sound_fade(PLAYER_SOUNDS[player_name], (sound_def.gain / sound_def.length) / 2, sound_def.gain)

        minetest.after(sound_def.length / 2, function(v_player_sounds, v_player_name)
            -- fade out
            if not PLAYER_SOUNDS[player_name] then
                return
            end

            minetest.sound_fade(v_player_sounds[v_player_name], ((sound_def.gain / sound_def.length) / 2) * -1, 0)
        end, PLAYER_SOUNDS, player_name)

        -- remove handle
        minetest.after(sound_def.length, function(v_player_sounds, v_player_name)
            v_player_sounds[v_player_name] = nil
        end, PLAYER_SOUNDS, player_name)
    end
end

-- Update sound when player joins
minetest.register_on_joinplayer(function(player)
    local player_name = player:get_player_name()
    PLAYER_SOUNDS[player_name] = nil
    update_sound(player)
end)

-- Cyclic sound update
local function cyclic_update()
    for _, player in pairs(minetest.get_connected_players()) do
        update_sound(player)
    end

    minetest.after(math.random(30, 180), cyclic_update)
end

minetest.after(0, cyclic_update)
