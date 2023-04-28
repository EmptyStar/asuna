local modpath = minetest.get_modpath("prairie")

minetest.register_node("prairie:prairie_dirt_with_grass", {
	description = "Prairie Dirt With Grass",
	tiles = {"prairie_grass.png", "default_dirt.png",
		{name = "default_dirt.png^prairie_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

--[[
	Trees
]]

local trees = {
	{
		name = "Sunny",
		grow_function = function(pos)
			minetest.place_schematic({x = pos.x-4, y = pos.y, z = pos.z-4}, modpath.."/schematics/prairie_tree_1.mts", "random", nil, false)
		end,
	},
	{
		name = "Cheerful",
		grow_function = function(pos)
			minetest.place_schematic({x = pos.x-2, y = pos.y, z = pos.z-2}, modpath.."/schematics/prairie_tree_2.mts", "random", nil, false)
		end,
	},
}

for index,def in ipairs(trees) do
	local sapling = "prairie:prairie_sapling_" .. index
	local image = "prairie_sapling_" .. index .. ".png"
	local leaves = "prairie:prairie_leaves_" .. index

	-- Register leaves
	minetest.register_node("prairie:prairie_leaves_" .. index, {
		description = def.name .. " Prairie Leaves",
		drawtype = "allfaces_optional",
		waving = 1,
		tiles = {"prairie_leaves_" .. index .. ".png"},
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
		description = def.name .. " Prairie Sapling",
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
				return
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
	if mod_bonemeal then
		bonemeal:add_sapling({
			{node, def.grow_function, "soil"},
		})
	end
end