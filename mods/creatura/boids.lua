-----------
-- Boids --
-----------

local abs = math.abs
local atan2 = math.atan2
local sin = math.sin
local cos = math.cos

local function average_angle(tbl)
	local sum_sin, sum_cos = 0, 0
	for _, v in pairs(tbl) do
		sum_sin = sum_sin + sin(v)
		sum_cos = sum_cos + cos(v)
	end
	return atan2(sum_sin, sum_cos)
end

local function average(tbl)
	local sum = 0
	for _,v in pairs(tbl) do -- Get the sum of all numbers in t
	  sum = sum + v
	end
	return sum / #tbl
end

local function interp_rad(a, b, w)
	local cs = (1 - w) * cos(a) + w * cos(b)
	local sn = (1 - w) * sin(a) + w * sin(b)
	return atan2(sn, cs)
end

local vec_add = vector.add
local vec_dir = vector.direction
local vec_dist = vector.distance
local vec_divide = vector.divide
local vec_normal = vector.normalize

local function get_average_pos(vectors)
	local sum = {x = 0, y = 0, z = 0}
	for _, vec in pairs(vectors) do sum = vec_add(sum, vec) end
	return vec_divide(sum, #vectors)
end

local function dist_2d(pos1, pos2)
	local a = vector.new(
		pos1.x,
		0,
		pos1.z
	)
	local b = vector.new(
		pos2.x,
		0,
		pos2.z
	)
	return vec_dist(a, b)
end

local yaw2dir = minetest.yaw_to_dir
local dir2yaw = minetest.dir_to_yaw

-- Get Boid Members --

function creatura.get_boid_cached(self)
	local pos = self.object:get_pos()
	if not pos then return end
	local radius = self.tracking_range * 0.5 or 4
	local members = self._movement_data.boids or {}
	local max_boids = self.max_boids or 7
	if #members > 0 then
		for i = #members, 1, -1 do
			local object = members[i]
			if not object or not object:get_yaw() then members[i] = nil end
		end
		if #members >= max_boids then return members end
	end
	local objects = minetest.get_objects_inside_radius(pos, radius)
	if #objects < 2 then return {} end
	for _, object in ipairs(objects) do
		local ent = object and object ~= self.object and object:get_luaentity()
		if ent
		and ent.name == self.name then
			local move_data = ent._movement_data
			if move_data
			and (not move_data.boids
			or #move_data.boids < max_boids) then
				table.insert(members, object)
			end
		end
		if #members >= max_boids then break end
	end
	self._movement_data.boids = members

	return members
end

-- Calculate Boid Movement Direction

function creatura.get_boid_dir(self)
	local pos = self.object:get_pos()
	if not pos then return end
	local boids = creatura.get_boid_cached(self)
	if #boids < 2 then return end
	local pos_no, pos_sum = 0, {x = 0, y = 0, z = 0}
	local sum_sin, sum_cos = 0, 0
	local lift_no, lift_sum = 0, 0

	local vel
	local boid_pos
	local closest_pos
	for _, object in ipairs(boids) do
		if object then
			boid_pos, vel = object:get_pos(), object:get_velocity()
			if boid_pos then
				local obj_yaw = object:get_yaw()
				pos_no, pos_sum = pos_no + 1, vec_add(pos_sum, boid_pos)
				sum_sin, sum_cos = sum_sin + sin(obj_yaw), sum_cos + cos(obj_yaw)
				lift_no, lift_sum = lift_no + 1, lift_sum + vel.y
				if not closest_pos
				or vec_dist(pos, boid_pos) < vec_dist(pos, closest_pos) then
					closest_pos = boid_pos
				end
			end
		end
	end
	if not closest_pos then return end
	local center = vec_divide(pos_sum, pos_no)
	local lift = lift_sum / lift_no

	local angle_sin, angle_cos
	local radius = self.tracking_range * 0.5 or 4
	local dist_factor = (radius - vec_dist(pos, closest_pos)) / radius

	local alignment = atan2(sum_sin, sum_cos)
	local seperation = dir2yaw(vec_dir(closest_pos, pos))
	local cohesion = dir2yaw(vec_dir(pos, center))
	if dist_factor > 0.9 then
		seperation = interp_rad(alignment, seperation, 0.5)
		angle_sin, angle_cos = sin(seperation), cos(seperation)
	else
		angle_sin, angle_cos = sin(cohesion), cos(cohesion)
	end
	local angle = atan2(angle_sin + sin(alignment), angle_cos + cos(alignment))

	local dir = yaw2dir(angle)
	dir.y = lift
	return vector.normalize(dir), boids
end

-- Deprecated

function creatura.get_boid_members(pos, radius, name)
	local objects = minetest.get_objects_inside_radius(pos, radius)
	if #objects < 2 then return {} end
	local members = {}
	local max_boid = minetest.registered_entities[name].max_boids or 7
	for i = 1, #objects do
		if #members > max_boid then break end
		local object = objects[i]
		if object:get_luaentity()
		and object:get_luaentity().name == name then
			table.insert(members, object)
		end
	end
	if #members > 1 then
		for _, object in ipairs(members) do
			local ent = object and object:get_luaentity()
			if ent then
				ent._movement_data.boids = members
			end
		end
	end
	return members
end

function creatura.get_boid_angle(self, _boids, range)
	local pos = self.object:get_pos()
	local boids = _boids or creatura.get_boid_members(pos, range or 4, self.name)
	if #boids < 3 then return end
	local yaw = self.object:get_yaw()
	local lift = self.object:get_velocity().y
	-- Add Boid data to tables
	local closest_pos
	local positions = {}
	local angles = {}
	local lifts = {}
	for i = 1, #boids do
		local boid = boids[i]
		if boid:get_pos() then
			local vel = boid:get_velocity()
			if boid ~= self.object
			and (abs(vel.x) > 0.1
			or abs(vel.z) > 0.1) then
				local boid_pos = boid:get_pos()
				table.insert(positions, boid_pos)
				table.insert(lifts, vec_normal(vel).y)
				table.insert(angles, boid:get_yaw())
				if not closest_pos
				or vec_dist(pos, boid_pos) < vec_dist(pos, closest_pos) then
					closest_pos = boid_pos
				end
			end
		end
	end
	if #positions < 3 then return end
	local center = get_average_pos(positions)
	local dir2closest = vec_dir(pos, closest_pos)
	-- Calculate Parameters
	local alignment = average_angle(angles)
	center = vec_add(center, yaw2dir(alignment))
	local dir2center = vec_dir(pos, center)
	local seperation = yaw + -(dir2yaw(dir2closest) - yaw)
	local cohesion = dir2yaw(dir2center)
	local params = {alignment}
	if dist_2d(pos, closest_pos) < (self.boid_seperation or self.width * 3) then
		table.insert(params, seperation)
	elseif dist_2d(pos, center) > (#boids * 0.33) * (self.boid_seperation or self.width * 3) then
		table.insert(params, cohesion)
	end
	-- Vertical Params
	local vert_alignment = average(lifts)
	local vert_seperation = (self.speed or 2) * -dir2closest.y
	local vert_cohesion = (self.speed or 2) * dir2center.y
	local vert_params = {vert_alignment}
	if math.abs(pos.y - closest_pos.y) < (self.boid_seperation or self.width * 3) then
		table.insert(vert_params, vert_seperation)
	elseif math.abs(pos.y - closest_pos.y) > 1.5 * (self.boid_seperation or self.width * 3) then
		table.insert(vert_params, vert_cohesion + (lift - vert_cohesion) * 0.1)
	end
	return average_angle(params), average(vert_params)
end
