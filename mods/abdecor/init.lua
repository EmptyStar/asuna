local modpath = minetest.get_modpath("abdecor")

abdecor = {}
abdecor.registered_names = {}
abdecor.registered_advanced_decorations = {}
abdecor.register_advanced_decoration = function(name, decor, fn, vm_flags)
	-- Ensure that all arguments are defined
	if not name or not decor or not fn then
    minetest.warn("[abdecor] Advanced decoration '" .. name .. "' was not provided with all necessary values.")
		return false
	end

	-- Ensure that the name isn't already in use
	local mapgen = nil
	if abdecor.registered_names[name] then
    minetest.warn("[abdecor] Advanced decoration '" .. name .. "' was already registered.")
		return false
	else
		mapgen = {}
    abdecor.registered_names[name] = true
	end

  -- Check for all_floors + all_ceilings flags which is unsupported
  local is_ceiling = false
  local is_water_surface = false
	decor.flags = decor.flags or ""
  if decor.flags and decor.flags:find("all_floors") and decor.flags("all_ceilings") then
    minetest.warn("[abdecor] Advanced decoration '" .. name .. "' specifies all_floors and all_ceilings which the abdecor API does not support.")
    return false
  else
    is_ceiling = decor.flags:find("all_ceilings") and true or false
    is_water_surface = decor.flags:find("water_surface") and true or false
  end

	-- Register node for targeted mapgen node
	local mapgen_node_name = "abdecor:" .. name .. "_mapgen"
	local alias_node_name = ":" .. mapgen_node_name
	minetest.register_node(alias_node_name,{
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

	-- Register alias for mapgen node
	minetest.register_alias(mapgen_node_name,alias_node_name)

	-- Register injected decor for targeted mapgen node placement
	decor.deco_type = "simple"
	decor.name = "abdecor:" .. name .. "_decoration"
	decor.decoration = mapgen_node_name
	minetest.register_decoration(decor)

	local decoration_id = minetest.get_decoration_id(decor.name)
	minetest.set_gen_notify({ decoration = true },{decoration_id})
	mapgen.decoration_id = "decoration#" .. decoration_id
	abdecor.registered_advanced_decorations[mapgen.decoration_id] = mapgen

  -- Compute decoration placement offset for automatic erasure during mapgen
  mapgen.offset = (is_water_surface and 0 or 1) * (is_ceiling and -1 or 1) + (decor.place_offset_y or 0)

	-- Capture placement function and voxelmanip flags for later use
	mapgen.fn = fn

	if not vm_flags then
		vm_flags = {}
	end

	if vm_flags.param2 == nil then
		vm_flags.param2 = false
	end
	if vm_flags.liquid == nil then
		vm_flags.liquid = false
	end
	mapgen.flags = vm_flags

	-- Success!
	return true
end

-- Register targeted mapgen generation
local vdata = {}
local vparam2 = {}
minetest.register_on_generated(function(minp, maxp, seed)
	-- Lazy initializers for mapgen data
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

			-- Note liquid status
			if decoration.flags.liquid then
				is_liquid = true
			end

			-- Erase dummy mapgen nodes and process decorations
			for i = 1, #decorations do
        local pos = decorations[i]
        vdata[mapgen.va:index(pos.x,pos.y + decoration.offset,pos.z)] = minetest.CONTENT_AIR
				decoration.fn(pos,mapgen.va,vdata,vparam2)
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