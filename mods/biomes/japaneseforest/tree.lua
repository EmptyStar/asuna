-------------Sapling
minetest.register_node("japaneseforest:japanese_sapling", {
	description = "Japanese Sapling",
	drawtype = "plantlike",
	tiles = {"japanese_sapling.png"},
	inventory_image = "japanese_sapling.png",
	on_use = minetest.item_eat(2),
	wield_image = "japanese_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_japanese_tree,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1, food_bread = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"japaneseforest:japanese_sapling",
			{x = -2, y = 1, z = -2},
			{x = 2, y = 15, z = 2},
			4)

		return itemstack
	end,
})

local function grow_new_japanese_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end

	if node.name == "japaneseforest:japanese_sapling" then
		minetest.log("action", "A japanese sapling grows into a tree at "..
			minetest.pos_to_string(pos))
		local snow = is_snow_nearby(pos)
		if mg_name == "v6" then
			grow_new_japanese_tree(pos, snow)
		elseif snow then
			grow_new_japanese_tree_2(pos)
		else
			grow_new_japanese_tree_3(pos)
		end

-- New japanese tree 

function grow_new_japanese_tree(pos)
	local path
	if math.random() > 0.5 then
		path = minetest.get_modpath("japaneseforest") ..
			"/schematics/japanese_tree_1_1.mts"
	else
		path = minetest.get_modpath("japaneseforest") ..
			"/schematics/japanese_tree_1_2.mts"
	end
	minetest.place_schematic({x = pos.x - 2, y = pos.y - 1, z = pos.z - 2},
		path, "0", nil, false)
end

-- New japanese tree 2

function grow_new_japanese_tree_2(pos)
	local path
	if math.random() > 0.5 then
		path = minetest.get_modpath("japaneseforest") ..
			"/schematics/japanese_tree_1_3.mts"
	else
		path = minetest.get_modpath("japaneseforest") ..
			"/schematics/japanese_tree_2_1.mts"
	end
	minetest.place_schematic({x = pos.x - 2, y = pos.y - 1, z = pos.z - 2},
		path, "0", nil, false)
end

-- New japanese tree 3

function grow_new_japanese_tree_3(pos)
	local path = minetest.get_modpath("japaneseforest") ..
		"/schematics/japanese_tree_3_2.mts"
	minetest.place_schematic({x = pos.x - 4, y = pos.y - 1, z = pos.z - 4},
		path, "random", nil, false)
end
    end
end
