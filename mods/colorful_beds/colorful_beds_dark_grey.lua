-- colorful_beds/colorful_beds_dark_grey.lua

-- Fancy Beds Section

beds.register_bed("colorful_beds:dark_grey_fancy_bed", {
	description = ("Dark Grey Fancy Bed"),
	inventory_image = "dark_grey_beds_fancy.png",
	wield_image = "dark_grey_beds_fancy.png",
	tiles = {
	bottom = {
		"dark_grey_beds_bed_top1.png",
		"beds_bed_under.png",
		"dark_grey_beds_bed_side1.png",
		"dark_grey_beds_bed_side1.png^[transformFX",
		"dark_grey_beds_bed_foot.png",
		"dark_grey_beds_bed_foot.png",
	},
	top = {
		"dark_grey_beds_bed_top2.png",
		"beds_bed_under.png",
		"dark_grey_beds_bed_side2.png",
		"dark_grey_beds_bed_side2.png^[transformFX",
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
		{"wool:dark_grey", "wool:dark_grey", "wool:dark_grey"},
		{"group:wood", "group:wood", "group:wood"}
	}
})

-- Simple Beds Section

beds.register_bed("colorful_beds:dark_grey_bed", {
	description = ("Dark Grey Simple Bed"),
	inventory_image = "dark_grey_beds_bed.png",
	wield_image = "dark_grey_beds_bed.png",	
	tiles = {
	bottom = {
		"dark_grey_beds_bed_top_bottom.png^[transformR90",
		"beds_bed_under.png",
		"dark_grey_beds_bed_side_bottom_r.png",
		"dark_grey_beds_bed_side_bottom_r.png^[transformfx",
		"beds_transparent.png",
		"dark_grey_beds_bed_side_bottom.png"
	},
	top = {
		"dark_grey_beds_bed_top_top.png^[transformR90",
		"beds_bed_under.png",
		"dark_grey_beds_bed_side_top_r.png",
		"dark_grey_beds_bed_side_top_r.png^[transformfx",
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
		{"wool:dark_grey", "wool:dark_grey", "wool:dark_grey"},
		{"group:wood", "group:wood", "group:wood"}
	}
})