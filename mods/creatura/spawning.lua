--------------
-- Spawning --
--------------

creatura.registered_mob_spawns = {}

local walkable_nodes = {}

minetest.register_on_mods_loaded(function()
	for name in pairs(minetest.registered_nodes) do
		if name ~= "air" and name ~= "ignore" then
			if minetest.registered_nodes[name].walkable then
				table.insert(walkable_nodes, name)
			end
		end
	end
end)

-- Math --

local abs = math.abs
local ceil = math.ceil
local pi = math.pi
local random = math.random
local min, max = math.min, math.max

local function vec_raise(v, n)
	return {x = v.x, y = v.y + n, z = v.z}
end

local vec_add, vec_dist, vec_sub = vector.add, vector.distance, vector.subtract

-- Registration --

local creative = minetest.settings:get_bool("creative_mode")

local function format_name(str)
	if str then
		if str:match(":") then str = str:split(":")[2] end
		return (string.gsub(" " .. str, "%W%l", string.upper):sub(2):gsub("_", " "))
	end
end

function creatura.register_spawn_egg(name, col1, col2, inventory_image) -- deprecated
	if col1 and col2 then
		local base = "(creatura_spawning_crystal_primary.png^[multiply:#" .. col1 .. ")"
		local spots = "(creatura_spawning_crystal_secondary.png^[multiply:#" .. col2 .. ")"
		inventory_image = base .. "^" .. spots
	end
	local mod_name = name:split(":")[1]
	local mob_name = name:split(":")[2]
	minetest.register_craftitem(mod_name .. ":spawn_" .. mob_name, {
		description = "Spawn " .. format_name(name),
		inventory_image = inventory_image,
		stack_max = 99,
		on_place = function(itemstack, _, pointed_thing)
			local mobdef = minetest.registered_entities[name]
			local spawn_offset = abs(mobdef.collisionbox[2])
			local pos = minetest.get_pointed_thing_position(pointed_thing, true)
			pos.y = (pos.y - 0.4) + spawn_offset
			local object = minetest.add_entity(pos, name)
			if object then
				object:set_yaw(random(1, 6))
				object:get_luaentity().last_yaw = object:get_yaw()
			end
			if not creative then
				itemstack:take_item()
				return itemstack
			end
		end
	})
end

function creatura.register_spawn_item(name, def)
	local inventory_image
	if not def.inventory_image
	and def.col1 and def.col2 then
		local base = "(creatura_spawning_crystal_primary.png^[multiply:#" .. def.col1 .. ")"
		local spots = "(creatura_spawning_crystal_secondary.png^[multiply:#" .. def.col2 .. ")"
		inventory_image = base .. "^" .. spots
	end
	local mod_name = name:split(":")[1]
	local mob_name = name:split(":")[2]
	def.description = def.description or "Spawn " .. format_name(name)
	def.inventory_image = def.inventory_image or inventory_image
	def.on_place = function(itemstack, player, pointed_thing)
		local pos = minetest.get_pointed_thing_position(pointed_thing, true)
		if minetest.is_protected(pos, player and player:get_player_name() or "") then return end
		local mobdef = minetest.registered_entities[name]
		local spawn_offset = abs(mobdef.collisionbox[2])
		pos.y = (pos.y - 0.49) + spawn_offset
		if def.antispam then
			local objs = minetest.get_objects_in_area(vec_sub(pos, 0.51), vec_add(pos, 0.51))
			for _, obj in ipairs(objs) do
				if obj
				and obj:get_luaentity()
				and obj:get_luaentity().name == name then
					return
				end
			end
		end
		local object = minetest.add_entity(pos, name)
		if object then
			object:set_yaw(random(0, pi * 2))
			object:get_luaentity().last_yaw = object:get_yaw()
		end
		if not minetest.is_creative_enabled(player:get_player_name())
		or def.consume_in_creative then
			itemstack:take_item()
			return itemstack
		end
	end
	minetest.register_craftitem(mod_name .. ":spawn_" .. mob_name, def)
end

function creatura.register_mob_spawn(name, def)
	local spawn = {
		chance = def.chance or 5,
		min_height = def.min_height or 0,
		max_height = def.max_height or 128,
		min_time = def.min_time or 0,
		max_time = def.max_time or 24000,
		min_light = def.min_light or 6,
		max_light = def.max_light or 15,
		min_group = def.min_group or 1,
		max_group = def.max_group or 4,
		nodes = def.nodes or nil,
		biomes = def.biomes or nil,
		spawn_cluster = def.spawn_cluster or false,
		spawn_on_gen = def.spawn_on_gen or false,
		spawn_in_nodes = def.spawn_in_nodes or false,
		spawn_cap = def.spawn_cap or 5,
		send_debug = def.send_debug or false
	}
	creatura.registered_mob_spawns[name] = spawn
