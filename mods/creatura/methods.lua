-------------
-- Methods --
-------------

local pi = math.pi
local abs = math.abs
local ceil = math.ceil
local random = math.random
local atan2 = math.atan2
local sin = math.sin
local cos = math.cos

local function diff(a, b) -- Get difference between 2 angles
	return atan2(sin(b - a), cos(b - a))
end

local function clamp(val, _min, _max)
	if val < _min then
		val = _min
	elseif _max < val then
		val = _max
	end
	return val
end

local vec_add = vector.add
local vec_normal = vector.normalize
local vec_len = vector.length
local vec_dist = vector.distance
local vec_dir = vector.direction
local vec_dot = vector.dot
local vec_multi = vector.multiply
local vec_sub = vector.subtract
local yaw2dir = minetest.yaw_to_dir
local dir2yaw = minetest.dir_to_yaw

--[[local function debugpart(pos, time, tex)
	minetest.add_particle({
		pos = pos,
		texture = tex or "creatura_particle_red.png",
		expirationtime = time or 0.1,
		glow = 16,
		size = 24
	})
end]]

---------------------
-- Local Utilities --
---------------------

--[[local function raycast(pos1, pos2, liquid)
	local ray = minetest.raycast(pos1, pos2, false, liquid or false)
	local col = ray:next()
	while col do
		if col.type == "node"
		and creatura.get_node_def(col.under).walkable then
			return col
		end
		col = ray:next()
	end
end]]

--[[local function get_collision(self, yaw)
	local width = self.width
	local height = self.height
	local total_height = height + self.stepheight
	local pos = self.object:get_pos()
	if not pos then return end
	pos.y = pos.y + 0.1
	local speed = abs(vec_len(self.object:get_velocity()))
	local pos2 = vec_add(pos, vec_multi(yaw2dir(yaw), (width + 0.5) * ((speed > 1 and speed) or 1)))
	-- Localize for performance
	local pos_x, pos_z = pos.x, pos.z
	local pos2_x, pos2_z = pos2.x, pos2.z
	for x = -width, width, width / ceil(width) do
		local step_flag = false
		for y = 0, total_height, total_height / ceil(total_height) do
			if y > height
			and not step_flag then -- if we don't have to step up, no need to check if step is clear
				break
			end
			local vec1 = {
				x = cos(yaw) * ((pos_x + x) - pos_x) + pos_x,
				y = pos.y + y,
				z = sin(yaw) * ((pos_x + x) - pos_x) + pos_z
			}
			local vec2 = {
				x = cos(yaw) * ((pos2_x + x) - pos2_x) + pos2_x,
				y = vec1.y,
				z = sin(yaw) * ((pos2_x + x) - pos2_x) + pos2_z
			}
			local ray = raycast(vec1, vec2, true)
			if ray then
				if y > (self.stepheight or 1.1)
				or y > height then
					return true, ray.intersection_point
				else
					step_flag = true
				end
			end
		end
	end
	return false
end]]

local get_node_def = creatura.get_node_def
--local get_node_height = creatura.get_node_height_from_def

