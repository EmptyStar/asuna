local surface = {
	"default:dirt",
  "default:dry_dirt",
	"default:dirt_with_grass",
  "default:dirt_with_dry_grass",
  "default:dry_dirt_with_dry_grass",
	"default:dirt_with_rainforest_litter",
  "default:dirt_with_coniferous_litter",
}

local surface_nodes = {}
for _,surface_node in ipairs(surface) do
	surface_nodes[minetest.get_content_id(surface_node)] = true
end

local boulder = minetest.get_modpath("abdecor") .. "/schematics/boulder.mts"

abdecor.register_advanced_decoration("abdecor_boulders",{
	target = {
		place_on = surface,
		sidelen = 80,
		fill_ratio = 0.0001,
		y_max = 31000,
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

    -- Get below node which will always be a valid ground node
    pos = pos - ystride

    -- Check for flat ground
    for _,ground in ipairs({
      pos - 1,
      pos + 1,
      pos - zstride,
      pos + zstride,
      pos - 1 - zstride,
      pos + 1 - zstride,
      pos - zstride + 1,
      pos + zstride - 1,
    }) do
      if not surface_nodes[vdata[ground]] then
        return -- the ground node is something else
      end
    end

    -- Place a boulder
    mapgen.place_schematic({
      pos = mapgen.pos,
      schematic = boulder,
      force_placement = true,
      flags = "place_center_x,place_center_z",
    })
	end,
	flags = {
		schematic = true,
	},
})