end

creatura.registered_on_spawns = {}

function creatura.register_on_spawn(name, func)
	if not creatura.registered_on_spawns[name] then
		creatura.registered_on_spawns[name] = {}
	end
	table.insert(creatura.registered_on_spawns[name], func)
end

-- Utility Functions --

local function table_contains(tbl, val)
	for _, v in pairs(tbl) do
		if v == val then
			return true
		end
	end
	return false
end

local function get_spawnable_mobs(pos, mapgen)
	local biome = minetest.get_biome_name(minetest.get_biome_data(pos).biome)
	if not biome then return end
	local mobs = {}
	for mob, data in pairs(creatura.registered_mob_spawns) do
		local biome_valid = data.biomes and table_contains(data.biomes, biome)
		if (biome_valid
		or data.nodes)
		and (not mapgen
		or data.spawn_on_gen)
		and not data.spawn_in_nodes then
			table.insert(mobs, mob)
		end
	end
	return mobs
end

local function is_spawn_node(name, spawn_nodes)
	for _, val in ipairs(spawn_nodes) do
		if val:match("^group:") then
			local group = val:split(":")[2]
			if minetest.get_item_group(name, group) > 0 then
				return true
			end
		elseif val == name then
			return true
		end
	end
	return false
end

-- Spawning Function --

local min_spawn_radius = 32
local max_spawn_radius = 128

