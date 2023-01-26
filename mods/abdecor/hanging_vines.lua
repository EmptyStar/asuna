local soil_nodes = {}
for _,soil_node in ipairs({
	"default:dirt",
	"default:dirt_with_grass",
	"default:dirt_with_rainforest_litter",
}) do
	soil_nodes[minetest.get_content_id(soil_node)] = true
end

local cids = {
	air = minetest.get_content_id("air"),
	vine = minetest.get_content_id("ethereal:vine"),
}

abdecor.register_advanced_decoration("vine",{
	place_on = {
		"default:stone",
		"default:dirt",
	},
	spawn_by = "air",
	num_spawn_by = 5,
	sidelen = 80,
	fill_ratio = 0.3,
	biomes = {
		"swamp",
		"junglee",
		"jumble",
		"mushroom",
	},
	y_max = 31000,
	y_min = 1,
	flags = "all_ceilings",
},function(pos, va, vdata, vparam2)
	-- Get stride values and set position
	local ystride = va.ystride
	local zstride = va.zstride
	pos = va:index(pos.x,pos.y,pos.z)

	-- Scan for dirt or surface nodes for a short distance above the position
	for above = 1, 2 do
		above = pos + above * ystride
		if soil_nodes[vdata[above]] then
			pos = above
			break
		end
	end

	-- List of cardinal directions relative to the current position
	local cardinal = {
		pos - 1,
		pos + 1,
		pos - zstride,
		pos + zstride,
	}

	-- Iterate over cardinal positions and place vines at and below those positions
	for i = 1, 4 do
		local dir = cardinal[i]
		if vdata[dir] == cids.air then
			for below = 0, ((dir ^ 2 + (dir + pos) % 3) % 4 + 2) do
				below = dir - below * ystride
				if vdata[below] == cids.air then
					vdata[below] = cids.vine
					vparam2[below] = i + 1
				else
					break
				end
			end
		end
	end
end,{
	param2 = true,
})