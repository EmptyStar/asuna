--
-- Sounds
--

function too_many_stones.node_sound_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "", gain = 1.0}
	table.dug = table.dug or
			{name = "tms_dug_node", gain = 0.25}
	table.place = table.place or
			{name = "tms_place_node_hard", gain = 1.0}
	return table
end

function too_many_stones.node_sound_stone_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "tms_hard_footstep", gain = 0.2}
	table.dig = table.dig or
			{name = "tms_dig_cracky", gain = 0.4}
	table.dug = table.dug or
			{name = "tms_break_node_hard", gain = 10.0}
	too_many_stones.node_sound_defaults(table)
	return table
end

function too_many_stones.node_sound_dirt_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "tms_dirt_footstep", gain = 0.25}
	table.dig = table.dig or
			{name = "tms_dig_crumbly", gain = 0.4}
	table.dug = table.dug or
			{name = "tms_dirt_footstep", gain = 1.0}
	table.place = table.place or
			{name = "tms_place_node", gain = 1.0}
	too_many_stones.node_sound_defaults(table)
	return table
end

function too_many_stones.node_sound_sand_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "tms_sand_footstep", gain = 0.05}
	table.dug = table.dug or
			{name = "tms_sand_footstep", gain = 0.15}
	table.place = table.place or
			{name = "tms_place_node", gain = 1.0}
	too_many_stones.node_sound_defaults(table)
	return table
end

function too_many_stones.node_sound_gravel_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "tms_gravel_footstep", gain = 0.25}
	table.dig = table.dig or
			{name = "tms_gravel_dig", gain = 0.35}
	table.dug = table.dug or
			{name = "tms_gravel_dug", gain = 1.0}
	table.place = table.place or
			{name = "tms_place_node", gain = 1.0}
	too_many_stones.node_sound_defaults(table)
	return table
end

function too_many_stones.node_sound_wood_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "tms_wood_footstep", gain = 0.15}
	table.dig = table.dig or
			{name = "tms_dig_choppy", gain = 0.4}
	table.dug = table.dug or
			{name = "tms_wood_footstep", gain = 1.0}
	too_many_stones.node_sound_defaults(table)
	return table
end

function too_many_stones.node_sound_leaves_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "tms_grass_footstep", gain = 0.45}
	table.dug = table.dug or
			{name = "tms_grass_footstep", gain = 0.7}
	table.place = table.place or
			{name = "tms_place_node", gain = 1.0}
	too_many_stones.node_sound_defaults(table)
	return table
end

function too_many_stones.node_sound_glass_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "tms_glass_footstep", gain = 0.3}
	table.dig = table.dig or
			{name = "tms_glass_footstep", gain = 0.5}
	table.dug = table.dug or
			{name = "tms_break_glass", gain = 1.0}
	too_many_stones.node_sound_defaults(table)
	return table
end

function too_many_stones.node_sound_ice_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "tms_ice_footstep", gain = 0.15}
	table.dig = table.dig or
			{name = "tms_ice_dig", gain = 0.5}
	table.dug = table.dug or
			{name = "tms_ice_dug", gain = 0.5}
	too_many_stones.node_sound_defaults(table)
	return table
end

function too_many_stones.node_sound_metal_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "tms_metal_footstep", gain = 0.2}
	table.dig = table.dig or
			{name = "tms_dig_metal", gain = 0.5}
	table.dug = table.dug or
			{name = "tms_dug_metal", gain = 0.5}
	table.place = table.place or
			{name = "tms_place_node_metal", gain = 0.5}
	too_many_stones.node_sound_defaults(table)
	return table
end

function too_many_stones.node_sound_water_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "tms_water_footstep", gain = 0.2}
	too_many_stones.node_sound_defaults(table)
	return table
end

function too_many_stones.node_sound_snow_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "tms_snow_footstep", gain = 0.2}
	table.dig = table.dig or
			{name = "tms_snow_footstep", gain = 0.3}
	table.dug = table.dug or
			{name = "tms_snow_footstep", gain = 0.3}
	table.place = table.place or
			{name = "tms_place_node", gain = 1.0}
	too_many_stones.node_sound_defaults(table)
	return table
end