local function execute_spawns(player)
	if not player:get_pos() then return end
	local pos = player:get_pos()

	local spawn_pos_center = {
		x = pos.x + random(-max_spawn_radius, max_spawn_radius),
		y = pos.y,
		z = pos.z + random(-max_spawn_radius, max_spawn_radius)
	}

	local spawnable_mobs = get_spawnable_mobs(spawn_pos_center)
	if spawnable_mobs
	and #spawnable_mobs > 0 then
		local mob = spawnable_mobs[random(#spawnable_mobs)]
		local spawn = creatura.registered_mob_spawns[mob]
		if not spawn
		or random(spawn.chance or 2) > 1 then return end

		-- Spawn cap check
		local objects = minetest.get_objects_inside_radius(pos, max_spawn_radius)
		local object_count = 0
		for _, object in ipairs(objects) do
			if creatura.is_alive(object)
			and not object:is_player()
			and object:get_luaentity().name == mob then
				object_count = object_count + 1
			end
		end
		if object_count >= spawn.spawn_cap then
			return
		end

		local index_func
		if spawn.spawn_in_nodes then
			index_func = minetest.find_nodes_in_area
		else
			index_func = minetest.find_nodes_in_area_under_air
		end
		local spawn_on = spawn.nodes or walkable_nodes
		if type(spawn_on) == "string" then
			spawn_on = {spawn_on}
		end
		local spawn_y_array = index_func(
			vec_raise(spawn_pos_center, -max_spawn_radius),
			vec_raise(spawn_pos_center, max_spawn_radius),
			spawn_on)
		if spawn_y_array[1] then
			local spawn_pos = spawn_y_array[1]
			local dist = vec_dist(pos, spawn_pos)
			if dist < min_spawn_radius or dist > max_spawn_radius then
				return
			end

			if spawn_pos.y > spawn.max_height
			or spawn_pos.y < spawn.min_height then
				return
			end

			if not spawn.spawn_in_nodes then
				spawn_pos = vec_raise(spawn_pos, 1)
			end

			local tod = (minetest.get_timeofday() or 0) * 24000

			local min_time = spawn.min_time
			local max_time = spawn.max_time

			local bounds_in = tod >= min_time and tod <= max_time
			local bounds_ex = tod >= max_time or tod <= min_time

			if (max_time > min_time and not bounds_in)
			or (min_time > max_time and not bounds_ex) then
				return
			end

			local light = minetest.get_node_light(spawn_pos) or 7

			if light > spawn.max_light
			or light < spawn.min_light then
				return
			end

			local mob_def = minetest.registered_entities[mob]
			local mob_width = mob_def.collisionbox[4]
			local mob_height = max(0, mob_def.collisionbox[5] - mob_def.collisionbox[2])

			if not creatura.is_pos_moveable(spawn_pos, mob_width, mob_height) then
				return
			end

			local group_size = random(spawn.min_group or 1, spawn.max_group or 1)
			group_size = min(spawn.spawn_cap - object_count, group_size)

			if spawn.spawn_cluster then
				minetest.add_node(spawn_pos, {name = "creatura:spawn_node"})
				local meta = minetest.get_meta(spawn_pos)
				meta:set_string("mob", mob)
				meta:set_int("cluster", group_size)
			else
				for _ = 1, group_size do
					spawn_pos = {
						x = spawn_pos.x + random(-3, 3),
						y = spawn_pos.y,
						z = spawn_pos.z + random(-3, 3)
					}
					spawn_pos = creatura.get_ground_level(spawn_pos, 4)
					minetest.add_node(spawn_pos, {name = "creatura:spawn_node"})
					local meta = minetest.get_meta(spawn_pos)
					meta:set_string("mob", mob)
				end
			end
			if spawn.send_debug then
				minetest.chat_send_all(mob .. " spawned at " .. minetest.pos_to_string(spawn_pos))
			end
		end
	end
end

local spawn_step = tonumber(minetest.settings:get("creatura_spawn_step")) or 15

local spawn_tick = 0

minetest.register_globalstep(function(dtime)
	if #creatura.registered_mob_spawns < 1 then return end
	spawn_tick = spawn_tick - dtime
	if spawn_tick <= 0 then
		for _, player in ipairs(minetest.get_connected_players()) do
			execute_spawns(player)
		end
		spawn_tick = spawn_step
	end
end)

-- Mapgen Spawning --

local mapgen_spawning = minetest.settings:get_bool("creatura_mapgen_spawning", true)

local mapgen_spawning_int = tonumber(minetest.settings:get("creatura_mapgen_spawn_interval")) or 5

local spawn_cooldown = 1

local data = {}
minetest.register_on_generated(function(minp, maxp)
	if not mapgen_spawning then return end
	spawn_cooldown = spawn_cooldown - 1
	if spawn_cooldown <= 0 then
		local min_x, max_x = minp.x, maxp.x
		local min_y, max_y = minp.y, maxp.y
		local min_z, max_z = minp.z, maxp.z
		local mobs = get_spawnable_mobs({
			x = min_x + (max_x - min_x) * 0.5,
			y = min_y + (max_y - min_y) * 0.5,
			z = min_z + (max_z - min_z) * 0.5
		}, true)
		if not mobs then spawn_cooldown = mapgen_spawning_int return end
		local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
		local area = VoxelArea:new{MinEdge = emin, MaxEdge = emax}
		vm:get_data(data)
		for z = min_z + 8, max_z - 7, 8 do
			for x = min_x + 8, max_x - 7, 8 do
				local mob = #mobs > 0 and mobs[random(#mobs)]
				if mob then
					local spawn = creatura.registered_mob_spawns[mob]
					for y = min_y, max_y do
						if y > spawn.max_height
						or y < spawn.min_height then
							break
						end
						local vi = area:index(x, y, z)
						local vi_name = minetest.get_name_from_content_id(data[vi])
						if spawn.spawn_in_nodes
						and is_spawn_node(vi_name, spawn.nodes) then
							-- Add Spawn Node to Map
							data[vi] = minetest.get_content_id("creatura:spawn_node")
							vm:set_data(data)
							vm:write_to_map()
							-- Apply Meta
							local group_size = random(spawn.min_group or 1, spawn.max_group or 1)
							local meta = minetest.get_meta({x = x, y = y, z = z})
							meta:set_string("mob", mob)
							meta:set_int("cluster", group_size)
							spawn_cooldown = mapgen_spawning_int
							return
						end
						local vi_n = area:index(x, y - 1, z)
						local vi_n_name = minetest.get_name_from_content_id(data[vi_n])
						if not creatura.get_node_def(vi_name).walkable
						and ((spawn.nodes and is_spawn_node(vi_n_name, spawn.nodes))
						or (not spawn.nodes and creatura.get_node_def(vi_n_name).walkable)) then
							-- Add Spawn Node to Map
							data[vi] = minetest.get_content_id("creatura:spawn_node")
							vm:set_data(data)
							vm:write_to_map()
							-- Apply Meta
							local group_size = random(spawn.min_group or 1, spawn.max_group or 1)
							local meta = minetest.get_meta({x = x, y = y, z = z})
							meta:set_string("mob", mob)
							meta:set_int("cluster", group_size)
							spawn_cooldown = mapgen_spawning_int
							return
						end
					end
				end
			end
		end
	end
end)

-- Node --

minetest.register_node("creatura:spawn_node", {
	drawtype = "airlike",
	groups = {not_in_creative_inventory = 1},
	walkable = false
})

local spawn_interval = tonumber(minetest.settings:get("creatura_spawn_interval")) or 10

minetest.register_abm({
	label = "Creatura Spawning",
	nodenames = {"creatura:spawn_node"},
	interval = spawn_interval,
	chance = 1,
	action = function(pos)
		local meta = minetest.get_meta(pos)
		local name = meta:get_string("mob") or ""
		if name == "" then minetest.remove_node(pos) return end
		local amount = meta:get_int("cluster")
		local obj
		if amount > 0 then
			for _ = 1, amount do
				obj = minetest.add_entity(pos, name)
			end
			minetest.log("action",
				"[Creatura] Spawned " .. amount .. " " .. name .. " at " .. minetest.pos_to_string(pos))
		else
			obj = minetest.add_entity(pos, name)
			minetest.log("action",
				"[Creatura] Spawned a " .. name .. " at " .. minetest.pos_to_string(pos))
		end
		minetest.remove_node(pos)
		if obj
		and creatura.registered_on_spawns[name]
		and #creatura.registered_on_spawns[name] > 0 then
			for i = 1, #creatura.registered_on_spawns[name] do
				local func = creatura.registered_on_spawns[name][i]
				func(obj:get_luaentity(), pos)
				if not obj:get_yaw() then break end
			end
		end
	end,
})

--[[minetest.register_lbm({
	name = "creatura:spawning",
	nodenames = {"creatura:spawn_node"},
	run_at_every_load = true,
	action = function(pos)
		local meta = minetest.get_meta(pos)
		local name = meta:get_string("mob")
		local amount = meta:get_int("cluster")
		local obj
		if amount > 0 then
			for i = 1, amount do
				obj = minetest.add_entity(pos, name)
			end
		else
			obj = minetest.add_entity(pos, name)
		end
		minetest.remove_node(pos)
		if obj
		and creatura.registered_on_spawns[name]
		and #creatura.registered_on_spawns[name] > 0 then
			for i = 1, #creatura.registered_on_spawns[name] do
				local func = creatura.registered_on_spawns[name][i]
				func(obj:get_luaentity(), pos)
			end
		end
	end,
})]]

------------------
-- ABM Spawning --
------------------

--[[creatura.register_abm_spawn("mymod:mymob", {
	chance = 3000,
	interval = 30,
	min_height = 0,
	max_height = 128,
	min_light = 1,
	max_light = 15,
	min_group = 1,
	max_group = 4,
	nodes = {"group:soil", "group:stone"},
	neighbors = {"air"},
	spawn_on_load = false,
	spawn_in_nodes = false,
	spawn_cap = 5
})]]

local protected_spawn = minetest.settings:get_bool("creatura_protected_spawn", true)
local abr = (tonumber(minetest.get_mapgen_setting("active_block_range")) or 4) * 16
local max_per_block = tonumber(minetest.settings:get("creatura_mapblock_limit")) or 12
local max_in_abr = tonumber(minetest.settings:get("creatura_abr_limit")) or 24
local min_abm_dist = tonumber(minetest.settings:get("creatura_min_abm_dist")) or 32

local function can_spawn(pos, width, height)
	local pos2
	local w_iter = width / ceil(width)
	for y = 0, height, height / ceil(height) do
		for z = -width, width, w_iter do
			for x = -width, width, w_iter do
				pos2 = {x = pos.x + x, y = pos.y + y, z = pos.z + z}
				local def = creatura.get_node_def(pos2)
				if def.walkable then return false end
			end
		end
	end
	return true
end

function creatura.register_abm_spawn(mob, def)
	local chance = def.chance or 3000
	local interval = def.interval or 30
	local min_height = def.min_height or 0
	local max_height = def.max_height or 128
	local min_time = def.min_time or 0
	local max_time = def.max_time or 24000
	local min_light = def.min_light or 1
	local max_light = def.max_light or 15
	local min_group = def.min_group or 1
	local max_group = def.max_group or 4
	local block_protected = def.block_protected_spawn or false
	local biomes = def.biomes or {}
	local nodes = def.nodes or {"group:soil", "group:stone"}
	local neighbors = def.neighbors or {"air"}
	local spawn_on_load = def.spawn_on_load or false
	local spawn_in_nodes = def.spawn_in_nodes or false
	local spawn_cap = def.spawn_cap or 5

	local function spawn_func(pos, _, _, aocw)

		if not spawn_in_nodes then
			pos.y = pos.y + 1
		end

		if (not protected_spawn
		or block_protected)
		and minetest.is_protected(pos, "") then
			return
		end

		if spawn_on_load  then -- Manual checks for LBMs
			if random(chance) > 1 then return end
			if not minetest.find_node_near(pos, 1, neighbors) then return end
			if pos.y > max_height or pos.y < min_height then return end
		end

		local tod = (minetest.get_timeofday() or 0) * 24000

		local bounds_in = tod >= min_time and tod <= max_time
		local bounds_ex = tod >= max_time or tod <= min_time

		if (max_time > min_time and not bounds_in)
		or (min_time > max_time and not bounds_ex) then
			return
		end

		local light = minetest.get_node_light(pos) or 7

		if light > max_light
		or light < min_light then
			return
		end

		if aocw
		and aocw >= max_per_block then
			return
		end

		if biomes
		and #biomes > 0 then
			local biome_id = minetest.get_biome_data(pos).biome
			local biome_name = minetest.get_biome_name(biome_id)
			local is_spawn_biome = false
			for _, biome in ipairs(biomes) do
				if biome:match("^" .. biome_name) then
					is_spawn_biome = true
					break
				end
			end
			if not is_spawn_biome then return end
		end

		local mob_count = 0
		local plyr_found = false

		local objects = minetest.get_objects_inside_radius(pos, abr)

		for _, object in ipairs(objects) do
			local ent = object:get_luaentity()
			if ent
			and ent.name == mob then
				mob_count = mob_count + 1
				if mob_count > spawn_cap
				or mob_count > max_in_abr then
					return
				end
			end
			if object:is_player() then
				plyr_found = true
				if vec_dist(pos, object:get_pos()) < min_abm_dist then
					return
				end
			end
		end

		if not plyr_found then
			return
		end

		local mob_def = minetest.registered_entities[mob]
		local mob_width = mob_def.collisionbox[4]
		local mob_height = mob_def.collisionbox[5]

		if not can_spawn(pos, mob_width, mob_height) then
			return
		end

		local group_size = random(min_group or 1, max_group or 1)

		if group_size > 1 then
			for _ = 1, group_size do
				local offset = ceil(mob_width)
				local spawn_pos = creatura.get_ground_level({
					x = pos.x + random(-offset, offset),
					y = pos.y,
					z = pos.z + random(-offset, offset)
				}, 3)
				if not can_spawn(spawn_pos, mob_width, mob_height) then
					spawn_pos = pos
				end
				local obj = minetest.add_entity(spawn_pos, mob)
				if obj
				and creatura.registered_on_spawns[mob]
				and #creatura.registered_on_spawns[mob] > 0 then
					for i = 1, #creatura.registered_on_spawns[mob] do
						local func = creatura.registered_on_spawns[mob][i]
						func(obj:get_luaentity(), pos)
						if not obj:get_yaw() then break end
					end
				end
			end
		else
			local obj = minetest.add_entity(pos, mob)
			if obj
			and creatura.registered_on_spawns[mob]
			and #creatura.registered_on_spawns[mob] > 0 then
				for i = 1, #creatura.registered_on_spawns[mob] do
					local func = creatura.registered_on_spawns[mob][i]
					func(obj:get_luaentity(), pos)
					if not obj:get_yaw() then break end
				end
			end
		end

		minetest.log("action",
			"[Creatura] [ABM Spawning] Spawned " .. group_size .. " " .. mob .. " at " .. minetest.pos_to_string(pos))

	end

	if spawn_on_load then
		minetest.register_lbm({
			name = mob .. "_spawning",
			label = mob .. " spawning",
			nodenames = nodes,
			run_at_every_load = false,
			action = function(pos, ...)
				spawn_func(pos, ...)
			end
		})
	else
		minetest.register_abm({
			label = mob .. " spawning",
			nodenames = nodes,
			neighbors = neighbors,
			interval = interval,
			chance = chance,
			min_y = min_height,
			max_y = max_height,
			catch_up = false,
			action = function(pos, ...)
				spawn_func(pos, ...)
			end
		})
	end
end
