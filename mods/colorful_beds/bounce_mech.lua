-- colorful_beds/bounce_mech.lua

-- Modifies Beds To Be Bouncy
-- If You Land On The Bottom Portion You Add To The Height by 5%
-- While Landing Near The Top Portion Reduces Height By 5%
-- For Safety There Is 100% Damage Reduction When Falling Onto A Bed.

-- Original Beds
minetest.override_item("beds:fancy_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("beds:fancy_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

minetest.override_item("beds:bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("beds:bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

-- Black Beds
minetest.override_item("colorful_beds:black_fancy_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:black_fancy_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

minetest.override_item("colorful_beds:black_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:black_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

-- Black Beds
minetest.override_item("colorful_beds:black_fancy_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:black_fancy_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

minetest.override_item("colorful_beds:black_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:black_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

-- Blue Beds
minetest.override_item("colorful_beds:blue_fancy_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:blue_fancy_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

minetest.override_item("colorful_beds:blue_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:blue_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

-- Brown Beds
minetest.override_item("colorful_beds:brown_fancy_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:brown_fancy_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

minetest.override_item("colorful_beds:brown_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:brown_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

-- Cyan Beds
minetest.override_item("colorful_beds:cyan_fancy_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:cyan_fancy_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

minetest.override_item("colorful_beds:cyan_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:cyan_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

-- Dark Green Beds
minetest.override_item("colorful_beds:dark_green_fancy_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:dark_green_fancy_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

minetest.override_item("colorful_beds:dark_green_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:dark_green_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

-- Dark Grey Beds
minetest.override_item("colorful_beds:dark_grey_fancy_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:dark_grey_fancy_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

minetest.override_item("colorful_beds:dark_grey_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:dark_grey_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

-- Green Beds
minetest.override_item("colorful_beds:green_fancy_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:green_fancy_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

minetest.override_item("colorful_beds:green_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:green_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

-- Grey Beds
minetest.override_item("colorful_beds:grey_fancy_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:grey_fancy_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

minetest.override_item("colorful_beds:grey_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:grey_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

-- Light Blue Beds
minetest.override_item("colorful_beds:light_blue_fancy_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:light_blue_fancy_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

minetest.override_item("colorful_beds:light_blue_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:light_blue_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

-- Magenta Beds
minetest.override_item("colorful_beds:magenta_fancy_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:magenta_fancy_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

minetest.override_item("colorful_beds:magenta_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:magenta_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

-- Orange Beds
minetest.override_item("colorful_beds:orange_fancy_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:orange_fancy_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

minetest.override_item("colorful_beds:orange_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:orange_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

-- Pink Beds
minetest.override_item("colorful_beds:pink_fancy_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:pink_fancy_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

minetest.override_item("colorful_beds:pink_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:pink_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

-- Red Beds
minetest.override_item("colorful_beds:red_fancy_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:red_fancy_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

minetest.override_item("colorful_beds:red_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:red_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

-- Violet Beds
minetest.override_item("colorful_beds:violet_fancy_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:violet_fancy_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

minetest.override_item("colorful_beds:violet_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:violet_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

-- White Beds
minetest.override_item("colorful_beds:white_fancy_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:white_fancy_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

minetest.override_item("colorful_beds:white_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:white_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

-- Yellow Beds
minetest.override_item("colorful_beds:yellow_fancy_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:yellow_fancy_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})

minetest.override_item("colorful_beds:yellow_bed_bottom", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 105, fall_damage_add_percent = -100
	}
})
minetest.override_item("colorful_beds:yellow_bed_top", {
	groups = {
		choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1, bouncy = 95, fall_damage_add_percent = -100
	}
})