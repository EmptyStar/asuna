local modpath = minetest.get_modpath("abdecor")

abdecor = {}
abdecor.registered_names = {}
abdecor.registered_advanced_decorations = {}
abdecor.register_advanced_decoration = function(name, def)
	-- Ensure that all necessary arguments are defined
	if not name or not def.target or not def.fn then
    minetests.warn("[abdecor] Advanced decoration '" .. (name or "???") .. "' was not provided with all necessary values.")
		return false
	end

	-- Ensure that the name isn't already in use
	local mapgen = nil
	if abdecor.registered_names[name] then
    minetests.warn("[abdecor] Advanced decoration '" .. name .. "' was already registered.")
		return false
	else
		mapgen = {}
    abdecor.registered_names[name] = true
	end

  -- Check for all_floors + all_ceilings flags which is unsupported due to
	-- undefined mapgen node erasure
  local is_ceiling = false
  local is_water_surface = false
	def.target.flags = def.target.flags or ""
  if def.target.flags and def.target.flags:find("all_floors") and def.target.flags("all_ceilings") then
    minetest.warn("[abdecor] Advanced decoration '" .. name .. "' specifies all_floors and all_ceilings which the abdecor API does not support.")
    return false
  else
    is_ceiling = def.target.flags:find("all_ceilings") and true or false
    is_water_surface = def.target.flags:find("water_surface") and true or false
  end

	-- Register node for targeted mapgen node
	local mapgen_node_name = "abdecor:" .. name .. "_mapgen"
	minetest.register_node(":" .. mapgen_node_name,{
		drawtype = "airlike",
		sunlight_propagates = true,
		walkable = false,
		pointable = true,
		diggable = false,
		climbable = false,
		buildable_to = true,
		floodable = false,
		groups = { not_in_creative_inventory = 1 },
	})

	-- Register injected decor for targeted mapgen node placement
	def.target.deco_type = "simple"
	def.target.name = "abdecor:" .. name .. "_decoration"
	def.target.decoration = mapgen_node_name
	minetest.register_decoration(def.target)

	local decoration_id = minetest.get_decoration_id(def.target.name)
	minetest.set_gen_notify({ decoration = true },{decoration_id})
	mapgen.decoration_id = "decoration#" .. decoration_id
	abdecor.registered_advanced_decorations[mapgen.decoration_id] = mapgen

  -- Compute decoration placement offset for automatic erasure during mapgen
  mapgen.offset = (is_water_surface and 0 or 1) * (is_ceiling and -1 or 1) + (def.target.place_offset_y or 0)

	-- Capture placement function and voxelmanip flags for later use
	mapgen.fn = def.fn

	if not def.flags then
		def.flags = {}
	end

	if def.flags.param2 == nil then
		def.flags.param2 = false
	end
	if def.flags.liquid == nil then
		def.flags.liquid = false
	end
	if def.flags.schematic == nil then
		def.flags.schematic = false
	end
	mapgen.flags = def.flags

	-- Success!
	return true
end

-- Schematic placement helper functions
abdecor._place_schematic_check = function(args)
	-- Fail or set defaults for missing arguments
	if not args.pos or not args.schematic then
		return nil -- fail
	end

	args.rotation = args.rotation or "random"
	args.replacements = args.replacements or {}
	args.force_placement = (args.force_placement == nil) and false or true
	args.flags = args.flags or ""

	-- Arguments are good
	return true
end

-- Register targeted mapgen generation
local vdata = {}
local vparam2 = {}
minetest.register_on_generated(function(minp, maxp, seed)
	-- Lazy initializers for mapgen
	local mapgen = {}

	local is_mapgen_init = false
	local function mapgen_init()
		if not is_mapgen_init then
			mapgen.vm, mapgen.emin, mapgen.emax = minetest.get_mapgen_object("voxelmanip")
			mapgen.va = VoxelArea:new({MinEdge = mapgen.emin, MaxEdge = mapgen.emax})
			is_mapgen_init = true
		end
	end

	local is_vm_data_init = false
	local function vm_data_init()
		mapgen_init()
		if not is_vm_data_init then
			mapgen.vm:get_data(vdata)
			is_vm_data_init = true
		end
	end

	local is_vm_param2_init = false
	local function vm_param2_init()
		mapgen_init()
		if not is_vm_param2_init then
			mapgen.vm:get_param2_data(vparam2)
			is_vm_param2_init = true
		end
	end

	local is_schematic_init = false
	local function schematic_init()
		if not is_schematic_init then
			mapgen.place_schematic = function(args)
				mapgen.vm:set_data(vdata)
				local retval = abdecor._place_schematic_check(args) and minetest.place_schematic_on_vmanip(mapgen.vm,args.pos,args.schematic,args.rotation,args.replacements,args.force_placement,args.flags)
				if retval then
					mapgen.vm:get_data(vdata)
				end
				return retval
			end
			is_schematic_init = true
		end
	end

	local is_liquid = false

	-- Place any targeted decorations that were generated
	local gennotify = minetest.get_mapgen_object("gennotify")
	for decoration_id,decorations in pairs(gennotify) do
		local decoration = abdecor.registered_advanced_decorations[decoration_id]
		if decoration then
			-- Initialize vm data
			vm_data_init()

			-- Initialize param2 data if needed
			if decoration.flags.param2 then
				vm_param2_init()
			end

			-- Initialize schematic placement function if needed
			if decoration.flags.schematic then
				schematic_init()
			end

			-- Note liquid status
			if decoration.flags.liquid then
				is_liquid = true
			end

			-- Erase dummy mapgen nodes and process decorations
			for i = 1, #decorations do
        local pos = decorations[i]
        vdata[mapgen.va:index(pos.x,pos.y + decoration.offset,pos.z)] = minetest.CONTENT_AIR
				decoration.fn({
					pos = pos,
					voxelarea = mapgen.va,
					data = vdata,
					param2 = vparam2,
					minp = minp,
					maxp = maxp,
					seed = seed,
					place_schematic = mapgen.place_schematic,
					index2d = function(x,z) -- (portions of this function © FaceDeer 2018, licensed MIT, copied from https://github.com/minetest-mods/mapgen_helper/blob/2521562a42472271d9d761f2b1e84ead59250a14/noise_manager.lua)
						if type(x) == "table" then -- accept x/y/z pos table
							z = x.z
							x = x.x
						end
						return x - minp.x +
						(maxp.x - minp.x + 1)
						*(z - minp.z)
						+ 1
					end,
				})
			end
		end
	end

	-- Write data back to voxelmanip if necessary
	if is_mapgen_init then
		if is_vm_data_init then
			mapgen.vm:set_data(vdata)
		end

		if is_vm_param2_init then
			mapgen.vm:set_param2_data(vparam2)
		end

		if is_liquid then
			mapgen.vm:update_liquids()
		end

		if is_vm_data_init or is_vm_param2_init then
			mapgen.vm:write_to_map()
		end
	end
end)

-- Load bundled decorations if enabled
if minetest.settings:get_bool("abdecor_ocean_waterfalls",false) and minetest.get_modpath("default") then
	dofile(modpath .. "/ocean_waterfalls.lua")
end

if minetest.settings:get_bool("abdecor_hanging_vines",false) and minetest.get_modpath("ethereal") then
	dofile(modpath .. "/hanging_vines.lua")
end

if minetest.settings:get_bool("abdecor_boulders",false) and minetest.get_modpath("default") then
	dofile(modpath .. "/boulders.lua")
end