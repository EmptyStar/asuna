minetest.register_node("japaneseforest:red_firefly", {
	description = "Red Firefly",
	drawtype = "plantlike",
	tiles = {{
		name = "japaneseforest_red_firefly_animated.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1.5
		},
	}},
	inventory_image = "japaneseforest_red_firefly.png",
	wield_image =  "japaneseforest_red_firefly.png",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	buildable_to = true,
	walkable = false,
	groups = {catchable = 1},
	selection_box = {
		type = "fixed",
		fixed = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
	},
	light_source = 6,
	floodable = true,
	on_place = function(itemstack, placer, pointed_thing)
		local player_name = placer:get_player_name()
		local pos = pointed_thing.above

		if not minetest.is_protected(pos, player_name) and
				not minetest.is_protected(pointed_thing.under, player_name) and
				minetest.get_node(pos).name == "air" then
			minetest.set_node(pos, {name = "japaneseforest:red_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) > 11 then
			minetest.set_node(pos, {name = "japaneseforest:hidden_red_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

minetest.register_node("japaneseforest:hidden_red_firefly", {
	description = "Hidden Red Firefly",
	drawtype = "airlike",
	inventory_image = "japaneseforest_red_firefly.png^default_invisible_node_overlay.png",
	wield_image =  "japaneseforest_red_firefly.png^default_invisible_node_overlay.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	groups = {not_in_creative_inventory = 1},
	floodable = true,
	on_place = function(itemstack, placer, pointed_thing)
		local player_name = placer:get_player_name()
		local pos = pointed_thing.above

		if not minetest.is_protected(pos, player_name) and
				not minetest.is_protected(pointed_thing.under, player_name) and
				minetest.get_node(pos).name == "air" then
			minetest.set_node(pos, {name = "japaneseforest:hidden_red_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) <= 11 then
			minetest.set_node(pos, {name = "japaneseforest:red_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})
--------------------------------------------------------------------------------------------------------------------------------
minetest.register_node("japaneseforest:blue_firefly", {
	description = "Blue Firefly",
	drawtype = "plantlike",
	tiles = {{
		name = "japaneseforest_blue_firefly_animated.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1.5
		},
	}},
	inventory_image = "japaneseforest_blue_firefly.png",
	wield_image =  "japaneseforest_blue_firefly.png",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	buildable_to = true,
	walkable = false,
	groups = {catchable = 1},
	selection_box = {
		type = "fixed",
		fixed = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
	},
	light_source = 6,
	floodable = true,
	on_place = function(itemstack, placer, pointed_thing)
		local player_name = placer:get_player_name()
		local pos = pointed_thing.above

		if not minetest.is_protected(pos, player_name) and
				not minetest.is_protected(pointed_thing.under, player_name) and
				minetest.get_node(pos).name == "air" then
			minetest.set_node(pos, {name = "japaneseforest:blue_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) > 11 then
			minetest.set_node(pos, {name = "japaneseforest:hidden_blue_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

minetest.register_node("japaneseforest:hidden_blue_firefly", {
	description = "Hidden Blue Firefly",
	drawtype = "airlike",
	inventory_image = "japaneseforest_blue_firefly.png^default_invisible_node_overlay.png",
	wield_image =  "japaneseforest_blue_firefly.png^default_invisible_node_overlay.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	groups = {not_in_creative_inventory = 1},
	floodable = true,
	on_place = function(itemstack, placer, pointed_thing)
		local player_name = placer:get_player_name()
		local pos = pointed_thing.above

		if not minetest.is_protected(pos, player_name) and
				not minetest.is_protected(pointed_thing.under, player_name) and
				minetest.get_node(pos).name == "air" then
			minetest.set_node(pos, {name = "japaneseforest:hidden_blue_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) <= 11 then
			minetest.set_node(pos, {name = "japaneseforest:blue_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

--------------------------------------------------------------------------------------------------------------------------------
minetest.register_node("japaneseforest:green_firefly", {
	description = "Green Firefly",
	drawtype = "plantlike",
	tiles = {{
		name = "japaneseforest_green_firefly_animated.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1.5
		},
	}},
	inventory_image = "japaneseforest_green_firefly.png",
	wield_image =  "japaneseforest_green_firefly.png",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	buildable_to = true,
	walkable = false,
	groups = {catchable = 1},
	selection_box = {
		type = "fixed",
		fixed = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
	},
	light_source = 6,
	floodable = true,
	on_place = function(itemstack, placer, pointed_thing)
		local player_name = placer:get_player_name()
		local pos = pointed_thing.above

		if not minetest.is_protected(pos, player_name) and
				not minetest.is_protected(pointed_thing.under, player_name) and
				minetest.get_node(pos).name == "air" then
			minetest.set_node(pos, {name = "japaneseforest:green_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) > 11 then
			minetest.set_node(pos, {name = "japaneseforest:hidden_green_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

minetest.register_node("japaneseforest:hidden_green_firefly", {
	description = "Hidden Green Firefly",
	drawtype = "airlike",
	inventory_image = "japaneseforest_green_firefly.png^default_invisible_node_overlay.png",
	wield_image =  "japaneseforest_green_firefly.png^default_invisible_node_overlay.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	groups = {not_in_creative_inventory = 1},
	floodable = true,
	on_place = function(itemstack, placer, pointed_thing)
		local player_name = placer:get_player_name()
		local pos = pointed_thing.above

		if not minetest.is_protected(pos, player_name) and
				not minetest.is_protected(pointed_thing.under, player_name) and
				minetest.get_node(pos).name == "air" then
			minetest.set_node(pos, {name = "japaneseforest:hidden_green_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) <= 11 then
			minetest.set_node(pos, {name = "japaneseforest:green_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

--------------------------------------------------------------------------------------------------------------------------------
minetest.register_node("japaneseforest:violet_firefly", {
	description = "Violet Firefly",
	drawtype = "plantlike",
	tiles = {{
		name = "japaneseforest_violet_firefly_animated.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1.5
		},
	}},
	inventory_image = "japaneseforest_violet_firefly.png",
	wield_image =  "japaneseforest_violet_firefly.png",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	buildable_to = true,
	walkable = false,
	groups = {catchable = 1},
	selection_box = {
		type = "fixed",
		fixed = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
	},
	light_source = 6,
	floodable = true,
	on_place = function(itemstack, placer, pointed_thing)
		local player_name = placer:get_player_name()
		local pos = pointed_thing.above

		if not minetest.is_protected(pos, player_name) and
				not minetest.is_protected(pointed_thing.under, player_name) and
				minetest.get_node(pos).name == "air" then
			minetest.set_node(pos, {name = "japaneseforest:violet_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) > 11 then
			minetest.set_node(pos, {name = "japaneseforest:hidden_violet_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

minetest.register_node("japaneseforest:hidden_violet_firefly", {
	description = "Hidden Violet Firefly",
	drawtype = "airlike",
	inventory_image = "japaneseforest_violet_firefly.png^default_invisible_node_overlay.png",
	wield_image =  "japaneseforest_violet_firefly.png^default_invisible_node_overlay.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	groups = {not_in_creative_inventory = 1},
	floodable = true,
	on_place = function(itemstack, placer, pointed_thing)
		local player_name = placer:get_player_name()
		local pos = pointed_thing.above

		if not minetest.is_protected(pos, player_name) and
				not minetest.is_protected(pointed_thing.under, player_name) and
				minetest.get_node(pos).name == "air" then
			minetest.set_node(pos, {name = "japaneseforest:hidden_violet_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) <= 11 then
			minetest.set_node(pos, {name = "japaneseforest:violet_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})
--------------------------------------------------------------------------------------------------------------------------------
minetest.register_node("japaneseforest:orange_firefly", {
	description = "Orange Firefly",
	drawtype = "plantlike",
	tiles = {{
		name = "japaneseforest_orange_firefly_animated.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1.5
		},
	}},
	inventory_image = "japaneseforest_orange_firefly.png",
	wield_image =  "japaneseforest_orange_firefly.png",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	buildable_to = true,
	walkable = false,
	groups = {catchable = 1},
	selection_box = {
		type = "fixed",
		fixed = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
	},
	light_source = 6,
	floodable = true,
	on_place = function(itemstack, placer, pointed_thing)
		local player_name = placer:get_player_name()
		local pos = pointed_thing.above

		if not minetest.is_protected(pos, player_name) and
				not minetest.is_protected(pointed_thing.under, player_name) and
				minetest.get_node(pos).name == "air" then
			minetest.set_node(pos, {name = "japaneseforest:orange_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) > 11 then
			minetest.set_node(pos, {name = "japaneseforest:hidden_orange_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

minetest.register_node("japaneseforest:hidden_orange_firefly", {
	description = "Hidden Orange Firefly",
	drawtype = "airlike",
	inventory_image = "japaneseforest_orange_firefly.png^default_invisible_node_overlay.png",
	wield_image =  "japaneseforest_orange_firefly.png^default_invisible_node_overlay.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	groups = {not_in_creative_inventory = 1},
	floodable = true,
	on_place = function(itemstack, placer, pointed_thing)
		local player_name = placer:get_player_name()
		local pos = pointed_thing.above

		if not minetest.is_protected(pos, player_name) and
				not minetest.is_protected(pointed_thing.under, player_name) and
				minetest.get_node(pos).name == "air" then
			minetest.set_node(pos, {name = "japaneseforest:hidden_orange_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) <= 11 then
			minetest.set_node(pos, {name = "japaneseforest:orange_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

-------------------------------------------------------------------------------------------------------------------------------
minetest.register_node("japaneseforest:pink_firefly", {
	description = "Pink Firefly",
	drawtype = "plantlike",
	tiles = {{
		name = "japaneseforest_pink_firefly_animated.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1.5
		},
	}},
	inventory_image = "japaneseforest_pink_firefly.png",
	wield_image =  "japaneseforest_pink_firefly.png",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	buildable_to = true,
	walkable = false,
	groups = {catchable = 1},
	selection_box = {
		type = "fixed",
		fixed = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
	},
	light_source = 6,
	floodable = true,
	on_place = function(itemstack, placer, pointed_thing)
		local player_name = placer:get_player_name()
		local pos = pointed_thing.above

		if not minetest.is_protected(pos, player_name) and
				not minetest.is_protected(pointed_thing.under, player_name) and
				minetest.get_node(pos).name == "air" then
			minetest.set_node(pos, {name = "japaneseforest:pink_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) > 11 then
			minetest.set_node(pos, {name = "japaneseforest:hidden_pink_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

minetest.register_node("japaneseforest:hidden_pink_firefly", {
	description = "Hidden Pink Firefly",
	drawtype = "airlike",
	inventory_image = "japaneseforest_pink_firefly.png^default_invisible_node_overlay.png",
	wield_image =  "japaneseforest_pink_firefly.png^default_invisible_node_overlay.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	groups = {not_in_creative_inventory = 1},
	floodable = true,
	on_place = function(itemstack, placer, pointed_thing)
		local player_name = placer:get_player_name()
		local pos = pointed_thing.above

		if not minetest.is_protected(pos, player_name) and
				not minetest.is_protected(pointed_thing.under, player_name) and
				minetest.get_node(pos).name == "air" then
			minetest.set_node(pos, {name = "japaneseforest:hidden_pink_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) <= 11 then
			minetest.set_node(pos, {name = "japaneseforest:pink_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

-------------------------------------------------------------------------------------------------------------------------------
minetest.register_node("japaneseforest:cyan_firefly", {
	description = "Cyan Firefly",
	drawtype = "plantlike",
	tiles = {{
		name = "japaneseforest_cyan_firefly_animated.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1.5
		},
	}},
	inventory_image = "japaneseforest_cyan_firefly.png",
	wield_image =  "japaneseforest_cyan_firefly.png",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	buildable_to = true,
	walkable = false,
	groups = {catchable = 1},
	selection_box = {
		type = "fixed",
		fixed = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
	},
	light_source = 6,
	floodable = true,
	on_place = function(itemstack, placer, pointed_thing)
		local player_name = placer:get_player_name()
		local pos = pointed_thing.above

		if not minetest.is_protected(pos, player_name) and
				not minetest.is_protected(pointed_thing.under, player_name) and
				minetest.get_node(pos).name == "air" then
			minetest.set_node(pos, {name = "japaneseforest:cyan_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) > 11 then
			minetest.set_node(pos, {name = "japaneseforest:hidden_cyan_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

minetest.register_node("japaneseforest:hidden_cyan_firefly", {
	description = "Hidden Cyan Firefly",
	drawtype = "airlike",
	inventory_image = "japaneseforest_cyan_firefly.png^default_invisible_node_overlay.png",
	wield_image =  "japaneseforest_cyan_firefly.png^default_invisible_node_overlay.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	groups = {not_in_creative_inventory = 1},
	floodable = true,
	on_place = function(itemstack, placer, pointed_thing)
		local player_name = placer:get_player_name()
		local pos = pointed_thing.above

		if not minetest.is_protected(pos, player_name) and
				not minetest.is_protected(pointed_thing.under, player_name) and
				minetest.get_node(pos).name == "air" then
			minetest.set_node(pos, {name = "japaneseforest:hidden_cyan_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) <= 11 then
			minetest.set_node(pos, {name = "japaneseforest:cyan_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

------------------------------------------------------------------------------------------------------------------------------
minetest.register_node("japaneseforest:white_firefly", {
	description = "White Firefly",
	drawtype = "plantlike",
	tiles = {{
		name = "japaneseforest_white_firefly_animated.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1.5
		},
	}},
	inventory_image = "japaneseforest_white_firefly.png",
	wield_image =  "japaneseforest_white_firefly.png",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	buildable_to = true,
	walkable = false,
	groups = {catchable = 1},
	selection_box = {
		type = "fixed",
		fixed = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
	},
	light_source = 6,
	floodable = true,
	on_place = function(itemstack, placer, pointed_thing)
		local player_name = placer:get_player_name()
		local pos = pointed_thing.above

		if not minetest.is_protected(pos, player_name) and
				not minetest.is_protected(pointed_thing.under, player_name) and
				minetest.get_node(pos).name == "air" then
			minetest.set_node(pos, {name = "japaneseforest:white_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) > 11 then
			minetest.set_node(pos, {name = "japaneseforest:hidden_white_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

minetest.register_node("japaneseforest:hidden_white_firefly", {
	description = "Hidden White Firefly",
	drawtype = "airlike",
	inventory_image = "japaneseforest_white_firefly.png^default_invisible_node_overlay.png",
	wield_image =  "japaneseforest_white_firefly.png^default_invisible_node_overlay.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	groups = {not_in_creative_inventory = 1},
	floodable = true,
	on_place = function(itemstack, placer, pointed_thing)
		local player_name = placer:get_player_name()
		local pos = pointed_thing.above

		if not minetest.is_protected(pos, player_name) and
				not minetest.is_protected(pointed_thing.under, player_name) and
				minetest.get_node(pos).name == "air" then
			minetest.set_node(pos, {name = "japaneseforest:hidden_white_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) <= 11 then
			minetest.set_node(pos, {name = "japaneseforest:white_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})


------------------------------------------------------------------------------------------------------------------------------
minetest.register_node("japaneseforest:black_firefly", {
	description = "Black Firefly",
	drawtype = "plantlike",
	tiles = {{
		name = "japaneseforest_black_firefly_animated.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1.5
		},
	}},
	inventory_image = "japaneseforest_black_firefly.png",
	wield_image =  "japaneseforest_black_firefly.png",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	buildable_to = true,
	walkable = false,
	groups = {catchable = 1},
	selection_box = {
		type = "fixed",
		fixed = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
	},
	light_source = 6,
	floodable = true,
	on_place = function(itemstack, placer, pointed_thing)
		local player_name = placer:get_player_name()
		local pos = pointed_thing.above

		if not minetest.is_protected(pos, player_name) and
				not minetest.is_protected(pointed_thing.under, player_name) and
				minetest.get_node(pos).name == "air" then
			minetest.set_node(pos, {name = "japaneseforest:black_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) > 11 then
			minetest.set_node(pos, {name = "japaneseforest:hidden_black_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

minetest.register_node("japaneseforest:hidden_black_firefly", {
	description = "Hidden Black Firefly",
	drawtype = "airlike",
	inventory_image = "japaneseforest_black_firefly.png^default_invisible_node_overlay.png",
	wield_image =  "japaneseforest_black_firefly.png^default_invisible_node_overlay.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	groups = {not_in_creative_inventory = 1},
	floodable = true,
	on_place = function(itemstack, placer, pointed_thing)
		local player_name = placer:get_player_name()
		local pos = pointed_thing.above

		if not minetest.is_protected(pos, player_name) and
				not minetest.is_protected(pointed_thing.under, player_name) and
				minetest.get_node(pos).name == "air" then
			minetest.set_node(pos, {name = "japaneseforest:hidden_black_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) <= 11 then
			minetest.set_node(pos, {name = "japaneseforest:black_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"japaneseforest:japanese_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.02,
	biomes = {"japaneseforest"},
	decoration = {
"japaneseforest:red_firefly", "japaneseforest:orange_firefly", "japaneseforest:white_firefly", "japaneseforest:cyan_firefly", "japaneseforest:blue_firefly", "japaneseforest:green_firefly", "japaneseforest:pink_firefly", "japaneseforest:violet_firefly", "japaneseforest:black_firefly",
	}
})
