--------------
-- Mob Meta --
--------------

-- Math --

local pi = math.pi
local pi2 = pi * 2
local abs = math.abs
local floor = math.floor
local random = math.random

local sin = math.sin
local cos = math.cos
local atan2 = math.atan2

local function diff(a, b) -- Get difference between 2 angles
	return atan2(sin(b - a), cos(b - a))
end

local vec_dir = vector.direction
local vec_dist = vector.distance
local vec_multi = vector.multiply
local vec_sub = vector.subtract
local vec_add = vector.add
local vec_normal = vector.normalize

local function vec_center(v)
	return {x = floor(v.x + 0.5), y = floor(v.y + 0.5), z = floor(v.z + 0.5)}
end

local function vec_raise(v, n)
	return {x = v.x, y = v.y + n, z = v.z}
end

local function get_sightline(pos1, pos2)
	local dir = vec_dir(pos1, pos2)
	local dist = vec_dist(pos1, pos2)
	for i = 0, dist do
		local pos
		if dist > 0 then
			pos = {
				x = pos1.x + dir.x * (i / dist),
				y = pos1.y + dir.y * (i / dist),
				z = pos1.z + dir.z * (i / dist)
			}
		else
			pos = pos1
		end
		if creatura.get_node_def(pos).walkable then
			return false
		end
	end
	return true
end

-- Local Utilities --

local function is_value_in_table(tbl, val)
	for _, v in pairs(tbl) do
		if v == val then
			return true
		end
	end
	return false
end

-------------------------
-- Physics/Vitals Tick --
-------------------------

local mob = {
	max_health = 20,
	max_breath = 30,
	fire_resistance = 0.5,
	fall_resistance = 0,
	armor_groups = {fleshy = 100},
	damage = 2,
	speed = 4,
	tracking_range = 16,
	despawn_after = nil,
	max_fall = 3,
	stepheight = 1.1,
	hitbox = {
		width = 0.5,
		height = 1
	},
	follow = {},
	fancy_collide = false,
	bouyancy_multiplier = 1,
	hydrodynamics_multiplier = 1

}

local mob_meta = {__index = mob}

function mob:indicate_damage()
	self._original_texture_mod = self._original_texture_mod or self.object:get_texture_mod()
	self.object:set_texture_mod(self._original_texture_mod .. "^[colorize:#FF000040")
	minetest.after(0.2, function()
		if creatura.is_alive(self) then
			self.object:set_texture_mod(self._original_texture_mod)
		end
	end)
end

-- Set Movement Data

function mob:move(pos, method, speed_factor, anim)
	self._movement_data.goal = pos
	self._movement_data.method = method
	self._movement_data.last_neighbor = nil
	self._movement_data.gravity = self._movement_data.gravity or -9.8
	self._movement_data.speed = (self.speed or 2) * (speed_factor or 1)
	if anim then
		self._movement_data.anim = anim
	end
end

-- Clear Movement Data

function mob:halt()
	self._movement_data = {
		goal = nil,
		method = nil,
		func = nil,
		last_neighbor = nil,
		gravity = self._movement_data.gravity or -9.8,
		speed = 0
	}
	--self.object:set_velocity({x = 0, y = 0, z = 0})
	self._path_data = {}
	self._tyaw = self.object:get_yaw() or 0
end

-- Turn to specified yaw

local function interp_rad(a, b, w)
    local cs = (1 - w) * cos(a) + w * cos(b)
    local sn = (1 - w) * sin(a) + w * sin(b)
    return atan2(sn, cs)
end

local function turn(self, tyaw, rate)
	rate = rate or 5
	local rot = self.object:get_rotation()
	local yaw = self.object:get_yaw()
	if not yaw then return end
	local step = math.min(self.dtime * rate, abs(diff(yaw, tyaw)) % (pi2))
	rot.y = interp_rad(yaw, tyaw, step)
	self.object:set_rotation(rot)
end

function mob:turn_to(tyaw, rate)
	if self.step_delay then
		self._tyaw = tyaw
		self._movement_data.turn_rate = rate or 5
		return
	end
	turn(self, tyaw, rate)
end

function mob:do_turn()
	if not self.step_delay then return end
	local tyaw = self._tyaw
	local rate = self._movement_data.turn_rate or 5
	if not tyaw then return end
	turn(self, self._tyaw, rate)
