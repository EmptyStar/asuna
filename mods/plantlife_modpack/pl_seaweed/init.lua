-- support for i18n
local S = minetest.get_translator("pl_seaweed")

pl_seaweed = {}

local algae_list = { {nil}, {2}, {3}, {4} }

for i in ipairs(algae_list) do
	local num = ""
	local algae_groups = {snappy = 3,flammable=2,flower=1}

	if algae_list[i][1] ~= nil then
		num = "_"..algae_list[i][1]
		algae_groups = { snappy = 3,flammable=2,flower=1, not_in_creative_inventory=1 }
	end

	minetest.register_node(":flowers:seaweed"..num, {
		description = S("Seaweed"),
		drawtype = "nodebox",
		tiles = {
			"flowers_seaweed"..num..".png",
			"flowers_seaweed"..num..".png^[transformFY"
		},
		inventory_image = "flowers_seaweed_2.png",
		wield_image	= "flowers_seaweed_2.png",
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "facedir",
		walkable = false,
		groups = algae_groups,
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = { -0.4, -0.5, -0.4, 0.4, -0.45, 0.4 },
		},
		node_box = {
			type = "fixed",
			fixed = { -0.5, -0.49, -0.5, 0.5, -0.49, 0.5 },
		},
		buildable_to = true,

		liquids_pointable = true,
		drop = "flowers:seaweed",
		on_place = function(itemstack, placer, pointed_thing)
			local keys=placer:get_player_control()
			local pt = pointed_thing

			local place_pos = nil
			local top_pos = {x=pt.under.x, y=pt.under.y+1, z=pt.under.z}
			local under_node = minetest.get_node(pt.under)
			local above_node = minetest.get_node(pt.above)
			local top_node	 = minetest.get_node(top_pos)

			if minetest.registered_nodes[under_node.name].buildable_to then
				if under_node.name ~= "default:water_source" then
					place_pos = pt.under
				elseif top_node.name ~= "default:water_source"
							 and minetest.registered_nodes[top_node.name].buildable_to then
					place_pos = top_pos
				else
					return
				end
			elseif minetest.registered_nodes[above_node.name].buildable_to then
				place_pos = pt.above
			end
			if not place_pos then return end -- something went wrong :P

			if not minetest.is_protected(place_pos, placer:get_player_name()) then

			local nodename = "default:cobble" -- :D

				if not keys["sneak"] then
					--local node = minetest.get_node(pt.under)
					local seaweed = math.random(1,4)
					if seaweed == 1 then
						nodename = "flowers:seaweed"
					elseif seaweed == 2 then
						nodename = "flowers:seaweed_2"
					elseif seaweed == 3 then
						nodename = "flowers:seaweed_3"
					elseif seaweed == 4 then
						nodename = "flowers:seaweed_4"
					end
					minetest.swap_node(place_pos, {name = nodename, param2 = math.random(0,3) })
				else
					local fdir = minetest.dir_to_facedir(placer:get_look_dir())
					minetest.swap_node(place_pos, {name = "flowers:seaweed", param2 = fdir})
				end

				return itemstack
			end
		end,
	})
end

pl_seaweed.grow_seaweed = function(pos)
	local right_here = {x=pos.x, y=pos.y+1, z=pos.z}
	local seaweed = math.random(1,4)
	local node_name = "flowers:seaweed"
	if seaweed > 1 then
		node_name = node_name .. "_" .. seaweed
	end
	minetest.swap_node(right_here, {name=node_name, param2=math.random(1,3)})
end

-- Register aliases
minetest.register_alias( "flowers:flower_seaweed" , "flowers:seaweed"	 )
minetest.register_alias( "along_shore:pondscum_1" ,	"flowers:seaweed"	 )
minetest.register_alias( "along_shore:seaweed_1"	,	"flowers:seaweed"	 )
minetest.register_alias( "along_shore:seaweed_2"	,	"flowers:seaweed_2" )
minetest.register_alias( "along_shore:seaweed_3"	,	"flowers:seaweed_3" )
minetest.register_alias( "along_shore:seaweed_4"	,	"flowers:seaweed_4" )

-- Register seaweed decorations
local warm_shores = {}
for _,biome in ipairs(asuna.features.ocean.temperate) do
	table.insert(warm_shores,biome .. "_shore")
end
for _,biome in ipairs(asuna.features.ocean.tropical) do
	table.insert(warm_shores,biome .. "_shore")
end

local seaweed_selector = {
	minetest.get_content_id("flowers:seaweed"),
	minetest.get_content_id("flowers:seaweed_2"),
	minetest.get_content_id("flowers:seaweed_3"),
}

local cids = {
	air = minetest.get_content_id("air"),
	water = minetest.get_content_id("default:water_source"),
}

abdecor.register_advanced_decoration("plantlife_seaweed",{
	target = {
		place_on = {
			"default:sand",
			"default:dirt_with_grass",
			"default:dirt_with_rainforest_litter",
			"livingjungle:jungleground",
			"livingjungle:leafyjungleground",
			"naturalbiomes:alderswamp_litter",
		},
		spawn_by = "default:water_source",
		num_spawn_by = 3,
		sidelen = 80,
		fill_ratio = 0.4,
		biomes = warm_shores,
		y_max = 1,
		y_min = 1,
	},
	fn = function(mapgen)
		-- Get provided values
		local va = mapgen.voxelarea
		local pos = va:index(mapgen.pos.x,mapgen.pos.y,mapgen.pos.z)
		local vdata = mapgen.data

		-- Get stride values
		local ystride = va.ystride
		local zstride = va.zstride

		-- Set mapgen node to air
		vdata[pos + ystride] = cids.air

		-- List of potential open water spots where seaweed can be placed
		local open_water = {0,0,0,0}

		-- Semi-pseudo-random number for how many nodes from shore to place seaweed
		local scan_limit = (pos ^ 2 + 2 * pos + 1) % 4 + 2

		-- Scan -x for the furthest available open water
		for xscan = 1, scan_limit do
			local ipos = pos - xscan
			if vdata[ipos] == cids.water then
				open_water[1] = ipos + ystride
			else
				break
			end
		end

		-- Scan +x for the furthest available open water
		for xscan = 1, scan_limit do
			local ipos = pos + xscan
			if vdata[ipos] == cids.water then
				open_water[2] = ipos + ystride
			else
				break
			end
		end

		-- Scan -z for the furthest available open water
		for zscan = 1, scan_limit do
			local ipos = pos - zscan * zstride
			if vdata[ipos] == cids.water then
				open_water[3] = ipos + ystride
			else
				break
			end
		end

		-- Scan +z for the furthest available open water
		for zscan = 1, scan_limit do
			local ipos = pos + zscan * zstride
			if vdata[ipos] == cids.water then
				open_water[4] = ipos + ystride
			else
				break
			end
		end

		-- Iterate through open water and generate seaweed where possible
		for i = 1, 4 do
			local owpos = open_water[i]
			if owpos ~= 0 then -- valid open water
				vdata[owpos] = seaweed_selector[(owpos ^ 2 + pos % 5) % 3 + 1]
			end
		end
	end,
})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = "default:sand",
		sidelen = 80,
		fill_ratio = 0.0025,
		biomes = warm_shores,
		y_max = 1,
		y_min = 1,
		decoration = {
			"flowers:seaweed_2",
			"flowers:seaweed_3",
			"flowers:seaweed_4",
		},
	})
