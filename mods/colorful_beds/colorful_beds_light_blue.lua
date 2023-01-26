-- colorful_beds/colorful_beds_light_blue.lua

-- Adds Light Blue Wool Node

minetest.register_node("colorful_beds:wool_light_blue", {
	description = ("Light Blue Wool"),
	tiles = {"cb_wool_light_blue.png"},
	is_ground_content = false,
	groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
				flammable = 3, wool = 1},
	sounds = default.node_sound_defaults(),
})

minetest.register_craft({
	type = "shapeless",
	output = "colorful_beds:wool_light_blue 1",
	recipe = {"cropocalypse:light_blue_dye", "group:wool"}
})

-- Fancy Beds Section

beds.register_bed("colorful_beds:light_blue_fancy_bed", {
	description = ("Light Blue Fancy Bed"),
	inventory_image = "light_blue_beds_fancy.png",
	wield_image = "light_blue_beds_fancy.png",
	tiles = {
	bottom = {
		"light_blue_beds_bed_top1.png",
		"beds_bed_under.png",
		"light_blue_beds_bed_side1.png",
		"light_blue_beds_bed_side1.png^[transformFX",
		"light_blue_beds_bed_foot.png",
		"light_blue_beds_bed_foot.png",
	},
	top = {
		"light_blue_beds_bed_top2.png",
		"beds_bed_under.png",
		"light_blue_beds_bed_side2.png",
		"light_blue_beds_bed_side2.png^[transformFX",
		"beds_bed_head.png",
		"beds_bed_head.png",
	}
	},
	nodebox = {
		bottom = {
			{-0.5, -0.5, -0.5, -0.375, -0.065, -0.4375},
			{0.375, -0.5, -0.5, 0.5, -0.065, -0.4375},
			{-0.5, -0.375, -0.5, 0.5, -0.125, -0.4375},
			{-0.5, -0.375, -0.5, -0.4375, -0.125, 0.5},
			{0.4375, -0.375, -0.5, 0.5, -0.125, 0.5},
			{-0.4375, -0.3125, -0.4375, 0.4375, -0.0625, 0.5},
		},
		top = {
			{-0.5, -0.5, 0.4375, -0.375, 0.1875, 0.5},
			{0.375, -0.5, 0.4375, 0.5, 0.1875, 0.5},
			{-0.5, 0, 0.4375, 0.5, 0.125, 0.5},
			{-0.5, -0.375, 0.4375, 0.5, -0.125, 0.5},
			{-0.5, -0.375, -0.5, -0.4375, -0.125, 0.5},
			{0.4375, -0.375, -0.5, 0.5, -0.125, 0.5},
			{-0.4375, -0.3125, -0.5, 0.4375, -0.0625, 0.4375},
		}
	},
	selectionbox = {-0.5, -0.5, -0.5, 0.5, 0.06, 1.5},
	recipe = {
		{"", "", "group:stick"},
		{"colorful_beds:wool_light_blue", "colorful_beds:wool_light_blue", "colorful_beds:wool_light_blue"},
		{"group:wood", "group:wood", "group:wood"}
	}
})

-- Simple Beds Section

beds.register_bed("colorful_beds:light_blue_bed", {
	description = ("Light Blue Simple Bed"),
	inventory_image = "light_blue_beds_bed.png",
	wield_image = "light_blue_beds_bed.png",	
	tiles = {
	bottom = {
		"light_blue_beds_bed_top_bottom.png^[transformR90",
		"beds_bed_under.png",
		"light_blue_beds_bed_side_bottom_r.png",
		"light_blue_beds_bed_side_bottom_r.png^[transformfx",
		"beds_transparent.png",
		"light_blue_beds_bed_side_bottom.png"
	},
	top = {
		"light_blue_beds_bed_top_top.png^[transformR90",
		"beds_bed_under.png",
		"light_blue_beds_bed_side_top_r.png",
		"light_blue_beds_bed_side_top_r.png^[transformfx",
		"beds_bed_side_top.png",
		"beds_transparent.png",
	}
	},
	nodebox = {
		bottom = {-0.5, -0.5, -0.5, 0.5, 0.0625, 0.5},
		top = {-0.5, -0.5, -0.5, 0.5, 0.0625, 0.5},
	},
	selectionbox = {-0.5, -0.5, -0.5, 0.5, 0.0625, 1.5},
	recipe = {
		{"colorful_beds:wool_light_blue", "colorful_beds:wool_light_blue", "colorful_beds:wool_light_blue"},
		{"group:wood", "group:wood", "group:wood"}
	}
})