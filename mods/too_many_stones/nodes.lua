-- mods/too_many_stones/nodes.lua

-- support for MT game translation.
local S = default.get_translator



--[[ Index:



--]]

--
-- Stone
--
-- Amazonite
minetest.register_node("too_many_stones:amazonite", {
	description = S("Amazonite"),
	tiles = {"tms_amazonite.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:amazonite_cobble",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:amazonite_block", {
	description = S("Amazonite Block"),
	tiles = {"tms_amazonite_block.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:amazonite_block",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:amazonite_cobble", {
	description = S("Cobbled Amazonite"),
	tiles = {"tms_amazonite_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:amazonite_brick", {
	description = S("Amazonite Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_amazonite_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:amazonite_cracked_brick", {
	description = S("Cracked Amazonite Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_amazonite_brick.png^tms_brick_crack_overlay.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
-- Sodalite
minetest.register_node("too_many_stones:bluestone", {
	description = S("Sodalite"),
	tiles = {"tms_bluestone.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:bluestone_cobble",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:bluestone_block", {
	description = S("Sodalite Block"),
	tiles = {"tms_bluestone_block.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:bluestone_block",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:bluestone_cobble", {
	description = S("Cobbled Sodalite"),
	tiles = {"tms_bluestone_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:bluestone_brick", {
	description = S("Sodalite Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_bluestone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:bluestone_cracked_brick", {
	description = S("Cracked Sodalite Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_bluestone_brick.png^tms_brick_crack_overlay.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
-- Calcite
minetest.register_node("too_many_stones:calcite", {
	description = S("Calcite"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	tiles = {"tms_calcite.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:calcite",
	sounds = default.node_sound_stone_defaults(),
    paramtype = "light",
})

minetest.register_node("too_many_stones:calcite_block", {
	description = S("Calcite Block"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	tiles = {"tms_calcite_block.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:calcite_block",
	sounds = default.node_sound_stone_defaults(),
    paramtype = "light",
})

minetest.register_node("too_many_stones:calcite_brick", {
	description = S("Calcite Brick"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	sunlight_propagates = true,
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_calcite_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
    paramtype = "light",
})

minetest.register_node("too_many_stones:calcite_cracked_brick", {
	description = S("Cracked Calcite Brick"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	sunlight_propagates = true,
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_calcite_brick.png^tms_brick_crack_overlay.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
    paramtype = "light",
})
-- Carnotite
minetest.register_node("too_many_stones:carnotite", {
	description = S("Carnotite"),
	tiles = {"tms_carnotite.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:carnotite_cobble",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:carnotite_block", {
	description = S("Carnotite Block"),
	tiles = {"tms_carnotite_block.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:carnotite_block",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:carnotite_cobble", {
	description = S("Cobbled Carnotite"),
	tiles = {"tms_carnotite_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:carnotite_brick", {
	description = S("Carnotite Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_carnotite_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:carnotite_cracked_brick", {
	description = S("Cracked Carnotite Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_carnotite_brick.png^tms_brick_crack_overlay.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
-- Blue Granite
minetest.register_node("too_many_stones:granite_blue", {
	description = S("Blue Granite"),
	tiles = {"tms_granite_blue.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:granite_blue",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_blue_block", {
	description = S("Blue Granite Block"),
	tiles = {"tms_granite_blue_block.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:granite_blue_block",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_blue_brick", {
	description = S("Blue Granite Brick"),
	sunlight_propagates = true,
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_granite_blue_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_blue_cracked_brick", {
	description = S("Cracked Blue Granite Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_granite_blue_brick.png^tms_brick_crack_overlay.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
-- Green Granite
minetest.register_node("too_many_stones:granite_green", {
	description = S("Green Granite"),
	tiles = {"tms_granite_green.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:granite_green",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_green_block", {
	description = S("Green Granite Block"),
	tiles = {"tms_granite_green_block.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:granite_green_block",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_green_brick", {
	description = S("Green Granite Brick"),
	sunlight_propagates = true,
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_granite_green_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_green_cracked_brick", {
	description = S("Cracked Green Granite Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_granite_green_brick.png^tms_brick_crack_overlay.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
-- Red Granite
minetest.register_node("too_many_stones:granite_red", {
	description = S("Red Granite"),
	tiles = {"tms_granite_red.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:granite_red",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_red_block", {
	description = S("Red Granite Block"),
	tiles = {"tms_granite_red_block.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:granite_red_block",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_red_brick", {
	description = S("Red Granite Brick"),
	sunlight_propagates = true,
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_granite_red_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:granite_red_cracked_brick", {
	description = S("Cracked Red Granite Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_granite_red_brick.png^tms_brick_crack_overlay.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
--Jade
minetest.register_node("too_many_stones:greenstone", {
	description = S("Jade"),
	tiles = {"tms_greenstone.png"},
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:greenstone_cobble",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:greenstone_block", {
	description = S("Jade Block"),
	tiles = {"tms_greenstone_block.png"},
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:greenstone_block",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:greenstone_cobble", {
	description = S("Cobbled Jade"),
	tiles = {"tms_greenstone_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:greenstone_brick", {
	description = S("Jade Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_greenstone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:greenstone_cracked_brick", {
	description = S("Cracked Jade Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_greenstone_brick.png^tms_brick_crack_overlay.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
-- Ilvaite
minetest.register_node("too_many_stones:ilvaite", {
	description = S("Ilvaite"),
	tiles = {"tms_ilvaite.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:ilvaite_cobble",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:ilvaite_block", {
	description = S("Ilvaite Block"),
	tiles = {"tms_ilvaite_block.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:ilvaite_block",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:ilvaite_cobble", {
	description = S("Cobbled Ilvaite"),
	tiles = {"tms_ilvaite_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:ilvaite_brick", {
	description = S("Ilvaite Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_ilvaite_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:ilvaite_cracked_brick", {
	description = S("Cracked Ilvaite Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_ilvaite_brick.png^tms_brick_crack_overlay.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
-- Kyanite
minetest.register_node("too_many_stones:kyanite", {
	description = S("Kyanite"),
	tiles = {"tms_kyanite.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:kyanite_cobble",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:kyanite_block", {
	description = S("Kyanite Block"),
	tiles = {"tms_kyanite_block.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:kyanite_block",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:kyanite_cobble", {
	description = S("Cobbled Kyanite"),
	tiles = {"tms_kyanite_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:kyanite_brick", {
	description = S("Kyanite Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_kyanite_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:kyanite_cracked_brick", {
	description = S("Cracked Kyanite Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_kyanite_brick.png^tms_brick_crack_overlay.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
-- Blue Limestone
minetest.register_node("too_many_stones:limestone_blue", {
	description = S("Blue Limestone"),
	tiles = {"tms_limestone_blue.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:limestone_blue_cobble",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_blue_block", {
	description = S("Blue Limestone Block"),
	tiles = {"tms_limestone_blue_block.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:limestone_blue_block",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_blue_cobble", {
	description = S("Cobbled Blue Limestone"),
	tiles = {"tms_limestone_blue_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_blue_brick", {
	description = S("Blue Limestone Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_limestone_blue_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_blue_cracked_brick", {
	description = S("Cracked Blue Limestone Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_limestone_blue_brick.png^tms_brick_crack_overlay.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
-- White Limestone
minetest.register_node("too_many_stones:limestone_white", {
	description = S("White Limestone"),
	tiles = {"tms_limestone_white.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:limestone_white_cobble",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_white_block", {
	description = S("White Limestone Block"),
	tiles = {"tms_limestone_white_block.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:limestone_white_block",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_white_cobble", {
	description = S("Cobbled White Limestone"),
	tiles = {"tms_limestone_white_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_white_brick", {
	description = S("White Limestone Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_limestone_white_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:limestone_white_cracked_brick", {
	description = S("Cracked White Limestone Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_limestone_white_brick.png^tms_brick_crack_overlay.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
-- Marble
minetest.register_node("too_many_stones:marble", {
	description = S("Marble"),
	tiles = {"tms_marble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:marble_cobble",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:marble_block", {
	description = S("Marble Block"),
	tiles = {"tms_marble_block.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:marble_block",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:marble_cobble", {
	description = S("Cobbled Marble"),
	tiles = {"tms_marble_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:marble_brick", {
	description = S("Marble Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_marble_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:marble_cracked_brick", {
	description = S("Cracked Marble Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_marble_brick.png^tms_brick_crack_overlay.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
-- Rose Quartz
minetest.register_node("too_many_stones:rose_quartz", {
	description = S("Rose Quartz"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	tiles = {"tms_rose_quartz.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:rose_quartz",
	sounds = default.node_sound_stone_defaults(),
    paramtype = "light",
})

minetest.register_node("too_many_stones:rose_quartz_block", {
	description = S("Rose Quartz Block"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	tiles = {"tms_rose_quartz_block.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:rose_quartz_block",
	sounds = default.node_sound_stone_defaults(),
    paramtype = "light",
})

minetest.register_node("too_many_stones:rose_quartz_brick", {
	description = S("Rose Quartz Brick"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	sunlight_propagates = true,
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_rose_quartz_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
    paramtype = "light",
})

minetest.register_node("too_many_stones:rose_quartz_cracked_brick", {
	description = S("Cracked Rose Quartz Brick"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	sunlight_propagates = true,
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_rose_quartz_brick.png^tms_brick_crack_overlay.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
    paramtype = "light",
})
-- Scoria
minetest.register_node("too_many_stones:scoria", {
	description = S("Scoria"),
	tiles = {"tms_scoria.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:scoria_cobble",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:scoria_block", {
	description = S("Scoria Block"),
	tiles = {"tms_scoria_block.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:scoria_block",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:scoria_cobble", {
	description = S("Cobbled Scoria"),
	tiles = {"tms_scoria_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:scoria_brick", {
	description = S("Scoria Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_scoria_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:scoria_cracked_brick", {
	description = S("Cracked Scoria Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_scoria_brick.png^tms_brick_crack_overlay.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
-- Slate
minetest.register_node("too_many_stones:slate", {
	description = S("Slate"),
	tiles = {"tms_slate.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:slate_cobble",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:slate_block", {
	description = S("Slate Block"),
	tiles = {"tms_slate_block.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:slate_block",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:slate_cobble", {
	description = S("Cobbled Slate"),
	tiles = {"tms_slate_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:slate_brick", {
	description = S("Slate Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_slate_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:slate_cracked_brick", {
	description = S("Cracked Slate Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_slate_brick.png^tms_brick_crack_overlay.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
-- Sugilite
minetest.register_node("too_many_stones:sugilite", {
	description = S("Sugilite"),
	tiles = {"tms_sugilite.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:sugilite_cobble",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:sugilite_block", {
	description = S("Sugilite Block"),
	tiles = {"tms_sugilite_block.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:sugilite_block",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:sugilite_cobble", {
	description = S("Cobbled Sugilite"),
	tiles = {"tms_sugilite_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:sugilite_brick", {
	description = S("Sugilite Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_sugilite_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:sugilite_cracked_brick", {
	description = S("Cracked Sugilite Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_sugilite_brick.png^tms_brick_crack_overlay.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
-- Turquoise
minetest.register_node("too_many_stones:sandstone_with_turquoise", {
	description = S("Turquoise Ore"),
	tiles = {"default_sandstone.png^tms_mineral_turquoise.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:turquoise_pebble 9",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:desert_sandstone_with_turquoise", {
	description = S("Turquoise Ore"),
	tiles = {"default_desert_sandstone.png^tms_mineral_turquoise.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:turquoise_pebble 9",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:silver_sandstone_with_turquoise", {
	description = S("Turquoise Ore"),
	tiles = {"default_silver_sandstone.png^tms_mineral_turquoise.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:turquoise_pebble 9",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("too_many_stones:turquoise_pebble", {
	description = S("Turquoise Pebble"),
	inventory_image = "tms_turquoise_pebble.png"
})

minetest.register_node("too_many_stones:turquoise", {
	description = S("Turquoise"),
	tiles = {"tms_turquoise.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:turquoise",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:turquoise_block", {
	description = S("Turquoise Block"),
	tiles = {"tms_turquoise_block.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:turquoise_block",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:turquoise_cobble", {
	description = S("Cobbled Turquoise"),
	tiles = {"tms_turquoise_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:turquoise_brick", {
	description = S("Turquoise Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_turquoise_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("too_many_stones:turquoise_cracked_brick", {
	description = S("Cracked Turquoise Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tms_turquoise_brick.png^tms_brick_crack_overlay.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
--[[
minetest.register_node("too_many_stones:bluestone", {
	description = S("Sodalite"),
	drawtype = "glasslike",
	tiles = {"tms_bluestone.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "too_many_stones:bluestone_cobble",
	sounds = default.node_sound_stone_defaults(),
	light_source = default.LIGHT_MAX,
})
--]]