function creatura.get_collision_ranged(self, dir, range, water)
	local pos, yaw = self.object:get_pos(), self.object:get_yaw()
	if not pos then return end
	local width = self.width + 0.1
	local height = self.height + self.stepheight
	pos.y = pos.y + 0.01
	dir = vec_normal(dir or yaw2dir(yaw))
	yaw = dir2yaw(dir)
	local outset = math.floor(width)
	if outset < 0.5 then outset = 0.5 end
	local ahead = vec_add(pos, vec_multi(dir, outset))
	local height_half = self.height * 0.5
	local center_y = pos.y + height_half
	-- Loop
	local n_def
	local cos_yaw = cos(yaw)
	local sin_yaw = sin(yaw)
	local pos_x, pos_y, pos_z = ahead.x, ahead.y, ahead.z
	local dir_x, dir_y, dir_z = dir.x, dir.y, dir.z
	local danger = 0
	local collision
	for _ = 0, range or 4 do
		pos_x = pos_x + dir_x
		pos_y = pos_y + dir_y
		pos_z = pos_z + dir_z
		local pos2
		for x = -width, width, width / ceil(width) do
			pos2 = {
				x = cos_yaw * ((pos_x + x) - pos_x) + pos_x,
				y = pos_y,
				z = sin_yaw * ((pos_x + x) - pos_x) + pos_z
			}
			local step_flag = false
			for y = 0, height, height / ceil(height) do
				if y > self.height
				and not step_flag then
					break
				end
				pos2.y = pos_y + y
				n_def = get_node_def(pos2)
				if n_def.walkable
				or (water and (n_def.groups.liquid or 0) > 0) then
					if pos2.y - pos_y > (self.stepheight or 1.1) then
						local dist_dngr = (height_half - abs(center_y - pos2.y)) / height_half
						local field_dngr = vec_dot(dir, vec_normal(vec_dir(pos, pos2)))
						local ttl_dngr = dist_dngr + field_dngr
						if ttl_dngr > danger then
							danger = ttl_dngr
							collision = pos2
						end
					else
						step_flag = true
					end
				end
			end
		end
		if collision then return true, collision end
	end
	return false
end

function creatura.get_collision(self)
	local yaw = self.object:get_yaw()
	local pos = self.object:get_pos()
	if not pos then return end
	local width = self.width
	local height = self.height
	pos.y = pos.y + 0.01
	local m_dir = vec_normal(yaw2dir(yaw))
	local ahead = vec_add(pos, vec_multi(m_dir, width + 1)) -- 1 node out from edge of box
	-- Loop
	local cos_yaw = cos(yaw)
	local sin_yaw = sin(yaw)
	local pos_x, pos_z = ahead.x, ahead.z
	for x = -width, width, width / ceil(width) do
		local pos2 = {
			x = cos_yaw * ((pos_x + x) - pos_x) + pos_x,
			y = pos.y,
			z = sin_yaw * ((pos_x + x) - pos_x) + pos_z
		}
		for y = 0, height, height / ceil(height) do
			pos2.y = pos.y + y
			if pos2.y - pos.y > (self.stepheight or 1.1)
			and get_node_def(pos2).walkable then
				return true, pos2
			end
		end
	end
	return false
end

local get_collision = creatura.get_collision

local function get_avoidance_dir(self)
	local pos = self.object:get_pos()
	if not pos then return end
	local _, col_pos = get_collision(self)
	if col_pos then
		local vel = self.object:get_velocity()
		vel.y = 0
		local vel_len = vec_len(vel) * (1 + (self.step_delay or 0))
		local ahead = vec_add(pos, vec_normal(vel))
		local avoidance_force = vec_sub(ahead, col_pos)
		avoidance_force.y = 0
		avoidance_force = vec_multi(vec_normal(avoidance_force), (vel_len > 1 and vel_len) or 1)
		return vec_dir(pos, vec_add(ahead, avoidance_force))
	end
end

local steer_directions = {
	vec_normal({x = 1, y = 0, z = 0}),
	vec_normal({x = 1, y = 0, z = 1}),
	vec_normal({x = 0, y = 0, z = 1}),
	vec_normal({x = -1, y = 0, z = 0}),
	vec_normal({x = -1, y = 0, z = -1}),
	vec_normal({x = 0, y = 0, z = -1}),
	vec_normal({x = 1, y = 0, z = -1}),
	vec_normal({x = -1, y = 0, z = 1})
}

