-- colorful_beds/colorful_beds_orange.lua

-- Fancy Beds Section

beds.register_bed("colorful_beds:orange_fancy_bed", {
	description = ("Orange Fancy Bed"),
	inventory_image = "orange_beds_fancy.png",
	wield_image = "orange_beds_fancy.png",
	tiles = {
	bottom = {
		"orange_beds_bed_top1.png",
		"beds_bed_under.png",
		"orange_beds_bed_side1.png",
		"orange_beds_bed_side1.png^[transformFX",
		"orange_beds_bed_foot.png",
		"orange_beds_bed_foot.png",
	},
	top = {
		"orange_beds_bed_top2.png",
		"beds_bed_under.png",
		"orange_beds_bed_side2.png",
		"orange_beds_bed_side2.png^[transformFX",
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
		{"wool:orange", "wool:orange", "wool:orange"},
		{"group:wood", "group:wood", "group:wood"}
	}
})

-- Simple Beds Section

beds.register_bed("colorful_beds:orange_bed", {
	description = ("Orange Simple Bed"),
	inventory_image = "orange_beds_bed.png",
	wield_image = "orange_beds_bed.png",	
	tiles = {
	bottom = {
		"orange_beds_bed_top_bottom.png^[transformR90",
		"beds_bed_under.png",
		"orange_beds_bed_side_bottom_r.png",
		"orange_beds_bed_side_bottom_r.png^[transformfx",
		"beds_transparent.png",
		"orange_beds_bed_side_bottom.png"
	},
	top = {
		"orange_beds_bed_top_top.png^[transformR90",
		"beds_bed_under.png",
		"orange_beds_bed_side_top_r.png",
		"orange_beds_bed_side_top_r.png^[transformfx",
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
		{"wool:orange", "wool:orange", "wool:orange"},
		{"group:wood", "group:wood", "group:wood"}
	}
})