end

-- Set Gravity (default of -9.8)

function mob:set_gravity(gravity)
	self._movement_data.gravity = gravity or -9.8
end

-- Sets Velocity to desired speed in mobs current look direction

function mob:set_forward_velocity(speed)
	if self.step_delay then
		self._movement_data.horz_vel = speed
	else
		local yaw = self.object:get_yaw()
		local vel = self.object:get_velocity()
		vel.x = sin(yaw) * -speed
		vel.z = cos(yaw) * speed
		self.object:set_velocity(vel)
	end
end

-- Sets Velocity on y axis

function mob:set_vertical_velocity(speed)
	if self.step_delay then
		self._movement_data.vert_vel = speed
	else
		local vel = self.object:get_velocity()
		vel.y = speed
		self.object:set_velocity(vel)
	end
end

function mob:do_velocity()
	if not self.step_delay then return end
	local data = self._movement_data or {}
	local vel = self.object:get_velocity()
	local yaw = self.object:get_yaw()
	if not yaw then return end
	local horz_vel = data.horz_vel --or (data.gravity >= 0 and 0)
	local vert_vel = data.vert_vel --or (data.gravity >= 0 and 0)
	vel.x = (horz_vel and (sin(yaw) * -horz_vel)) or vel.x
	vel.y = vert_vel or vel.y
	vel.z = (horz_vel and (cos(yaw) * horz_vel)) or vel.z
	self.object:set_velocity(vel)
end

-- Applies knockback in 'dir'

function mob:apply_knockback(dir, power)
	if not dir then return end
	power = power or 6
	local knockback = vec_multi(dir, power)
	self.object:add_velocity(knockback)
end

-- Punch 'target'

function mob:punch_target(target) --
	target:punch(self.object, 1.0, {
		full_punch_interval = 1.0,
		damage_groups = {fleshy = self.damage or 5},
	})
end

-- Apply damage to mob

function mob:hurt(health)
	if self.protected then return end
	self.hp = self.hp - math.ceil(health)
	if self.hp < 0 then self.hp = 0 end
end

-- Add HP to mob

function mob:heal(health)
	if self.protected then return end
	self.hp = self.hp + math.ceil(health)
	if self.hp > self.max_health then
		self.hp = self.max_health
	end
end

-- Return position at center of mobs hitbox

function mob:get_center_pos()
	local pos = self.object:get_pos()
	if not pos then return end
	return vec_raise(pos, self.height * 0.5 or 0.5)
end

-- Return true if position is within box

function mob:pos_in_box(pos, size)
	if not pos then return false end
	local center = self:get_center_pos()
	if not center then return false end
	local width = size or self.width
	local height = size or (self.height * 0.5)
	if not size
	and self.width < 0.5 then
		width = 0.5
	end
	local edge_a = {
		x = center.x - width,
		y = center.y - height,
		z = center.z - width
	}
	local edge_b = {
		x = center.x + width,
		y = center.y + height,
		z = center.z + width
	}
	local minp, maxp = vector.sort(edge_a, edge_b)
	if pos.x >= minp.x
	and pos.y >= minp.y
	and pos.z >= minp.z
	and pos.x <= maxp.x
	and pos.y <= maxp.y
	and pos.z <= maxp.z then
		return true
	end
	return false
end

-- Terrain Navigation --

