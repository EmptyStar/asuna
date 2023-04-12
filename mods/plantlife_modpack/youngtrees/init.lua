-- support for i18n
local S = minetest.get_translator("youngtrees")
abstract_youngtrees = {}

minetest.register_node("youngtrees:youngtree_top", {
	description = S("Young Tree (top)"),
	drawtype = "plantlike",
	tiles = {"youngtree16xa.png"},
	inventory_image = "youngtree16xa.png",
	wield_image = "youngtree16xa.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy=3,flammable=2},
	sounds = default.node_sound_leaves_defaults(),
	drop = 'default:stick'
})

minetest.register_node("youngtrees:youngtree_middle", {
	description = S("Young Tree (middle)"),
	drawtype = "plantlike",
	tiles = {"youngtree16xb.png"},
	inventory_image = "youngtree16xb.png",
	wield_image = "youngtree16xb.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy=3,flammable=2},
	sounds = default.node_sound_leaves_defaults(),
	drop = 'default:stick'
})

minetest.register_node("youngtrees:youngtree_bottom", {
	description = S("Young Tree (bottom)"),
	drawtype = "plantlike",
	tiles = {"youngtree16xc.png"},
	inventory_image = "youngtree16xc.png",
	wield_image = "youngtree16xc.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy=3,flammable=2},
	sounds = default.node_sound_leaves_defaults(),
	drop = 'default:stick'
})


abstract_youngtrees.grow_youngtree = function(pos)
	local height = math.random(1,3)
	abstract_youngtrees.grow_youngtree_node(pos,height)
end


abstract_youngtrees.grow_youngtree_node = function(pos, height)
	local right_here = {x=pos.x, y=pos.y+1, z=pos.z}
	local above_right_here = {x=pos.x, y=pos.y+2, z=pos.z}

	if minetest.get_node(right_here).name == "air"	-- instead of check_air = true,
	or minetest.get_node(right_here).name == "default:junglegrass" then
		if height == 1 then
			minetest.swap_node(right_here, {name="youngtrees:youngtree_top"})
		end
		if height == 2 then
			minetest.swap_node(right_here, {name="youngtrees:youngtree_bottom"})
			minetest.swap_node(above_right_here, {name="youngtrees:youngtree_top"})
		end
		if height == 3 then
			local two_above_right_here = {x=pos.x, y=pos.y+3, z=pos.z}
			minetest.swap_node(right_here, {name="youngtrees:youngtree_bottom"})
			minetest.swap_node(above_right_here, {name="youngtrees:youngtree_middle"})
			minetest.swap_node(two_above_right_here, {name="youngtrees:youngtree_top"})
		end
	end
end

-- Register targeted decoration
local cids = {
	air = minetest.get_content_id("air"),
	bottom = minetest.get_content_id("youngtrees:youngtree_bottom"),
	middle = minetest.get_content_id("youngtrees:youngtree_middle"),
	top = minetest.get_content_id("youngtrees:youngtree_top"),
}

abdecor.register_advanced_decoration("plantlife_youngtrees",{
	target = {
		place_on = "default:dirt_with_grass",
		sidelen = 80,
		fill_ratio = 0.00032,
		y_min = 3,
		y_max = 31000,
		biomes = {
			"grassland",
			"deciduous_forest",
			"grassytwo",
			"jumble",
		},
	},
	fn = function(mapgen)
		-- Get provided values
		local va = mapgen.voxelarea
		local pos = va:index(mapgen.pos.x,mapgen.pos.y + 1,mapgen.pos.z)
		local vdata = mapgen.data

		-- Place tree only if all air above the mapgen node
		local ystride = va.ystride
		if vdata[pos + 2 * ystride] == cids.air and vdata[pos + ystride] == cids.air then
			vdata[pos] = cids.bottom
			vdata[pos + ystride] = cids.middle
			vdata[pos + 2 * ystride] = cids.top
		end
	end,
})