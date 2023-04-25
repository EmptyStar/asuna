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

local skybox_defs = {
    everness_cursed_lands = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#89ADB1',
                day_horizon = '#A9CDD1',
                dawn_sky = '#A5C9CD',
                dawn_horizon = '#AACED2',
                night_sky = '#416569',
                night_horizon = '#6A8E92',
                indoors = '#4A6E72',
                fog_sun_tint = '#7CA0A4',
                fog_moon_tint = '#7DA1A5'
            }
        },
        sun_parameters = {
            texture = 'everness_cursed_lands_sun.png',
            scale = 1.57,
            sunrise = 'everness_cursed_lands_sunrisebg.png',
            tonemap = 'everness_cursed_lands_sun_tonemap.png'
        },
        moon_parameters = {
            texture = 'everness_cursed_lands_moon.png',
            tonemap = 'everness_cursed_lands_moon_tonemap.png'
        },
        cloud_parameters = {
            density = 0.7,
            color = '#A9CDD1E5',
            speed = { x = -2, z = -2 }
        }
    },
    everness_cursed_lands_dunes = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#89ADB1',
                day_horizon = '#A9CDD1',
                dawn_sky = '#A5C9CD',
                dawn_horizon = '#AACED2',
                night_sky = '#416569',
                night_horizon = '#6A8E92',
                indoors = '#4A6E72',
                fog_sun_tint = '#7CA0A4',
                fog_moon_tint = '#7DA1A5'
            }
        },
        sun_parameters = {
            texture = 'everness_cursed_lands_sun.png',
            scale = 1.57,
            sunrise = 'everness_cursed_lands_sunrisebg.png',
            tonemap = 'everness_cursed_lands_sun_tonemap.png'
        },
        moon_parameters = {
            texture = 'everness_cursed_lands_moon.png',
            tonemap = 'everness_cursed_lands_moon_tonemap.png'
        },
        cloud_parameters = {
            density = 0.7,
            color = '#A9CDD1E5',
            speed = { x = -2, z = -2 }
        }
    },
    everness_cursed_lands_swamp = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#89ADB1',
                day_horizon = '#A9CDD1',
                dawn_sky = '#A5C9CD',
                dawn_horizon = '#AACED2',
                night_sky = '#416569',
                night_horizon = '#6A8E92',
                indoors = '#4A6E72',
                fog_sun_tint = '#7CA0A4',
                fog_moon_tint = '#7DA1A5'
            }
        },
        sun_parameters = {
            texture = 'everness_cursed_lands_sun.png',
            scale = 1.57,
            sunrise = 'everness_cursed_lands_sunrisebg.png',
            tonemap = 'everness_cursed_lands_sun_tonemap.png'
        },
        moon_parameters = {
            texture = 'everness_cursed_lands_moon.png',
            tonemap = 'everness_cursed_lands_moon_tonemap.png'
        },
        cloud_parameters = {
            density = 0.7,
            color = '#A9CDD1E5',
            speed = { x = -2, z = -2 }
        }
    },
    everness_cursed_lands_ocean = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#89ADB1',
                day_horizon = '#A9CDD1',
                dawn_sky = '#A5C9CD',
                dawn_horizon = '#AACED2',
                night_sky = '#416569',
                night_horizon = '#6A8E92',
                indoors = '#4A6E72',
                fog_sun_tint = '#7CA0A4',
                fog_moon_tint = '#7DA1A5'
            }
        },
        sun_parameters = {
            texture = 'everness_cursed_lands_sun.png',
            scale = 1.57,
            sunrise = 'everness_cursed_lands_sunrisebg.png',
            tonemap = 'everness_cursed_lands_sun_tonemap.png'
        },
        moon_parameters = {
            texture = 'everness_cursed_lands_moon.png',
            tonemap = 'everness_cursed_lands_moon_tonemap.png'
        },
        cloud_parameters = {
            density = 0.7,
            color = '#A9CDD1E5',
            speed = { x = -2, z = -2 }
        }
    },
    everness_cursed_lands_under = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#89ADB1',
                day_horizon = '#A9CDD1',
                dawn_sky = '#A5C9CD',
                dawn_horizon = '#AACED2',
                night_sky = '#416569',
                night_horizon = '#6A8E92',
                indoors = '#4A6E72',
                fog_sun_tint = '#7CA0A4',
                fog_moon_tint = '#7DA1A5'
            }
        },
        sun_parameters = {
            texture = 'everness_cursed_lands_sun.png',
            scale = 1.57,
            sunrise = 'everness_cursed_lands_sunrisebg.png',
            tonemap = 'everness_cursed_lands_sun_tonemap.png'
        },
        moon_parameters = {
            texture = 'everness_cursed_lands_moon.png',
            tonemap = 'everness_cursed_lands_moon_tonemap.png'
        },
        cloud_parameters = {
            density = 0.7,
            color = '#A9CDD1E5',
            speed = { x = -2, z = -2 }
        }
    },
    everness_coral_forest = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#C492A5',
                day_sky = '#61B5F5',
                day_horizon = '#E4B2C5',
                dawn_sky = '#E0AEC1',
                dawn_horizon = '#E5B3C6',
                night_sky = '#7C4A5D',
                night_horizon = '#A57386',
                indoors = '#855366',
                fog_sun_tint = '#B78598',
                fog_moon_tint = '#B88699'
            }
        },
        sun_parameters = {
            texture = 'everness_coral_forest_sun.png',
            scale = 1.57,
            tonemap = 'everness_coral_forest_sun_tonemap.png',
            sunrise = ''
        },
    },
    everness_coral_forest_dunes = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#C492A5',
                day_sky = '#61B5F5',
                day_horizon = '#E4B2C5',
                dawn_sky = '#E0AEC1',
                dawn_horizon = '#E5B3C6',
                night_sky = '#7C4A5D',
                night_horizon = '#A57386',
                indoors = '#855366',
                fog_sun_tint = '#B78598',
                fog_moon_tint = '#B88699'
            }
        },
        sun_parameters = {
            texture = 'everness_coral_forest_sun.png',
            scale = 1.57,
            tonemap = 'everness_coral_forest_sun_tonemap.png',
            sunrise = ''
        },
    },
    everness_coral_forest_ocean = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#C492A5',
                day_sky = '#61B5F5',
                day_horizon = '#E4B2C5',
                dawn_sky = '#E0AEC1',
                dawn_horizon = '#E5B3C6',
                night_sky = '#7C4A5D',
                night_horizon = '#A57386',
                indoors = '#855366',
                fog_sun_tint = '#B78598',
                fog_moon_tint = '#B88699'
            }
        },
        sun_parameters = {
            texture = 'everness_coral_forest_sun.png',
            scale = 1.57,
            tonemap = 'everness_coral_forest_sun_tonemap.png',
            sunrise = ''
        },
    },
    everness_coral_forest_under = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#C492A5',
                day_sky = '#61B5F5',
                day_horizon = '#E4B2C5',
                dawn_sky = '#E0AEC1',
                dawn_horizon = '#E5B3C6',
                night_sky = '#7C4A5D',
                night_horizon = '#A57386',
                indoors = '#855366',
                fog_sun_tint = '#B78598',
                fog_moon_tint = '#B88699'
            }
        },
    },
    everness_bamboo_forest = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#5DD35D',
                day_sky = '#61B5F5',
                day_horizon = '#BFFFBF',
                -- dawn_sky = '#79EF79',
                dawn_sky = '#B4BAFA',
                dawn_horizon = '#7EF47E',
                -- night_sky = '#158B15',
                night_sky = '#006BFF',
                night_horizon = '#3EB43E',
                indoors = '#1E941E',
                fog_sun_tint = '#50C650',
                fog_moon_tint = '#51C751'
            }
        },
        sun_parameters = {
            texture = 'everness_bamboo_forest_sun.png',
            scale = 1.57,
            tonemap = 'everness_bamboo_forest_sun_tonemap.png',
            sunrise = 'everness_bamboo_forest_sunrisebg.png',
        },
    },
    everness_bamboo_forest_under = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#5DD35D',
                day_sky = '#61B5F5',
                day_horizon = '#BFFFBF',
                -- dawn_sky = '#79EF79',
                dawn_sky = '#B4BAFA',
                dawn_horizon = '#7EF47E',
                -- night_sky = '#158B15',
                night_sky = '#006BFF',
                night_horizon = '#3EB43E',
                indoors = '#1E941E',
                fog_sun_tint = '#50C650',
                fog_moon_tint = '#51C751'
            }
        },
    },
    everness_frosted_icesheet = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#9DA4AA',
                day_horizon = '#BDC4CA',
                dawn_sky = '#B9C0C6',
                dawn_horizon = '#BEC5CB',
                night_sky = '#555C62',
                night_horizon = '#7E858B',
                indoors = '#5E656B',
                fog_sun_tint = '#90979D',
                fog_moon_tint = '#91989E'
            }
        },
        sun_parameters = {
            texture = 'everness_frosted_icesheet_sun.png',
            scale = 1.57,
            tonemap = 'everness_frosted_icesheet_sun_tonemap.png',
            sunrise = ''
        },
    },
    everness_frosted_icesheet_ocean = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#9DA4AA',
                day_horizon = '#BDC4CA',
                dawn_sky = '#B9C0C6',
                dawn_horizon = '#BEC5CB',
                night_sky = '#555C62',
                night_horizon = '#7E858B',
                indoors = '#5E656B',
                fog_sun_tint = '#90979D',
                fog_moon_tint = '#91989E'
            }
        },
        sun_parameters = {
            texture = 'everness_frosted_icesheet_sun.png',
            scale = 1.57,
            tonemap = 'everness_frosted_icesheet_sun_tonemap.png',
            sunrise = ''
        },
    },
    everness_frosted_icesheet_under = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#9DA4AA',
                day_horizon = '#BDC4CA',
                dawn_sky = '#B9C0C6',
                dawn_horizon = '#BEC5CB',
                night_sky = '#555C62',
                night_horizon = '#7E858B',
                indoors = '#5E656B',
                fog_sun_tint = '#90979D',
                fog_moon_tint = '#91989E'
            }
        },
    },
    everness_crystal_forest = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#B992C5',
                day_sky = '#61B5F5',
                day_horizon = '#D9B2E5',
                dawn_sky = '#D5AEE1',
                dawn_horizon = '#DAB3E6',
                night_sky = '#714A7D',
                night_horizon = '#9A73A6',
                indoors = '#7A5386',
                fog_sun_tint = '#AC85B8',
                fog_moon_tint = '#AD86B9'
            }
        },
        moon_parameters = {
            texture = 'everness_crystal_forest_moon.png',
            tonemap = 'everness_crystal_forest_moon_tonemap.png'
        },
        star_parameters = {
            count = 6000,
            scale = 0.5
        },
        sun_parameters = {
            texture = 'everness_crystal_forest_sun.png',
            scale = 1.57,
            tonemap = 'everness_crystal_forest_sun_tonemap.png',
            sunrise = ''
        },
    },
    everness_crystal_forest_dunes = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#B992C5',
                day_sky = '#61B5F5',
                day_horizon = '#D9B2E5',
                dawn_sky = '#D5AEE1',
                dawn_horizon = '#DAB3E6',
                night_sky = '#714A7D',
                night_horizon = '#9A73A6',
                indoors = '#7A5386',
                fog_sun_tint = '#AC85B8',
                fog_moon_tint = '#AD86B9'
            }
        },
        moon_parameters = {
            texture = 'everness_crystal_forest_moon.png',
            tonemap = 'everness_crystal_forest_moon_tonemap.png'
        },
        star_parameters = {
            count = 6000,
            scale = 0.5
        },
        sun_parameters = {
            texture = 'everness_crystal_forest_sun.png',
            scale = 1.57,
            tonemap = 'everness_crystal_forest_sun_tonemap.png',
            sunrise = ''
        },
    },
    everness_crystal_forest_shore = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#B992C5',
                day_sky = '#61B5F5',
                day_horizon = '#D9B2E5',
                dawn_sky = '#D5AEE1',
                dawn_horizon = '#DAB3E6',
                night_sky = '#714A7D',
                night_horizon = '#9A73A6',
                indoors = '#7A5386',
                fog_sun_tint = '#AC85B8',
                fog_moon_tint = '#AD86B9'
            }
        },
        moon_parameters = {
            texture = 'everness_crystal_forest_moon.png',
            tonemap = 'everness_crystal_forest_moon_tonemap.png'
        },
        star_parameters = {
            count = 6000,
            scale = 0.5
        },
        sun_parameters = {
            texture = 'everness_crystal_forest_sun.png',
            scale = 1.57,
            tonemap = 'everness_crystal_forest_sun_tonemap.png',
            sunrise = ''
        },
    },
    everness_crystal_forest_ocean = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#B992C5',
                day_sky = '#61B5F5',
                day_horizon = '#D9B2E5',
                dawn_sky = '#D5AEE1',
                dawn_horizon = '#DAB3E6',
                night_sky = '#714A7D',
                night_horizon = '#9A73A6',
                indoors = '#7A5386',
                fog_sun_tint = '#AC85B8',
                fog_moon_tint = '#AD86B9'
            }
        },
        moon_parameters = {
            texture = 'everness_crystal_forest_moon.png',
            tonemap = 'everness_crystal_forest_moon_tonemap.png'
        },
        star_parameters = {
            count = 6000,
            scale = 0.5
        },
        sun_parameters = {
            texture = 'everness_crystal_forest_sun.png',
            scale = 1.57,
            tonemap = 'everness_crystal_forest_sun_tonemap.png',
            sunrise = ''
        },
    },
    everness_crystal_forest_under = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#B992C5',
                day_sky = '#61B5F5',
                day_horizon = '#D9B2E5',
                dawn_sky = '#D5AEE1',
                dawn_horizon = '#DAB3E6',
                night_sky = '#714A7D',
                night_horizon = '#9A73A6',
                indoors = '#7A5386',
                fog_sun_tint = '#AC85B8',
                fog_moon_tint = '#AD86B9'
            }
        },
        star_parameters = {
            count = 6000,
            scale = 0.5
        }
    },
    everness_forsaken_desert = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#D5946E',
                day_horizon = '#F5B48E',
                dawn_sky = '#F1B08A',
                dawn_horizon = '#F6B58F',
                night_sky = '#8D4C26',
                night_horizon = '#B6754F',
                indoors = '#96552F',
                fog_sun_tint = '#C88761',
                fog_moon_tint = '#C98862'
            }
        },
        sun_parameters = {
            texture = 'everness_forsaken_desert_sun.png',
            scale = 3.14,
            tonemap = 'everness_forsaken_desert_sun_tonemap.png',
            sunrise = ''
        },
    },
    everness_forsaken_desert_ocean = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#D5946E',
                day_horizon = '#F5B48E',
                dawn_sky = '#F1B08A',
                dawn_horizon = '#F6B58F',
                night_sky = '#8D4C26',
                night_horizon = '#B6754F',
                indoors = '#96552F',
                fog_sun_tint = '#C88761',
                fog_moon_tint = '#C98862'
            }
        },
        sun_parameters = {
            texture = 'everness_forsaken_desert_sun.png',
            scale = 3.14,
            tonemap = 'everness_forsaken_desert_sun_tonemap.png',
            sunrise = ''
        },
    },
    everness_forsaken_desert_under = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#D5946E',
                day_horizon = '#F5B48E',
                dawn_sky = '#F1B08A',
                dawn_horizon = '#F6B58F',
                night_sky = '#8D4C26',
                night_horizon = '#B6754F',
                indoors = '#96552F',
                fog_sun_tint = '#C88761',
                fog_moon_tint = '#C98862'
            }
        }
    },
    everness_baobab_savanna = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#C4A156',
                day_horizon = '#E4C176',
                dawn_sky = '#E0BD72',
                dawn_horizon = '#E5C277',
                night_sky = '#7C590E',
                night_horizon = '#A58237',
                indoors = '#856217',
                fog_sun_tint = '#B79449',
                fog_moon_tint = '#B8954A'
            }
        },
        sun_parameters = {
            texture = 'everness_baobab_savanna_sun.png',
            scale = 1.57,
            tonemap = '',
            sunrise = ''
        },
    },
    everness_forsaken_tundra = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#A3A49F',
                -- day_sky = '#CAA339',
                day_horizon = '#EAC359',
                dawn_sky = '#E6BF55',
                dawn_horizon = '#EBC45A',
                -- night_sky = '#5B5C57',
                night_sky = '#7C5B01',
                night_horizon = '#AB841A',
                indoors = '#896401',
                fog_sun_tint = '#BD962C',
                fog_moon_tint = '#BE972D'
            }
        },
        sun_parameters = {
            texture = 'everness_forsaken_tundra_sun.png',
            scale = 1.57,
            tonemap = 'everness_forsaken_tundra_sun_tonemap.png',
            sunrise = ''
        },
    },
    everness_forsaken_tundra_beach = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#A3A49F',
                -- day_sky = '#CAA339',
                day_horizon = '#EAC359',
                dawn_sky = '#E6BF55',
                dawn_horizon = '#EBC45A',
                -- night_sky = '#5B5C57',
                night_sky = '#7C5B01',
                night_horizon = '#AB841A',
                indoors = '#896401',
                fog_sun_tint = '#BD962C',
                fog_moon_tint = '#BE972D'
            }
        },
        sun_parameters = {
            texture = 'everness_forsaken_tundra_sun.png',
            scale = 1.57,
            tonemap = 'everness_forsaken_tundra_sun_tonemap.png',
            sunrise = ''
        },
    },
    everness_forsaken_tundra_ocean = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#A3A49F',
                -- day_sky = '#CAA339',
                day_horizon = '#EAC359',
                dawn_sky = '#E6BF55',
                dawn_horizon = '#EBC45A',
                -- night_sky = '#5B5C57',
                night_sky = '#7C5B01',
                night_horizon = '#AB841A',
                indoors = '#896401',
                fog_sun_tint = '#BD962C',
                fog_moon_tint = '#BE972D'
            }
        },
        sun_parameters = {
            texture = 'everness_forsaken_tundra_sun.png',
            scale = 1.57,
            tonemap = 'everness_forsaken_tundra_sun_tonemap.png',
            sunrise = ''
        },
    },
    everness_forsaken_tundra_under = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#A3A49F',
                -- day_sky = '#CAA339',
                day_horizon = '#EAC359',
                dawn_sky = '#E6BF55',
                dawn_horizon = '#EBC45A',
                -- night_sky = '#5B5C57',
                night_sky = '#7C5B01',
                night_horizon = '#AB841A',
                indoors = '#896401',
                fog_sun_tint = '#BD962C',
                fog_moon_tint = '#BE972D'
            }
        }
    }
}