function mob:get_wander_pos(min_range, max_range, dir)
	local pos = vec_center(self.object:get_pos())
	pos.y = floor(pos.y + 0.5)
	if creatura.get_node_def(pos).walkable then -- Occurs if small mob is touching a fence
		local offset = vector.add(pos, vec_multi(vec_dir(pos, self.object:get_pos()), 1.5))
		pos.x = floor(offset.x + 0.5)
		pos.z = floor(offset.z + 0.5)
		pos = creatura.get_ground_level(pos, 1)
	end
	local width = self.width
	local outset = random(min_range, max_range)
	if width < 0.6 then width = 0.6 end
	local move_dir = vec_normal({
		x = random(-10, 10) * 0.1,
		y = 0,
		z = random(-10, 10) * 0.1
	})
	local pos2 = vec_add(pos, vec_multi(move_dir, width))
	if creatura.get_node_def(pos2).walkable
	and not dir then
		for _ = 1, 3 do
			move_dir = {
				x = move_dir.z,
				y = 0,
				z = move_dir.x * -1
			}
			pos2 = vec_add(pos, vec_multi(move_dir, width))
			if not creatura.get_node_def(pos2).walkable then
				break
			end
		end
	elseif dir then
		move_dir = dir
	end
	for i = 1, outset do
		local a_pos = vec_add(pos2, vec_multi(move_dir, i))
		local b_pos = {x = a_pos.x, y = a_pos.y - 1, z = a_pos.z}
		if creatura.get_node_def(a_pos).walkable
		or not creatura.get_node_def(b_pos).walkable then
			a_pos = creatura.get_ground_level(a_pos, floor(self.stepheight or 1))
		end
		if not creatura.get_node_def(a_pos).walkable then
			pos2 = a_pos
		else
			break
		end
	end
	return pos2
end

function mob:get_wander_pos_3d(min_range, max_range, dir, vert_bias)
	local pos = vec_center(self.object:get_pos())
	if creatura.get_node_def(pos).walkable then -- Occurs if small mob is touching a fence
		local offset = vector.add(pos, vec_multi(vec_dir(pos, self.object:get_pos()), 1.5))
		pos.x = floor(offset.x + 0.5)
		pos.z = floor(offset.z + 0.5)
		pos = creatura.get_ground_level(pos, 1)
	end
	local width = self.width
	local outset = random(min_range, max_range)
	if width < 0.6 then width = 0.6 end
	local move_dir = vec_normal({
		x = random(-10, 10) * 0.1,
		y = vert_bias or random(-10, 10) * 0.1,
		z = random(-10, 10) * 0.1
	})
	local pos2 = vec_add(pos, vec_multi(move_dir, width))
	if creatura.get_node_def(pos2).walkable
	and not dir then
		for _ = 1, 3 do
			move_dir = {
				x = move_dir.z,
				y = move_dir.y,
				z = move_dir.x * -1
			}
			pos2 = vec_add(pos, vec_multi(move_dir, width))
			if not creatura.get_node_def(pos2).walkable then
				break
			end
		end
	elseif dir then
		move_dir = dir
	end
	for i = 1, outset do
		local a_pos = vec_add(pos2, vec_multi(move_dir, i))
		if creatura.get_node_def(a_pos).walkable then
			a_pos = creatura.get_ground_level(a_pos, floor(self.stepheight or 1))
		end
		if not creatura.get_node_def(a_pos).walkable then
			pos2 = a_pos
		else
			break
		end
	end
	return pos2
end

function mob:is_pos_safe(pos, ignore_liquid)
	if not pos then return end
	local n_def = creatura.get_node_def(pos)
	if minetest.get_item_group(n_def.name, "igniter") > 0
	or (not ignore_liquid
	and (n_def.drawtype == "liquid"
	or creatura.get_node_def(vec_raise(pos, -1)).drawtype == "liquid")) then return false end
	local fall_safe = false
	if self.max_fall ~= 0 then
		for i = 1, self.max_fall or 3 do
			local fall_pos = {
				x = pos.x,
				y = floor(pos.y + 0.5) - i,
				z = pos.z
			}
			if creatura.get_node_def(fall_pos).walkable then
				fall_safe = true
				break
			end
		end
	else
		fall_safe = true
	end
	return fall_safe
end