--[[function creatura.get_context_steering(self, goal, range)
	local pos, vel = self.object:get_pos(), self.object:get_velocity()
	if not pos then return end
	local heading = vec_normal(vel)
	local dir2goal = vec_normal(vec_dir(pos, goal))
	local output_dir = {x = 0, y = dir2goal.y, z = 0}
	range = range or 8
	if range < 2 then range = 2 end
	for _, _dir in ipairs(steer_directions) do
		local dir = table.copy(_dir)
		local score = vec_dot(dir2goal, dir)
		local interest = clamp(score, 0, 1)
		local danger = 0
		if interest >= 0 then
			local width = self.width
			local height = self.height
			local collision
			if width <= 0.5
			and height <= 1 then
				local pos2 = vec_add(pos, dir)
				local pos2_name = minetest.get_node(pos2).name
				collision = get_node_height(pos2_name) > self.stepheight and pos2
				if not collision then
					local above = {x = pos2.x, y = pos2.y + 1, z = pos2.z}
					collision = get_node_def(above).walkable and pos2
				end
			else
				local s_range = range * clamp(interest, 0.5, 1)
				_, collision = creatura.get_collision_ranged(self, dir, s_range)
			end
			if collision then
				local dir2col = vec_dir(pos, collision)
				local dist2col = vec_dist(pos, collision) - self.width
				local ahead = vec_add(pos, vec_multi(heading, self.width + dist2col))
				local avd_force = vec_normal(vec_sub(ahead, collision))
				dir.y = avd_force.y / 4
				local dot_weight = vec_dot(vec_normal(dir2col), dir2goal)
				local dist_weight = (range - dist2col) / range
				interest = interest - dot_weight
				danger = dist_weight
			end
		end
		score = clamp(interest - danger, 0, 1)
		output_dir = vector.add(output_dir, vector.multiply(dir, score))
	end
	return output_dir
end]]

local function get_collision_single(pos, water)
	local pos2 = {x = pos.x, y = pos.y, z = pos.z}
	local n_def = get_node_def(pos2)
	if n_def.walkable
	or (water and (n_def.groups.liquid or 0) > 0) then
		pos2.y = pos.y + 1
		n_def = get_node_def(pos2)
		local col_max = n_def.walkable or (water and (n_def.groups.liquid or 0) > 0)
		pos2.y = pos.y - 1
		local col_min = col_max and (n_def.walkable or (water and (n_def.groups.liquid or 0) > 0))
		if col_min then
			return pos
		else
			pos2.y = pos.y + 1
			return pos2
		end
	end
end

function creatura.get_context_steering(self, goal, range, water)
	if not goal then return end
	local pos, yaw = self.object:get_pos(), self.object:get_yaw()
	if not pos or not yaw then return end
	range = range or 8; if range < 2 then range = 2 end
	local width, height = self.width, self.height
	local dir2goal = vec_normal(vec_dir(pos, goal))
	local output_dir = {x = 0, y = dir2goal.y, z = 0}
	pos.y = (pos.y + height * 0.5)

	local collision
	local dir2col
	local dir
	for _, _dir in ipairs(steer_directions) do
		dir = {x = _dir.x, y = 0, z = _dir.z}
		local score = vec_dot(dir2goal, dir)
		local interest = clamp(score, 0, 1)
		local danger = 0
		if interest > 0 then
			if width <= 0.5
			and height <= 1 then
				collision = get_collision_single(vec_add(pos, dir), water)
			else
				_, collision = creatura.get_collision_ranged(self, dir, range, water)
			end
			if collision then
				dir2col = vec_normal(vec_dir(pos, collision))
				local dist2col = vec_dist(pos, collision) - width
				dir.y = ((dir2col.y * -1) + dir2goal.y * 1.5) / 2
				local dot_weight = vec_dot(dir2col, dir2goal)
				local dist_weight = (range - dist2col) / range
				interest = interest - dot_weight
				danger = dist_weight
			end
		end
		score = interest - danger
		output_dir = vector.add(output_dir, vector.multiply(dir, score))
	end
	return output_dir
end

-------------
-- Actions --
-------------

-- Actions are more specific behaviors used
-- to compose a Utility.

-- Move

