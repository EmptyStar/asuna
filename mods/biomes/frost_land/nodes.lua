local modpath = minetest.get_modpath("frost_land")

minetest.register_node("frost_land:frost_land_grass", {
	description = "Frost Land Grass",
	tiles = {"frost_land_grass.png", "default_dirt.png",
		{name = "default_dirt.png^frost_land_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_snow_footstep", gain = 0.25},
	}),
})

minetest.register_node("frost_land:frost_land_wood", {
	description = "Frost Land Wood",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"frost_land_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("frost_land:frost_land_tree", {
	description = "Frost Land Tree",
	tiles = {"frost_land_tree_top.png", "frost_land_tree_top.png",
		"frost_land_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

doors.register_trapdoor("frost_land:frost_land_trapdoor", {
	description = "Frost Land Trapdoor",
	inventory_image = "frost_land_trapdoor.png",
	wield_image = "frost_land_trapdoor.png",
	tile_front = "frost_land_trapdoor.png",
	tile_side = "frost_land_trapdoor_side.png",
	gain_open = 0.06,
	gain_close = 0.13,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
})


doors.register("frost_land_door", {
		tiles = {{ name = "doors_frost_land_door.png", backface_culling = true }},
		description = "Frost Land Door",
		inventory_image = "doors_item_frost_land.png",
		groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		gain_open = 0.06,
		gain_close = 0.13,
		recipe = {
			{"frost_land:frost_land_wood", "frost_land:frost_land_wood"},
			{"frost_land:frost_land_wood", "frost_land:frost_land_wood"},
			{"frost_land:frost_land_wood", "frost_land:frost_land_wood"},
		}
})

stairs.register_stair_and_slab(
	"frost_land_wood",
	"frost_land:frost_land_wood",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"frost_land_wood.png"},
	"Frost Land Wood Stair",
	"Frost Land Wood Slab",
	default.node_sound_wood_defaults(),
	true
)

doors.register_fencegate("frost_land:gate_frost_land", {
	description = "Frost Land Wood Fence Gate",
	texture = "frost_land_wood.png",
	material = "frost_land:frost_land_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

default.register_fence("frost_land:fence_frost_land_wood", {
	description = "Frost Land Wood Fence",
	texture = "frost_land_wood.png",
	inventory_image = "frost_land_fence_overlay.png^frost_land_wood.png^" ..
				"frost_land_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "frost_land_fence_overlay.png^frost_land_wood.png^" ..
				"frost_land_fence_overlay.png^[makealpha:255,126,126",
	material = "frost_land:frost_land_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = default.node_sound_wood_defaults()
})

default.register_fence_rail("frost_land:fence_rail_frost_land_wood", {
	description = "Frost Land Wood Fence Rail",
	texture = "frost_land_wood.png",
	inventory_image = "frost_land_fence_rail_overlay.png^frost_land_wood.png^" ..
				"frost_land_fence_rail_overlay.png^[makealpha:255,126,126",
	wield_image = "frost_land_fence_rail_overlay.png^frost_land_wood.png^" ..
				"frost_land_fence_rail_overlay.png^[makealpha:255,126,126",
	material = "frost_land:frost_land_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = default.node_sound_wood_defaults()
})

--[[
	Trees
]]

local trees = {
	{
		name = "Frigid",
		grow_function = function(pos)
			minetest.place_schematic({x = pos.x-3, y = pos.y, z = pos.z-3}, modpath.."/schematics/frost_tree_1.mts", "random", nil, false)
		end,
	},
	{
		name = "Icy",
		grow_function = function(pos)
			minetest.place_schematic({x = pos.x-4, y = pos.y, z = pos.z-4}, modpath.."/schematics/tree_4.mts", "random", nil, false)
		end,
	},
}

for index,def in ipairs(trees) do
	local sapling = "frost_land:frost_land_sapling_" .. index
	local image = "frost_land_sapling_" .. index .. ".png"
	local leaves = "frost_land:frost_land_leaves_" .. index

	-- Register leaves
	minetest.register_node("frost_land:frost_land_leaves_" .. index, {
		description = def.name .. " Frost Land Leaves",
		drawtype = "allfaces_optional",
		waving = 1,
		tiles = {"frost_leaves_" .. index .. ".png"},
		paramtype = "light",
		is_ground_content = false,
		groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
		drop = {
			max_items = 1,
			items = {
				{items = {sapling}, rarity = 20},
				{items = {leaves}}
			}
		},
		sounds = default.node_sound_leaves_defaults(),
	
		after_place_node = default.after_place_leaves,
	})

	-- Register sapling
	minetest.register_node(sapling, {
		description = def.name .. " Frost Land Sapling",
		drawtype = "plantlike",
		tiles = {image},
		inventory_image = image,
		wield_image = image,
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		on_timer = function(pos)
			if not default.can_grow(pos) then
				-- try a bit later again
				minetest.get_node_timer(pos):start(math.random(240, 600))
			else
				minetest.remove_node(pos)
				def.grow_function(pos)
			end
		end,
		selection_box = {
			type = "fixed",
			fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 2 / 16, 4 / 16}
		},
		groups = {snappy = 2, dig_immediate = 3, flammable = 2,
			attached_node = 1, sapling = 1},
		sounds = default.node_sound_leaves_defaults(),

		on_construct = function(pos)
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		end,

		on_place = function(itemstack, placer, pointed_thing)
			itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
				sapling,
				-- minp, maxp to be checked, relative to sapling pos
				{x = -1, y = 0, z = -1},
				{x = 1, y = 1, z = 1},
				-- maximum interval of interior volume check
				2)

			return itemstack
		end,
	})

	-- Register sapling crafting recipe
	minetest.register_craft({
		output = sapling,
		recipe = {
			{"", leaves, ""},
			{leaves, "default:stick", leaves}
		},
	})

	-- Add bonemeal integration if supported
	if minetest.get_modpath("bonemeal") ~= nil then
		bonemeal:add_sapling({
			{sapling, def.grow_function, "soil"},
		})
	end
end
