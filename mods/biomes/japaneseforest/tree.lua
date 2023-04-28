-------------Trees
local mpath = minetest.get_modpath("japaneseforest")
local mod_bonemeal = minetest.get_modpath("bonemeal")

local trees = {
	{
		kana = "いち",
		grow_function = function(pos)
			local path = mpath .. "/schematics/japanese_tree_1_3.mts"
			minetest.place_schematic({x = pos.x - 2, y = pos.y, z = pos.z - 2},
				path, "random", nil, false)
		end,
	},
	{
		kana = "に",
		grow_function = function(pos)
			local path = mpath .. "/schematics/japanese_tree_2_1.mts"
			minetest.place_schematic({x = pos.x - 5, y = pos.y, z = pos.z - 5},
				path, "random", nil, false)
		end,
	},
	{
		kana = "さん",
		grow_function = function(pos)
			local path = mpath .. "/schematics/japanese_tree_3_2.mts"
			minetest.place_schematic({x = pos.x - 3, y = pos.y - 1, z = pos.z - 3},
				path, "random", nil, false)
		end,
	},
}

for index,def in ipairs(trees) do
	local sapling = "japaneseforest:japanese_sapling_" .. index
	local image = "japanese_sapling_" .. index .. ".png"
	local leaves = "japaneseforest:japanese_leaves_" .. index

	-- Register leaves
	minetest.register_node(leaves, {
		description = "Japanese Leaves " .. def.kana,
		drawtype = "allfaces_optional",
		waving = 1,
		tiles = {"japanese_leaves_" .. index .. ".png"},
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
		description = "Japanese Sapling " .. def.kana,
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
			fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
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
				{x = -2, y = 1, z = -2},
				{x = 2, y = 15, z = 2},
				4)

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
			{sapling, def.grow_function, "soil"},
		})
	end
end
