-- colorful_beds/colorful_beds_black.lua

-- Fancy Beds Section

beds.register_bed("colorful_beds:black_fancy_bed", {
	description = ("Black Fancy Bed"),
	inventory_image = "black_beds_fancy.png",
	wield_image = "black_beds_fancy.png",
	tiles = {
	bottom = {
		"black_beds_bed_top1.png",
		"beds_bed_under.png",
		"black_beds_bed_side1.png",
		"black_beds_bed_side1.png^[transformFX",
		"black_beds_bed_foot.png",
		"black_beds_bed_foot.png",
	},
	top = {
		"black_beds_bed_top2.png",
		"beds_bed_under.png",
		"black_beds_bed_side2.png",
		"black_beds_bed_side2.png^[transformFX",
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
		{"wool:black", "wool:black", "wool:black"},
		{"group:wood", "group:wood", "group:wood"}
	}
})

-- Simple Beds Section

beds.register_bed("colorful_beds:black_bed", {
	description = ("Black Simple Bed"),
	inventory_image = "black_beds_bed.png",
	wield_image = "black_beds_bed.png",	
	tiles = {
	bottom = {
		"black_beds_bed_top_bottom.png^[transformR90",
		"beds_bed_under.png",
		"black_beds_bed_side_bottom_r.png",
		"black_beds_bed_side_bottom_r.png^[transformfx",
		"beds_transparent.png",
		"black_beds_bed_side_bottom.png"
	},
	top = {
		"black_beds_bed_top_top.png^[transformR90",
		"beds_bed_under.png",
		"black_beds_bed_side_top_r.png",
		"black_beds_bed_side_top_r.png^[transformfx",
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
		{"wool:black", "wool:black", "wool:black"},
		{"group:wood", "group:wood", "group:wood"}
	}
})