local function should_flip(player)
    local player_meta = player:get_meta()
    local player_time = player_meta:get_int('everness_timeofday')
    -- 0 not defined (for player meta)
    -- 1 morning
    -- 2 afternoon
    local current_time = minetest.get_timeofday() < 0.5 and 1 or 2
    local flip = current_time ~= player_time

    player_meta:set_int('everness_timeofday', current_time)

    return {
        should_flip = flip,
        current_time = current_time
    }
end

local timer = 0

minetest.register_globalstep(function(dtime)
    timer = timer + dtime
    if timer > 5 then
        local players = minetest.get_connected_players()

        for _, player in ipairs(players) do
            if not player then
                return
            end

            local player_meta = player:get_meta()
            local player_pos = player:get_pos()
            local biome_data = minetest.get_biome_data(player_pos)
            local player_biome_name = player_meta:get_string('everness_biome_name')
            local is_underground = player_meta:get_int('everness_is_underground')

            if not biome_data then
                return
            end

            local biome_name = minetest.get_biome_name(biome_data.biome)

            if not biome_name then
                return
            end

            local should_flip_data = should_flip(player)

            -- flip sun/moon when morning/afternoon
            if player_biome_name == biome_name and should_flip_data.should_flip then
                if skybox_defs[biome_name] then
                    if skybox_defs[biome_name].sun_parameters then
                        local sun_params = table.copy(skybox_defs[biome_name].sun_parameters)

                        if should_flip_data.current_time == 2 then
                            sun_params.texture = sun_params.texture .. '^[transformFY'
                        end

                        player:set_sun(sun_params)
                    end

                    -- if skybox_defs[biome_name].moon_parameters then
                    --     player:set_moon(skybox_defs[biome_name].moon_parameters)
                    -- else
                    --     player:set_moon()
                    -- end
                end
            end

            if player_biome_name ~= biome_name then
                player_meta:set_string('everness_biome_name', biome_name)

                if skybox_defs[biome_name] then
                    if skybox_defs[biome_name].sun_parameters then
                        local sun_params = table.copy(skybox_defs[biome_name].sun_parameters)

                        -- flip sun when afternoon
                        if should_flip_data.current_time == 2 then
                            sun_params.texture = sun_params.texture .. '^[transformFY'
                        end

                        player:set_sun(sun_params)
                    else
                        player:set_sun()
                    end

                    if skybox_defs[biome_name].moon_parameters then
                        player:set_moon(skybox_defs[biome_name].moon_parameters)
                    else
                        player:set_moon()
                    end

                    if skybox_defs[biome_name].star_parameters then
                        player:set_stars(skybox_defs[biome_name].star_parameters)
                    else
                        -- passing empty object otherwise it will break on MT 5.6.0
                        player:set_stars({})
                    end

                    if skybox_defs[biome_name].sky_parameters then
                        player:set_sky(skybox_defs[biome_name].sky_parameters)
                    else
                        player:set_sky()
                    end

                    if skybox_defs[biome_name].cloud_parameters then
                        player:set_clouds(skybox_defs[biome_name].cloud_parameters)
                    else
                        player:set_clouds()
                    end
                else
                    player:set_sun()
                    player:set_moon()
                    -- passing empty object otherwise it will break on MT 5.6.0
                    player:set_stars({})
                    player:set_sky()
                    player:set_clouds()
                end
            end

            if player_pos.y <= -256 and is_underground == 0 or (is_underground ~= 0 and player_meta:get_string('everness_biome_name') ~= biome_name) then
                -- hide sun, moon, stars ... underground
                player_meta:set_int('everness_is_underground', 1)

                player:set_sun({
                    visible = false,
                    sunrise_visible = false
                })

                player:set_moon({
                    visible = false
                })

                player:set_stars({
                    visible = false
                })

            elseif player_pos.y > -256 and is_underground ~= 0 or (is_underground == 0 and player_meta:get_string('everness_biome_name') ~= biome_name) then
                -- show sun, moon, stars ... underground
                player_meta:set_int('everness_is_underground', 0)

                player:set_sun({
                    visible = true
                })

                player:set_moon({
                    visible = true
                })

                player:set_stars({
                    visible = true,
                    sunrise_visible = true
                })
            end
        end

        timer = 0
    end
end)

minetest.register_on_joinplayer(function(player, last_login)
    local player_meta = player:get_meta()

    player_meta:set_string('everness_biome_name', '')
    player_meta:set_int('everness_is_underground', 0)
    player_meta:set_int('everness_timeofday', 0)
end)
