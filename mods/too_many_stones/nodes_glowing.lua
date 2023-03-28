-- mods/too_many_stones/nodes_glowing.lua

-- support for MT game translation.
local S = minetest.get_translator("too_many_stones")



--[[ Index:

	Apatite
	Calcite
	Esperite
	Fluorite
	Selenite
	Sodalite
	Willemite 

--]]

--
-- Glowing Stones
--

--Glow Apatite
minetest.register_node("too_many_stones:glow_apatite", {
	description = S("Glowing Apatite"),
	drawtype = "glasslike",
	tiles = {"tms_glow_apatite.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  violet_stone = 1, cracky = 3, stone = 1},
	drop = "too_many_stones:glow_apatite_cobble",
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_apatite_block", {
	description = S("Glowing Apatite Block"),
	drawtype = "glasslike",
	tiles = {"tms_glow_apatite_block.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  violet_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_apatite_cobble", {
	description = S("Cobbled Glowing Apatite"),
	drawtype = "glasslike",
	tiles = {"tms_glow_apatite_cobble.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  violet_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_apatite_brick", {
	description = S("Glowing Apatite Brick"),
	drawtype = "glasslike",
	tiles = {"tms_glow_apatite_brick.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  violet_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_apatite_cracked_brick", {
	description = S("Cracked Glowing Apatite Brick"),
	drawtype = "glasslike",
	tiles = {"tms_glow_apatite_cracked_brick.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  violet_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})
--Glow Calcite
minetest.register_node("too_many_stones:glow_calcite", {
	description = S("Glowing Calcite"),
	drawtype = "glasslike",
	tiles = {"tms_glow_calcite.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  red_stone = 1, cracky = 3, stone = 1},
	drop = "too_many_stones:glow_calcite_cobble",
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_calcite_block", {
	description = S("Glowing Calcite Block"),
	drawtype = "glasslike",
	tiles = {"tms_glow_calcite_block.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  red_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_calcite_cobble", {
	description = S("Cobbled Glowing Calcite"),
	drawtype = "glasslike",
	tiles = {"tms_glow_calcite_cobble.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  red_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_calcite_brick", {
	description = S("Glowing Calcite Brick"),
	drawtype = "glasslike",
	tiles = {"tms_glow_calcite_brick.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  red_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_calcite_cracked_brick", {
	description = S("Cracked Glowing Calcite Brick"),
	drawtype = "glasslike",
	tiles = {"tms_glow_calcite_cracked_brick.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  red_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})
--Glow Eserite
minetest.register_node("too_many_stones:glow_esperite", {
	description = S("Glowing Esperite"),
	drawtype = "glasslike",
	tiles = {"tms_glow_esperite.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  yellow_stone = 1, cracky = 3, stone = 1},
	drop = "too_many_stones:glow_esperite_cobble",
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_esperite_block", {
	description = S("Glowing Esperite Block"),
	drawtype = "glasslike",
	tiles = {"tms_glow_esperite_block.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  yellow_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_esperite_cobble", {
	description = S("Cobbled Glowing Esperite"),
	drawtype = "glasslike",
	tiles = {"tms_glow_esperite_cobble.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  yellow_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_esperite_brick", {
	description = S("Glowing Esperite Brick"),
	drawtype = "glasslike",
	tiles = {"tms_glow_esperite_brick.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  yellow_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_esperite_cracked_brick", {
	description = S("Cracked Glowing Esperite Brick"),
	drawtype = "glasslike",
	tiles = {"tms_glow_esperite_cracked_brick.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  yellow_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})
--Glow Fluorite
minetest.register_node("too_many_stones:glow_fluorite", {
	description = S("Glowing Fluorite"),
	drawtype = "glasslike",
	tiles = {"tms_glow_fluorite.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  blue_stone = 1, cracky = 3, stone = 1},
	drop = "too_many_stones:glow_fluorite_cobble",
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_fluorite_block", {
	description = S("Glowing Fluorite Block"),
	drawtype = "glasslike",
	tiles = {"tms_glow_fluorite_block.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  blue_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_fluorite_cobble", {
	description = S("Cobbled Glowing Fluorite"),
	drawtype = "glasslike",
	tiles = {"tms_glow_fluorite_cobble.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  blue_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_fluorite_brick", {
	description = S("Glowing Fluorite Brick"),
	drawtype = "glasslike",
	tiles = {"tms_glow_fluorite_brick.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  blue_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_fluorite_cracked_brick", {
	description = S("Cracked Glowing Fluorite Brick"),
	drawtype = "glasslike",
	tiles = {"tms_glow_fluorite_cracked_brick.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  blue_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})
--Glow Selenite
minetest.register_node("too_many_stones:glow_selenite", {
	description = S("Glowing Selenite"),
	drawtype = "glasslike",
	tiles = {"tms_glow_selenite.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  cyan_stone = 1, cracky = 3, stone = 1},
	drop = "too_many_stones:glow_selenite_cobble",
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_selenite_block", {
	description = S("Glowing Selenite Block"),
	drawtype = "glasslike",
	tiles = {"tms_glow_selenite_block.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  cyan_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_selenite_cobble", {
	description = S("Cobbled Glowing Selenite"),
	drawtype = "glasslike",
	tiles = {"tms_glow_selenite_cobble.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  cyan_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_selenite_brick", {
	description = S("Glowing Selenite Brick"),
	drawtype = "glasslike",
	tiles = {"tms_glow_selenite_brick.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  cyan_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_selenite_cracked_brick", {
	description = S("Cracked Glowing Selenite Brick"),
	drawtype = "glasslike",
	tiles = {"tms_glow_selenite_cracked_brick.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  cyan_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})
--Glow Sodalite
minetest.register_node("too_many_stones:glow_sodalite", {
	description = S("Glowing Sodalite"),
	drawtype = "glasslike",
	tiles = {"tms_glow_sodalite.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  orange_stone = 1, cracky = 3, stone = 1},
	drop = "too_many_stones:glow_sodalite_cobble",
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_sodalite_block", {
	description = S("Glowing Sodalite Block"),
	drawtype = "glasslike",
	tiles = {"tms_glow_sodalite_block.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  orange_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_sodalite_cobble", {
	description = S("Cobbled Glowing Sodalite"),
	drawtype = "glasslike",
	tiles = {"tms_glow_sodalite_cobble.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  orange_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_sodalite_brick", {
	description = S("Glowing Sodalite Brick"),
	drawtype = "glasslike",
	tiles = {"tms_glow_sodalite_brick.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  orange_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_sodalite_cracked_brick", {
	description = S("Cracked Glowing Sodalite Brick"),
	drawtype = "glasslike",
	tiles = {"tms_glow_sodalite_cracked_brick.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  orange_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})
--Glow Willemite
minetest.register_node("too_many_stones:glow_willemite", {
	description = S("Glowing Willemite"),
	drawtype = "glasslike",
	tiles = {"tms_glow_willemite.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  green_stone = 1, cracky = 3, stone = 1},
	drop = "too_many_stones:glow_willemite_cobble",
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_willemite_block", {
	description = S("Glowing Willemite Block"),
	drawtype = "glasslike",
	tiles = {"tms_glow_willemite_block.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  green_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_willemite_cobble", {
	description = S("Cobbled Glowing Willemite"),
	drawtype = "glasslike",
	tiles = {"tms_glow_willemite_cobble.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  green_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_willemite_brick", {
	description = S("Glowing Willemite Brick"),
	drawtype = "glasslike",
	tiles = {"tms_glow_willemite_brick.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  green_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

minetest.register_node("too_many_stones:glow_willemite_cracked_brick", {
	description = S("Cracked Glowing Willemite Brick"),
	drawtype = "glasslike",
	tiles = {"tms_glow_willemite_cracked_brick.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {glow_stone = 1,  green_stone = 1, cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = minetest.LIGHT_MAX,
})

--
-- Crafting
--

-- Glow Apatite
minetest.register_craft({
	output = "too_many_stones:glow_apatite_brick 4",
	recipe = {
		{"too_many_stones:glow_apatite", "too_many_stones:glow_apatite"},
		{"too_many_stones:glow_apatite", "too_many_stones:glow_apatite"},
	}
})

minetest.register_craft({
	output = "too_many_stones:glow_apatite_block 9",
	recipe = {
		{"too_many_stones:glow_apatite", "too_many_stones:glow_apatite", "too_many_stones:glow_apatite"},
		{"too_many_stones:glow_apatite", "too_many_stones:glow_apatite", "too_many_stones:glow_apatite"},
		{"too_many_stones:glow_apatite", "too_many_stones:glow_apatite", "too_many_stones:glow_apatite"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "too_many_stones:glow_apatite",
	recipe = "too_many_stones:glow_apatite_cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "too_many_stones:glow_apatite_cracked_brick",
	recipe = "too_many_stones:glow_apatite_brick",
})

-- Glow Calcite
minetest.register_craft({
	output = "too_many_stones:glow_calcite_brick 4",
	recipe = {
		{"too_many_stones:glow_calcite", "too_many_stones:glow_calcite"},
		{"too_many_stones:glow_calcite", "too_many_stones:glow_calcite"},
	}
})

minetest.register_craft({
	output = "too_many_stones:glow_calcite_block 9",
	recipe = {
		{"too_many_stones:glow_calcite", "too_many_stones:glow_calcite", "too_many_stones:glow_calcite"},
		{"too_many_stones:glow_calcite", "too_many_stones:glow_calcite", "too_many_stones:glow_calcite"},
		{"too_many_stones:glow_calcite", "too_many_stones:glow_calcite", "too_many_stones:glow_calcite"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "too_many_stones:glow_calcite",
	recipe = "too_many_stones:glow_calcite_cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "too_many_stones:glow_calcite_cracked_brick",
	recipe = "too_many_stones:glow_calcite_brick",
})

-- Glow Esperite
minetest.register_craft({
	output = "too_many_stones:glow_esperite_brick 4",
	recipe = {
		{"too_many_stones:glow_esperite", "too_many_stones:glow_esperite"},
		{"too_many_stones:glow_esperite", "too_many_stones:glow_esperite"},
	}
})

minetest.register_craft({
	output = "too_many_stones:glow_esperite_block 9",
	recipe = {
		{"too_many_stones:glow_esperite", "too_many_stones:glow_esperite", "too_many_stones:glow_esperite"},
		{"too_many_stones:glow_esperite", "too_many_stones:glow_esperite", "too_many_stones:glow_esperite"},
		{"too_many_stones:glow_esperite", "too_many_stones:glow_esperite", "too_many_stones:glow_esperite"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "too_many_stones:glow_esperite",
	recipe = "too_many_stones:glow_esperite_cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "too_many_stones:glow_esperite_cracked_brick",
	recipe = "too_many_stones:glow_esperite_brick",
})

-- Glow Fluorite
minetest.register_craft({
	output = "too_many_stones:glow_fluorite_brick 4",
	recipe = {
		{"too_many_stones:glow_fluorite", "too_many_stones:glow_fluorite"},
		{"too_many_stones:glow_fluorite", "too_many_stones:glow_fluorite"},
	}
})

minetest.register_craft({
	output = "too_many_stones:glow_fluorite_block 9",
	recipe = {
		{"too_many_stones:glow_fluorite", "too_many_stones:glow_fluorite", "too_many_stones:glow_fluorite"},
		{"too_many_stones:glow_fluorite", "too_many_stones:glow_fluorite", "too_many_stones:glow_fluorite"},
		{"too_many_stones:glow_fluorite", "too_many_stones:glow_fluorite", "too_many_stones:glow_fluorite"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "too_many_stones:glow_fluorite",
	recipe = "too_many_stones:glow_fluorite_cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "too_many_stones:glow_fluorite_cracked_brick",
	recipe = "too_many_stones:glow_fluorite_brick",
})

-- Glow Selenite
minetest.register_craft({
	output = "too_many_stones:glow_selenite_brick 4",
	recipe = {
		{"too_many_stones:glow_selenite", "too_many_stones:glow_selenite"},
		{"too_many_stones:glow_selenite", "too_many_stones:glow_selenite"},
	}
})

minetest.register_craft({
	output = "too_many_stones:glow_selenite_block 9",
	recipe = {
		{"too_many_stones:glow_selenite", "too_many_stones:glow_selenite", "too_many_stones:glow_selenite"},
		{"too_many_stones:glow_selenite", "too_many_stones:glow_selenite", "too_many_stones:glow_selenite"},
		{"too_many_stones:glow_selenite", "too_many_stones:glow_selenite", "too_many_stones:glow_selenite"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "too_many_stones:glow_selenite",
	recipe = "too_many_stones:glow_selenite_cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "too_many_stones:glow_selenite_cracked_brick",
	recipe = "too_many_stones:glow_selenite_brick",
})

-- Glow Sodalite
minetest.register_craft({
	output = "too_many_stones:glow_sodalite_brick 4",
	recipe = {
		{"too_many_stones:glow_sodalite", "too_many_stones:glow_sodalite"},
		{"too_many_stones:glow_sodalite", "too_many_stones:glow_sodalite"},
	}
})

minetest.register_craft({
	output = "too_many_stones:glow_sodalite_block 9",
	recipe = {
		{"too_many_stones:glow_sodalite", "too_many_stones:glow_sodalite", "too_many_stones:glow_sodalite"},
		{"too_many_stones:glow_sodalite", "too_many_stones:glow_sodalite", "too_many_stones:glow_sodalite"},
		{"too_many_stones:glow_sodalite", "too_many_stones:glow_sodalite", "too_many_stones:glow_sodalite"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "too_many_stones:glow_sodalite",
	recipe = "too_many_stones:glow_sodalite_cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "too_many_stones:glow_sodalite_cracked_brick",
	recipe = "too_many_stones:glow_sodalite_brick",
})

-- Glow Willemite
minetest.register_craft({
	output = "too_many_stones:glow_willemite_brick 4",
	recipe = {
		{"too_many_stones:glow_willemite", "too_many_stones:glow_willemite"},
		{"too_many_stones:glow_willemite", "too_many_stones:glow_willemite"},
	}
})

minetest.register_craft({
	output = "too_many_stones:glow_willemite_block 9",
	recipe = {
		{"too_many_stones:glow_willemite", "too_many_stones:glow_willemite", "too_many_stones:glow_willemite"},
		{"too_many_stones:glow_willemite", "too_many_stones:glow_willemite", "too_many_stones:glow_willemite"},
		{"too_many_stones:glow_willemite", "too_many_stones:glow_willemite", "too_many_stones:glow_willemite"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "too_many_stones:glow_willemite",
	recipe = "too_many_stones:glow_willemite_cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "too_many_stones:glow_willemite_cracked_brick",
	recipe = "too_many_stones:glow_willemite_brick",
})

--
-- Mapgen
--
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "too_many_stones:glow_apatite",
		wherein        = "mapgen_stone",
		clust_scarcity = 48 * 48 * 48,
		clust_num_ores = 20,
		clust_size     = 5,
		y_max          = -1000,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "too_many_stones:glow_calcite",
		wherein        = "mapgen_stone",
		clust_scarcity = 48 * 48 * 48,
		clust_num_ores = 20,
		clust_size     = 5,
		y_max          = -1000,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "too_many_stones:glow_esperite",
		wherein        = "mapgen_stone",
		clust_scarcity = 48 * 48 * 48,
		clust_num_ores = 20,
		clust_size     = 5,
		y_max          = -1000,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "too_many_stones:glow_fluorite",
		wherein        = "mapgen_stone",
		clust_scarcity = 48 * 48 * 48,
		clust_num_ores = 20,
		clust_size     = 5,
		y_max          = -1000,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "too_many_stones:glow_selenite",
		wherein        = "mapgen_stone",
		clust_scarcity = 48 * 48 * 48,
		clust_num_ores = 20,
		clust_size     = 5,
		y_max          = -1000,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "too_many_stones:glow_sodalite",
		wherein        = "mapgen_stone",
		clust_scarcity = 48 * 48 * 48,
		clust_num_ores = 20,
		clust_size     = 5,
		y_max          = -1000,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "too_many_stones:glow_willemite",
		wherein        = "mapgen_stone",
		clust_scarcity = 48 * 48 * 48,
		clust_num_ores = 20,
		clust_size     = 5,
		y_max          = -1000,
		y_min          = -31000,
	})

if minetest.get_modpath("mcl_mapgen_core") ~= nil then

--
-- Mapgen MineClone
--
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "too_many_stones:glow_apatite",
		wherein        = "mapgen_stone",
		clust_scarcity = 48 * 48 * 48,
		clust_num_ores = 20,
		clust_size     = 5,
		y_max          = -40,
		y_min          = -64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "too_many_stones:glow_calcite",
		wherein        = "mapgen_stone",
		clust_scarcity = 48 * 48 * 48,
		clust_num_ores = 20,
		clust_size     = 5,
		y_max          = -40,
		y_min          = -64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "too_many_stones:glow_esperite",
		wherein        = "mapgen_stone",
		clust_scarcity = 48 * 48 * 48,
		clust_num_ores = 20,
		clust_size     = 5,
		y_max          = -40,
		y_min          = -64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "too_many_stones:glow_fluorite",
		wherein        = "mapgen_stone",
		clust_scarcity = 48 * 48 * 48,
		clust_num_ores = 20,
		clust_size     = 5,
		y_max          = -40,
		y_min          = -64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "too_many_stones:glow_selenite",
		wherein        = "mapgen_stone",
		clust_scarcity = 48 * 48 * 48,
		clust_num_ores = 20,
		clust_size     = 5,
		y_max          = -40,
		y_min          = -64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "too_many_stones:glow_sodalite",
		wherein        = "mapgen_stone",
		clust_scarcity = 48 * 48 * 48,
		clust_num_ores = 20,
		clust_size     = 5,
		y_max          = -40,
		y_min          = -64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "too_many_stones:glow_willemite",
		wherein        = "mapgen_stone",
		clust_scarcity = 48 * 48 * 48,
		clust_num_ores = 20,
		clust_size     = 5,
		y_max          = -40,
		y_min          = -64,
	})

end
