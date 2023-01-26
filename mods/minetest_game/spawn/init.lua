-- spawn/init.lua

-- Disable by mapgen, setting or if 'static_spawnpoint' is set
--------------------------------------------------------------

local mg_name = minetest.get_mapgen_setting("mg_name")
if mg_name == "v6" or mg_name == "singlenode" or
		minetest.settings:get("static_spawnpoint") or
		minetest.settings:get_bool("engine_spawn") then
	return
end


-- Parameters
-------------

-- Resolution of search grid in nodes.
local res = 64
-- Number of points checked in the square search grid (edge * edge).
local checks = 128 * 128
-- Starting point for biome checks. This also sets the y co-ordinate for all
-- points checked, so the suitable biomes must be active at this y.
local pos = {x = 0, y = 8, z = 0}


-- Table of suitable biomes

local biome_ids = {
	minetest.get_biome_id("taiga"),
	minetest.get_biome_id("coniferous_forest"),
	minetest.get_biome_id("deciduous_forest"),
	minetest.get_biome_id("grassland"),
	minetest.get_biome_id("savanna"),
}

-- End of parameters
--------------------


-- Direction table

local dirs = {
	{x = 0, y = 0, z = 1},
	{x = -1, y = 0, z = 0},
	{x = 0, y = 0, z = -1},
	{x = 1, y = 0, z = 0},
}


-- Initial variables

local edge_len = 1
local edge_dist = 0
local dir_step = 0
local dir_ind = 1
local searched = false
local success = false
local spawn_pos = {}


-- Get world 'mapgen_limit' and 'chunksize' to calculate 'spawn_limit'.
-- This accounts for how mapchunks are not generated if they or their shell exceed
-- 'mapgen_limit'.

local mapgen_limit = tonumber(minetest.get_mapgen_setting("mapgen_limit"))
local chunksize = tonumber(minetest.get_mapgen_setting("chunksize"))
local spawn_limit = math.max(mapgen_limit - (chunksize + 1) * 16, 0)


--Functions
-----------

-- Get next position on square search spiral

local function next_pos()
	if edge_dist == edge_len then
		edge_dist = 0
		dir_ind = dir_ind + 1
		if dir_ind == 5 then
			dir_ind = 1
		end
		dir_step = dir_step + 1
		edge_len = math.floor(dir_step / 2) + 1
	end

	local dir = dirs[dir_ind]
	local move = vector.multiply(dir, res)

	edge_dist = edge_dist + 1

	return vector.add(pos, move)
end


-- Spawn position search

local function search()
	for iter = 1, checks do
		local biome_data = minetest.get_biome_data(pos)
		-- Sometimes biome_data is nil
		local biome = biome_data and biome_data.biome
		for id_ind = 1, #biome_ids do
			local biome_id = biome_ids[id_ind]
			if biome == biome_id then
				local spawn_y = minetest.get_spawn_level(pos.x, pos.z)
				if spawn_y then
					spawn_pos = {x = pos.x, y = spawn_y, z = pos.z}
					return true
				end
			end
		end

		pos = next_pos()
		-- Check for position being outside world edge
		if math.abs(pos.x) > spawn_limit or math.abs(pos.z) > spawn_limit then
			return false
		end
	end

	return false
end


-- On new player spawn and player respawn

-- Search for spawn position once per server session. If successful, store
-- position and reposition players, otherwise leave them at engine spawn
-- position.

local function on_spawn(player)
	if not searched then
		success = search()
		searched = true
	end
	if success then
		player:set_pos(spawn_pos)
	end
	return success
end

minetest.register_on_newplayer(function(player)
	on_spawn(player)
end)

local enable_bed_respawn = minetest.settings:get_bool("enable_bed_respawn")
if enable_bed_respawn == nil then
	enable_bed_respawn = true
end

minetest.register_on_respawnplayer(function(player)
	-- Avoid respawn conflict with beds mod
	if beds and enable_bed_respawn and
			beds.spawn[player:get_player_name()] then
		return
	end

	return on_spawn(player)
end)