function creatura.action_move(self, pos2, timeout, method, speed_factor, anim)
	local timer = timeout or 4
	local function func(_self)
		timer = timer - _self.dtime
		self:animate(anim or "walk")
		local safe = true
		if _self.max_fall
		and _self.max_fall > 0 then
			local pos = self.object:get_pos()
			if not pos then return end
			safe = _self:is_pos_safe(pos2)
		end
		if timer <= 0
		or not safe
		or _self:move_to(pos2, method or "creatura:obstacle_avoidance", speed_factor or 0.5) then
			return true
		end
	end
	self:set_action(func)
end

creatura.action_walk = creatura.action_move -- Support for outdated versions

-- Idle

function creatura.action_idle(self, time, anim)
	local timer = time
	local function func(_self)
		_self:set_gravity(-9.8)
		_self:halt()
		_self:animate(anim or "stand")
		timer = timer - _self.dtime
		if timer <= 0 then
			return true
		end
	end
	self:set_action(func)
end

-- Rotate on Z axis in random direction until 90 degree angle is reached

function creatura.action_fallover(self)
	local zrot = 0
	local init = false
	local dir = 1
	local rot = self.object:get_rotation()
	local function func(_self)
		if not init then
			_self:animate("stand")
			if random(2) < 2 then
				dir = -1
			end
			init = true
		end
		rot = _self.object:get_rotation()
		local goal = (pi * 0.5) * dir
		local step = _self.dtime
		if step > 0.5 then step = 0.5 end
		zrot = zrot + (pi * dir) * step
		_self.object:set_rotation({x = rot.x, y = rot.y, z = zrot})
		if (dir > 0 and zrot >= goal)
		or (dir < 0 and zrot <= goal) then return true end
	end
	self:set_action(func)
end

----------------------
-- Movement Methods --
----------------------

-- Pathfinding

local function trim_path(pos, path)
	if #path < 2 then return end
	local trim = false
	local closest
	for i = #path, 1, -1 do
		if not path[i] then break end
		if (closest
		and vec_dist(pos, path[i]) > vec_dist(pos, path[closest]))
		or trim then
			table.remove(path, i)
			trim = true
		else
			closest = i
		end
	end
	return path
end

creatura.register_movement_method("creatura:pathfind", function(self)
	local path = {}
	local box = clamp(self.width, 0.5, 1.5)
	local trimmed = false
	local init_path = false
	local function func(_self, goal, speed_factor)
		local pos = _self.object:get_pos()
		if not pos then return end
		-- Return true when goal is reached
		if vec_dist(pos, goal) < box * 1.33 then
			_self:halt()
			return true
		end
		self:set_gravity(-9.8)
		-- Get movement direction
		local steer_to = get_avoidance_dir(self, goal)
		local goal_dir = vec_dir(pos, goal)
		if steer_to
		and not init_path then
			goal_dir = steer_to
			init_path = true
		end
		if init_path
		and #path < 2 then
			path = creatura.find_lvm_path(_self, pos, goal, _self.width, _self.height, 400) or {}
		end
		if #path > 1 then
			if not trimmed then
				path = trim_path(pos, path)
				trimmed = true
				if #path < 2 then return end
			end
			goal_dir = vec_dir(pos, path[2])
			if vec_dist(vector.round(pos), creatura.get_ground_level(path[1], 1)) < box then
				table.remove(path, 1)
			end
		end
		local yaw = _self.object:get_yaw()
		local goal_yaw = dir2yaw(goal_dir)
		local speed = abs(_self.speed or 2) * speed_factor or 0.5
		local turn_rate = abs(_self.turn_rate or 5)
		-- Movement
		local yaw_diff = abs(diff(yaw, goal_yaw))
		if yaw_diff < pi * 0.25
		or steer_to then
			_self:set_forward_velocity(speed)
		else
			_self:set_forward_velocity(speed * 0.33)
		end
		if yaw_diff > 0.1 then
			_self:turn_to(goal_yaw, turn_rate)
		end
	end
	return func
end)