-- Set mobs animation (if specified animation isn't already playing)

function mob:animate(animation)
	if not animation
	or not self.animations[animation] then return end
	if not self._anim
	or self._anim ~= animation then
		local anim = self.animations[animation]
		if anim[2] then anim = anim[random(#anim)] end
		self.object:set_animation(anim.range, anim.speed, anim.frame_blend, anim.loop)
		self._anim = animation
	end
end

-- Set texture to variable at 'id' index in 'tbl' or 'textures'

function mob:set_texture(id, tbl)
	local _table = self.textures
	if tbl then
		_table = tbl
	end
	if not _table
	or not _table[id] then
		return
	end
	local tex = _table[id]
	if type(tex) == "table" then
		self.object:set_properties({
			textures = {unpack(tex)}
		})
	else
		self.object:set_properties({
			textures = {tex}
		})
	end
	return _table[id]
end

-- Set scale to base scale times 'x' and update bordering positions

function mob:set_scale(x)
	local def = minetest.registered_entities[self.name]
	local scale = def.visual_size or {x = 1, y = 1}
	local box = def.collisionbox
	local new_box = {}
	for k, v in ipairs(box) do
		new_box[k] = v * x
	end
	self.object:set_properties({
		visual_size = {
			x = scale.x * x,
			y = scale.y * x
		},
		collisionbox = new_box
	})
	--self._border = index_box_border(self)
end

-- Fixes mob scale being changed when attached to a parent

function mob:fix_attached_scale(parent)
	local scale = self:get_visual_size()
	local parent_size = parent:get_properties().visual_size
	self.object:set_properties({
		visual_size = {
			x = scale.x / parent_size.x,
			y = scale.y / parent_size.y
		},
	})
end

-- Add sets 'id' to 'val' in permanent data

function mob:memorize(id, val)
	self.perm_data[id] = val
	return self.perm_data[id]
end

-- Remove 'id' from permanent data

function mob:forget(id)
	self.perm_data[id] = nil
end

-- Return value from 'id' in permanent data

function mob:recall(id)
	return self.perm_data[id]
end

-- Return true on interval specified by 'n'

function mob:timer(n)
	local t1 = floor(self.active_time)
	local t2 = floor(self.active_time + self.dtime)
	if t2 > t1 and t2%n == 0 then return true end
end

-- Play 'sound' from self.sounds

function mob:play_sound(sound)
	local spec = self.sounds and self.sounds[sound]
	local parameters = {object = self.object}

	if type(spec) == "table" then
		local name = spec.name
		local pitch = 1.0

		pitch = pitch - (random(-10, 10) * 0.005)

		parameters.gain = spec.gain or 1
		parameters.max_hear_distance = spec.distance or 8
		parameters.fade = spec.fade or 1
		parameters.pitch = pitch
		return minetest.sound_play(name, parameters)
	end
	return minetest.sound_play(spec, parameters)
end

-- Return current collisionbox

function mob:get_hitbox()
	if not self:get_props() then return self.collisionbox end
	return self:get_props().collisionbox
end

-- Return height of current collisionbox

function mob:get_height()
	local hitbox = self:get_hitbox()
	return hitbox[5] - hitbox[2]
end

-- Return current visual size

function mob:get_visual_size()
	if not self:get_props() then return end
	return self:get_props().visual_size
end

local function is_group_in_table(tbl, name)
	for _, v in pairs(tbl) do
		if type(v) == "string"
		and minetest.get_item_group(name, v:split(":")[2]) > 0 then
			return true
		end
	end
	return false
end

function mob:follow_wielded_item(player)
	if not player
	or not self.follow then return end
	local item = player:get_wielded_item()
	local name = item:get_name()
	if type(self.follow) == "string"
	and (name == self.follow
	or minetest.get_item_group(name, self.follow:split(":")[2]) > 0) then
		return item, name
	end
	if type(self.follow) == "table"
	and (is_value_in_table(self.follow, name)
	or is_group_in_table(self.follow, name)) then
		return item, name
	end
end

function mob:follow_item(stack)
	if not stack
	or not self.follow then return end
	local name = stack:get_name()
	if type(self.follow) == "string"
	and (name == self.follow
	or minetest.get_item_group(name, self.follow:split(":")[2]) > 0) then
		return stack, name
	end
	if type(self.follow) == "table"
	and (is_value_in_table(self.follow, name)
	or is_group_in_table(self.follow, name)) then
		return stack, name
	end
end

function mob:get_target(target)
	local alive = creatura.is_alive(target)
	if not alive then
		return false, false, nil
	end
	if type(target) == "table" then
		target = target.object
	end
	local pos = self:get_center_pos()
	if not pos then return false, false, nil end
	local tpos = target:get_pos()
	tpos.y = floor(tpos.y + 0.5)
	local line_of_sight = get_sightline(pos, tpos)
	return true, line_of_sight, tpos
end

function mob:store_nearby_objects(radius)
	local pos = self.object:get_pos()
	if not pos then return end
	local track_radius = self.tracking_range or 8
	if track_radius < 8 then track_radius = 8 end
	local objects = minetest.get_objects_inside_radius(pos, radius or track_radius)
	if #objects < 1 then return end
	local objs = {}
	for _, object in ipairs(objects) do
		if creatura.is_alive(object)
		and object ~= self.object then
			local ent = object:get_luaentity()
			local player = object:is_player()
			if (ent
			and not ent._ignore)
			or player then
				table.insert(objs, object)
			end
		end
	end
	self._nearby_objs = objs
	return objs
end

function mob:get_props()
	local props = self.properties or self.object and self.object:get_properties()
	self.properties = props
	return props
end

-- Actions

function mob:set_action(func)
	self._action = func
end

function mob:get_action()
	if type(self._action) ~= "table" then
		return self._action
	end
	return nil
end

function mob:clear_action()
	self._action = {}
	self._movement_data.goal = nil
	self._movement_data.func = nil
end

function mob:set_utility(func)
	if not self._utility_data then return end
	self._utility_data.func = func
end

function mob:get_utility()
	if not self._utility_data then return end
	return self._utility_data.utility
end

function mob:initiate_utility(utility, ...)
	local func = creatura.registered_utilities[utility]
	if not func or not self._utility_data then return end
	self._utility_data.utility = utility
	self:clear_action()
	func(...)
end

function mob:set_utility_score(n)
	self._utility_data.score = n or 0
end

function mob:get_utility_score()
	return (self._utility_data and self._utility_data.score) or 0
end

function mob:try_initiate_utility(utility, score, ...)
	if self._utility_data
	and score >= self._utility_data.score then
		self:initiate_utility(utility, ...)
		self:set_utility_score(score)
	end
end

function mob:clear_utility()
	self._utility_data = {
		utility = nil,
		func = nil,
		score = 0
	}
end

-- Functions

function mob:activate(staticdata, dtime)
	self:get_props()
	self.width = self:get_hitbox()[4] or 0.5
	self.height = self:get_height() or 1
	self._tyaw = self.object:get_yaw()
	self.last_yaw = self.object:get_yaw()
	self.in_liquid = false
	self.is_falling = false
	self.touching_ground = false

	-- Backend Data (Should not be modified unless modder knows what they're doing)
	self._movement_data = {
		goal = nil,
		method = nil,
		func = nil,
		last_neighbor = nil,
		gravity = -9.8,
		speed = 0
	}
	self._path_data = {}
	self._path = {}
	self._task = {}
	self._action = {}

	local pos = self.object:get_pos()
	local node = minetest.get_node(pos)

	if node
	and minetest.get_item_group(node.name, "liquid") > 0 then
		self.in_liquid = node.name
	end

	-- Staticdata
	local data = minetest.deserialize(staticdata)

	if data then
		local tp
		for k, v in pairs(data) do
			tp = type(v)
			if tp ~= "function"
			and tp ~= "nil"
			and tp ~= "userdata" then
				self[k] = v
			end
		end
	end

	-- Initialize Stats and Visuals
	if not self.textures then
		local textures = self:get_props().textures
		if textures then self.textures = textures end
	end

	if not self.perm_data then
		if self.memory then
			self.perm_data = self.memory
		else
			self.perm_data = {}
		end
		if #self.textures > 0 then self.texture_no = random(#self.textures) end
	end

	self.active_time = self:recall("active_time") or 0

	if self:recall("despawn_after") ~= nil then
		self.despawn_after = self:recall("despawn_after")
	end
	self._despawn = self:recall("_despawn") or nil

	if self._despawn
	and self.despawn_after
	and self.object then
		self.object:remove()
		return
	end

	self._breath =  self:recall("_breath") or (self.max_breath or 30)
	--self._border = index_box_border(self)

	if self.textures
	and self.texture_no then
		self:set_texture(self.texture_no, self.textures)
	end

	self.max_health = self.max_health or 10
	self.hp = self.hp or self.max_health

	if type(self.armor_groups) ~= "table" then
		self.armor_groups = {}
	end
	self.armor_groups.immortal = 1
	self.object:set_armor_groups(self.armor_groups)

	if self.timer
	and type(self.timer) == "number" then -- fix crash for converted mobs_redo mobs
		self.timer = function(_self, n)
			local t1 = floor(_self.active_time)
			local t2 = floor(_self.active_time + _self.dtime)
			if t2 > t1 and t2%n == 0 then return true end
		end
	end

	self:store_nearby_objects()

	if self.activate_func then
		self:activate_func(self, staticdata, dtime)
	end
end

function mob:staticdata()
	local data = {}
	data.perm_data = self.perm_data
	data.hp = self.hp or self.max_health
	data.texture_no = self.texture_no or random(#self.textures)
	return minetest.serialize(data)
end

function mob:on_step(dtime, moveresult)
	if not self.hp then return end
	self.last_yaw = self.object:get_yaw()
	self.stand_pos = self.object:get_pos()
	if not self.stand_pos then return end
	self.stand_pos.y = self.stand_pos.y + 0.01
	self.stand_node = self.stand_node or minetest.get_node(self.stand_pos)
	self.dtime = dtime or 0.09
	self.moveresult = moveresult or {}
	self.touching_ground = false
	if moveresult then
		self.touching_ground = moveresult.touching_ground
	end
	local prop_tick = self._prop_tick or 0
	prop_tick = prop_tick - 1
	if prop_tick <= 0 then
		self.stand_node = minetest.get_node(self.stand_pos)
		prop_tick = 6
	end
	if self:timer(1) then
		self.width = self:get_hitbox()[4] or 0.5
		self.height = self:get_height() or 1
	end
	if self._vitals then
		self:_vitals()
	end
	if self._physics then
		self:_physics(moveresult)
	end
	self._prop_tick = prop_tick
	if self:timer(10) then self:store_nearby_objects() end -- Reduce expensive calls
	self:do_velocity()
	self:do_turn()
	if self.utility_stack
	and self._execute_utilities then
		self:_execute_utilities()
	end
	-- Die
	if self.hp <= 0
	and self.death_func then
		self:death_func()
		self:halt()
		return
	end
	if self.step_func
	and self.perm_data then
		self:step_func(dtime, moveresult)
	end
	self.properties = nil
	self.active_time = self.active_time + dtime
	self:memorize("active_time", self.active_time)
	if self.despawn_after then
		local despawn = math.floor(self.active_time / self.despawn_after)
		if despawn > 1 then self.object:remove() return end
		if despawn > 0
		and not self._despawn then
			self._despawn = self:memorize("_despawn", true)
		end
	end
end

function mob:on_deactivate()
	self._task = {}
	self._action = {}
	if self.deactivate_func then
		self:deactivate_func(self)
	end
end

----------------
-- Object API --
----------------

-- Physics

local function collision_detection(self)
	if not creatura.is_alive(self)
	or self.fancy_collide == false then return end
	local pos = self.object:get_pos()
	local width = self.width + 0.25
	local objects = minetest.get_objects_in_area(vec_sub(pos, width), vec_add(pos, width))
	if #objects < 2 then return end
	for i = 2, #objects do
		local object = objects[i]
		if creatura.is_alive(object)
		and not self.object:get_attach()
		and not object:get_attach() then
			if i > 5 then break end
			local pos2 = object:get_pos()
			local dir = vec_dir(pos, pos2)
			dir.y = 0
			if dir.x == 0 and dir.z == 0 then
				dir = vector.new(random(-1, 1) * random(), 0,
								 random(-1, 1) * random())
			end
			local velocity = vec_multi(dir, 1.1)
			local vel1 = vec_multi(velocity, -2) -- multiplying by -2 accounts for friction
			local vel2 = velocity
			self.object:add_velocity(vel1)
			object:add_velocity(vel2)
		end
	end
end

local function water_physics(self, pos, node)
	-- Props
	local gravity = self._movement_data.gravity
	local height = self.height
	-- Vectors
	pos.y = pos.y + 0.01
	if minetest.get_item_group(node.name, "liquid") < 1 then
		self.object:set_acceleration({
			x = 0,
			y = gravity,
			z = 0
		})
		if self.in_liquid then
			self.in_liquid = false
		end
		return
	end
	self.in_liquid = node.name
	self.object:set_acceleration({
		x = 0,
		y = gravity * 0.5,
		z = 0
	})
	local center = {
		x = pos.x,
		y = pos.y + height * 0.5,
		z = pos.z
	}
	if minetest.get_item_group(minetest.get_node(center).name, "liquid") < 1 then
		return
	end
	-- Calculate Physics
	local vel = self.object:get_velocity()
	local bouyancy_x = self.bouyancy_multiplier or 1
	local bouyancy =  (abs(gravity * 0.5) / height) * bouyancy_x
	if bouyancy > 0 then
		if bouyancy > 4.9 then bouyancy = 4.9 end
		self.object:set_acceleration({
			x = 0,
			y = 0,
			z = 0
		})
		vel.y = vel.y + (bouyancy - vel.y) * (self.dtime * 0.5)
	end
	local hydrodynamics_x = self.hydrodynamics_multiplier or 0.7
	vel.x = vel.x * hydrodynamics_x
	vel.y = vel.y * ((bouyancy == 0 and hydrodynamics_x) or 1)
	vel.z = vel.z * hydrodynamics_x
	-- Apply Physics
	self.object:set_velocity(vel)
end

function mob:_physics()
	local pos = self.stand_pos
	local node = self.stand_node
	if not pos or not node then return end
	water_physics(self, pos, node)
	-- Object collision
	collision_detection(self)
	local in_liquid = self.in_liquid
	local on_ground = self.touching_ground
	if not in_liquid
	and not on_ground then
		self.is_falling = true
	else
		self.is_falling = false
	end
	local move_data = self._movement_data
	if not in_liquid
	--and not move_data.func
	and move_data.gravity ~= 0 then
		local vel = self.object:get_velocity()
		local friction = self.dtime * 10
		if friction > 0.5 then friction = 0.5 end
		if not on_ground then friction = 0.25 end
		local nvel = {x = vel.x * (1 - friction), y = vel.y, z = vel.z * (1 - friction)}
		self.object:set_velocity(nvel)
	end
end

-- Movement Control

function mob:move_to(goal, method, speed_factor)
	local get_method = creatura.registered_movement_methods[method]
	local data = self._movement_data
	if get_method
	and not data.func then
		self._movement_data.func = get_method(self, goal, speed_factor)
		return self._movement_data.func(self, goal, speed_factor)
	end
	if data.func then
		local move = data.func
		return move(self, goal, speed_factor)
	end
end

-- Execute Actions

local function tbl_equals(tbl1, tbl2)
	local match = true
	for k, v in pairs(tbl1) do
		if not tbl2[k]
		and tbl2[k] ~= v then
			match = false
			break
		end
	end
	return match
end

function mob:_execute_utilities()
	local is_alive = self.hp > 0
	if not self._utility_data then
		self._utility_data = {
			utility = nil,
			func = nil,
			step_delay = nil,
			score = 0
		}
	end
	local loop_data = {
		utility = nil,
		func = nil,
		step_delay = nil,
		score = 0
	}
	if (self:timer(self.util_timer or 1)
	or not self._utility_data.func)
	and is_alive then
		for i = 1, #self.utility_stack do
			local utility = self.utility_stack[i].utility
			local util_data = self._utility_data
			local get_score = self.utility_stack[i].get_score
			local step_delay = self.utility_stack[i].step_delay
			local score, args = get_score(self)
			if util_data.utility
			and utility == util_data.utility
			and util_data.score > 0
			and score <= 0 then
				self._utility_data = {
					utility = nil,
					func = nil,
					step_delay = nil,
					score = 0
				}
				util_data = self._utility_data
			end
			if score > 0
			and score >= util_data.score
			and score >= loop_data.score then
				loop_data = {
					utility = utility,
					score = score,
					step_delay = step_delay,
					args = args
				}
			end
		end
	end
	if loop_data.utility
	and loop_data.args then
		if not self._utility_data
		or not self._utility_data.args then
			self._utility_data = loop_data
		else
			local no_data = not self._utility_data.utility and not self._utility_data.args
			local same_args = tbl_equals(self._utility_data.args, loop_data.args)
			local new_util = self._utility_data.utility ~= loop_data.utility or not same_args
			if no_data
			or new_util then -- if utilities are different or utilities are the same and args are different set new data
				self._utility_data = loop_data
			end
		end
	end
	if self._utility_data.utility then
		local util_data = self._utility_data
		if not util_data.func then
			self:initiate_utility(util_data.utility, unpack(util_data.args))
		end
		local func = util_data.func
		if util_data.step_delay
		and self.hp > 0 then
			self.step_delay = util_data.step_delay
		else
			self.step_delay = nil
			self._step_delay = 0
		end
		local step_delay = self.step_delay and (self._step_delay or 0)
		if not func then return end
		if step_delay then
			if step_delay > 0 then
				self._step_delay = step_delay - self.dtime
				return
			else
				self._step_delay = self.step_delay
			end
		end
		local dtime = self.dtime
		self.dtime = dtime + (self.step_delay or 0)
		if self.horz_vel
		and self.horz_vel ~= 0 then
			self:set_forward_velocity(nil)
		end
		if self.vert_vel
		and self.vert_vel ~= 0 then
			self:set_vertical_velocity(nil)
		end
		if func(self) then
			self._utility_data = {
				utility = nil,
				func = nil,
				score = 0
			}
			self:clear_action()
		end
		local action = self._action
		if action
		and type(action) ~= "table" then
			if action(self) then
				self:clear_action()
			end
		end
		self.dtime = dtime
	end
end

-- Vitals

function mob:_vitals()
	local pos = self.stand_pos
	local node = self.stand_node
	if not pos or not node then return end
	local max_fall = self.max_fall or 3
	local in_liquid = self.in_liquid
	local on_ground = self.touching_ground
	local damage = 0
	if max_fall > 0
	and not in_liquid then
		local fall_start = self._fall_start or (not on_ground and pos.y)
		if fall_start
		and on_ground then
			damage = fall_start - pos.y
			if damage < max_fall then
				damage = 0
				fall_start = nil
			else
				local resist = self.fall_resistance or 0
				damage = damage - damage * resist
				fall_start = nil
			end
		end
		self._fall_start = fall_start
	end
	if self:timer(1) then
		local stand_def = creatura.get_node_def(node.name)
		if not self.max_breath
		or self.max_breath > 0 then
			local head_pos = vec_raise(pos, self.height - 0.01)
			local head_node = minetest.get_node(head_pos)
			if minetest.get_item_group(head_node.name, "liquid") > 0
			or creatura.get_node_def(head_node.name).walkable then
				if self._breath <= 0 then
					damage = (damage or 0) + 1
				else
					self._breath = self._breath - 1
					self:memorize("_breath", self._breath)
				end
			else
				self._breath = self._breath + 1
				self:memorize("_breath", self._breath)
			end
		end
		if (not self.fire_resistance
		or self.fire_resistance < 1)
		and minetest.get_item_group(stand_def.name, "igniter") > 0
		and stand_def.damage_per_second then
			local resist = self.fire_resistance or 0.5
			damage = (damage or 0) + stand_def.damage_per_second * resist
		end
	end
	if damage > 0 then
		self:hurt(damage)
		self:indicate_damage()
		if random(4) < 2 then
			self:play_sound("hurt")
		end
	end
	-- Entity Cramming
	if self:timer(5) then
		local objects = minetest.get_objects_inside_radius(pos, 0.2)
		if #objects > 10 then
			self:indicate_damage()
			self.hp = self:memorize("hp", -1)
			self:death_func()
		end
	end
end

function creatura.register_mob(name, def)
	local box_width = def.hitbox and def.hitbox.width or 0.5
	local box_height = def.hitbox and def.hitbox.height or 1
	local hitbox = {-box_width, 0, -box_width, box_width, box_height, box_width}

	def.physical = def.physical or true
	def.collide_with_objects = def.collide_with_objects or false
	def.visual = "mesh"
	def.makes_footstep_sound = def.makes_footstep_sound or false
	if def.static_save ~= false then
		def.static_save = true
	end
	def.collisionbox = hitbox
	def._creatura_mob = true

	def.sounds = def.sounds or {}

	if not def.sounds.hit then
		def.sounds.hit = {
			name = "creatura_hit",
			gain = 0.5,
			distance = 16,
			variations = 3
		}
	end

	def.on_activate = function(self, staticdata, dtime)
		return self:activate(staticdata, dtime)
	end

	def.get_staticdata = function(self)
		return self:staticdata(self)
	end

	minetest.register_entity(name, setmetatable(def, mob_meta))
end
