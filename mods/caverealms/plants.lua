-- Cavrealms plants and trees for lichen, moss and algae biomes

-- Lichen biome

-- glowing fungi
minetest.register_node("caverealms:fungus", {
	description = "Glowing Fungus",
	tiles = {"caverealms_fungi.png"},
	inventory_image = "caverealms_fungi.png",
	wield_image = "caverealms_fungi.png",
	is_ground_content = true,
	groups = {oddly_breakable_by_hand = 3, attached_node = 1},
	light_source = 5,
	paramtype = "light",
	drawtype = "plantlike",
	walkable = false,
	buildable_to = true,
	visual_scale = 1.0,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})

-- mycena mushroom
minetest.register_node("caverealms:mycena", {
	description = "Mycena Mushroom",
	tiles = {"caverealms_mycena.png"},
	inventory_image = "caverealms_mycena.png",
	wield_image = "caverealms_mycena.png",
	is_ground_content = true,
	groups = {oddly_breakable_by_hand = 3, attached_node = 1},
	light_source = 6,
	paramtype = "light",
	drawtype = "plantlike",
	walkable = false,
	buildable_to = true,
	visual_scale = 1.0,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})

-- giant mushroom
if minetest.get_modpath("ethereal") then
	minetest.register_alias("caverealms:mushroom_cap", "ethereal:mushroom")
	minetest.register_alias("caverealms:mushroom_stem", "ethereal:mushroom_trunk")
else
	-- stem
	minetest.register_node("caverealms:mushroom_stem", {
		description = "Giant Mushroom Stem",
		tiles = {"caverealms_mushroom_stem.png"},
		is_ground_content = true,
		groups = {choppy=2, oddly_breakable_by_hand=1},
	})

	-- cap
	minetest.register_node("caverealms:mushroom_cap", {
		description = "Giant Mushroom Cap",
		tiles = {"caverealms_mushroom_cap.png"},
		is_ground_content = true,
		groups = {choppy=2, oddly_breakable_by_hand=1,},
		drop = {
			max_items = 1,
			items = {
				{items = {"caverealms:mushroom_sapling"}, rarity = 20},
				{items = {"caverealms:mushroom_cap"}}
			}
		},
	})

	-- sapling
	minetest.register_node("caverealms:mushroom_sapling", {
		description = "Mushroom Tree Sapling",
		drawtype = "plantlike",
		tiles = {"caverealms_mushroom_sapling.png"},
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = false,
		walkable = false,
		selection_box = {
			type = "fixed",
			fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
		},
		groups = {snappy = 2, dig_immediate = 3, flammable = 2},
		sounds = default.node_sound_leaves_defaults(),
	})
end

-- gills
minetest.register_node("caverealms:mushroom_gills", {
	description = "Giant Mushroom Gills",
	tiles = {"caverealms_mushroom_gills.png"},
	is_ground_content = true,
	light_source = 10,
	groups = {choppy=2, oddly_breakable_by_hand=1},
	drawtype = "plantlike",
	paramtype = "light",
})


-- Saplings

-- grow trees
local add_tree = function (pos, ofx, ofy, ofz, schem)
	if not schem then
		print ("Schematic not found")
		return
	end
	minetest.swap_node(pos, {name = "air"})
	minetest.place_schematic(
		{x = pos.x - ofx, y = pos.y - ofy, z = pos.z - ofz},
		schem, 0, nil, false)
end

local path = minetest.get_modpath("caverealms").."/schematics/"

-- giant mushrooms
function grow_caverealms_mushroom(pos)
	add_tree(pos, 5, 0, 5, path .. "shroom.mts")
end

-- height check
local function enough_height(pos, height)
	local nod = minetest.line_of_sight(
		{x = pos.x, y = pos.y + 1, z = pos.z},
		{x = pos.x, y = pos.y + height, z = pos.z})
	if not nod then
		return false 
	else
		return true 
	end
end

minetest.register_abm({
	label = "Caverealms grow sapling",
	nodenames = {"ethereal:mushroom_sapling", "caverealms:mushroom_sapling"},
	interval = 10,
	chance = 50,
	catch_up = false,
	action = function(pos, node)
		local light_level = minetest.get_node_light(pos)
		-- check light level
		if not light_level or light_level > 10 then
			return
		end
		-- get node under sapling
		local under =  minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z}).name
		-- check if registered
		if not minetest.registered_nodes[node.name] then
			return
		end
		-- ethereal sapling on lichen stone
		if node.name == "ethereal:mushroom_sapling"
		and under == "caverealms:stone_with_lichen"
		and enough_height(pos, 10) then
			grow_caverealms_mushroom(pos)
		-- caverealms sapling on lichen stone
		elseif node.name == "caverealms:mushroom_sapling"
		and under == "caverealms:stone_with_lichen"
		and enough_height(pos, 10) then
			grow_caverealms_mushroom(pos)
		end
	end,
})


-- spread moss/lichen/algae to nearby cobblestone
minetest.register_abm({
	label = "Caverealms stone spread",
	nodenames = {
		"caverealms:stone_with_moss",
		"caverealms:stone_with_lichen",
		"caverealms:stone_with_algae",
	},
	neighbors = {"air"},
	interval = 16,
	chance = 50,
	catch_up = false,
	action = function(pos, node)
		local num = minetest.find_nodes_in_area_under_air(
			{x = pos.x - 1, y = pos.y - 2, z = pos.z - 1},
			{x = pos.x + 1, y = pos.y + 1, z = pos.z + 1},
			"default:cobble")
		if #num > 0 then
			minetest.set_node(num[math.random(#num)], {name = node.name})
		end
	end,
})