creatura.register_movement_method("creatura:theta_pathfind", function(self)
	local path = {}
	local box = clamp(self.width, 0.5, 1.5)
	local function func(_self, goal, speed_factor)
		local pos = _self.object:get_pos()
		if not pos then return end
		pos.y = pos.y + 0.5
		-- Return true when goal is reached
		if vec_dist(pos, goal) < box * 1.33 then
			_self:halt()
			return true
		end
		self:set_gravity(-9.8)
		-- Get movement direction
		local steer_to = get_avoidance_dir(_self, goal)
		local goal_dir = vec_dir(pos, goal)
		if steer_to then
			goal_dir = steer_to
			if #path < 1 then
				path = creatura.find_theta_path(_self, pos, goal, _self.width, _self.height, 300) or {}
			end
		end
		if #path > 0 then
			goal_dir = vec_dir(pos, path[2] or path[1])
			if vec_dist(pos, path[1]) < box then
				table.remove(path, 1)
			end
		end
		local yaw = _self.object:get_yaw()
		local goal_yaw = dir2yaw(goal_dir)
		local speed = abs(_self.speed or 2) * speed_factor or 0.5
		local turn_rate = abs(_self.turn_rate or 5)
		-- Movement
		local yaw_diff = abs(diff(yaw, goal_yaw))
		if yaw_diff < pi * 0.25
		or steer_to then
			_self:set_forward_velocity(speed)
		else
			_self:set_forward_velocity(speed * 0.33)
		end
		if yaw_diff > 0.1 then
			_self:turn_to(goal_yaw, turn_rate)
		end
	end
	return func
end)

-- Obstacle Avoidance

creatura.register_movement_method("creatura:obstacle_avoidance", function(self)
	local box = clamp(self.width, 0.5, 1.5)
	local steer_to
	local steer_timer = 0.25
	local function func(_self, goal, speed_factor)
		local pos = _self.object:get_pos()
		if not pos then return end
		self:set_gravity(-9.8)
		-- Return true when goal is reached
		if vec_dist(pos, goal) < box * 1.33 then
			_self:halt()
			return true
		end
		steer_timer = (steer_timer > 0 and steer_timer - _self.dtime) or 0.25
		-- Get movement direction
		steer_to = (steer_timer > 0 and steer_to) or (steer_timer <= 0 and get_avoidance_dir(_self))
		local goal_dir = steer_to or vec_dir(pos, goal)
		pos.y = pos.y + goal_dir.y
		local yaw = _self.object:get_yaw()
		local goal_yaw = dir2yaw(goal_dir)
		local speed = abs(_self.speed or 2) * speed_factor or 0.5
		local turn_rate = abs(_self.turn_rate or 5)
		-- Movement
		local yaw_diff = abs(diff(yaw, goal_yaw))
		if yaw_diff < pi * 0.25
		or steer_to then
			_self:set_forward_velocity(speed)
		else
			_self:set_forward_velocity(speed * 0.33)
		end
		_self:turn_to(goal_yaw, turn_rate)
	end
	return func
end)

creatura.register_movement_method("creatura:context_based_steering", function(self)
	local steer_to
	local steer_timer = 0.25
	self:set_gravity(-9.8)
	local function func(_self, goal, speed_factor)
		local pos = _self.object:get_pos()
		if not pos or not goal then return end
		if vec_dist(pos, goal) < clamp(self.width, 0.5, 1) then
			_self:halt()
			return true
		end
		-- Calculate Movement
		steer_timer = (steer_timer > 0 and steer_timer - self.dtime) or 0.25
		steer_to = (steer_timer <= 0 and creatura.get_context_steering(self, goal, 3)) or steer_to
		local speed = abs(_self.speed or 2) * speed_factor or 0.5
		local turn_rate = abs(_self.turn_rate or 5)
		-- Apply Movement
		_self:set_forward_velocity(speed)
		_self:turn_to(dir2yaw(steer_to or vec_dir(pos, goal)), turn_rate)
	end
	return func
end)
