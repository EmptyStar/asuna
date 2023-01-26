
--------------------------------------------------------------------------------------------------------------------------------
minetest.register_node("frost_land:blue_firefly", {
	description = "Blue Firefly",
	drawtype = "plantlike",
	tiles = {{
		name = "frost_land_blue_firefly_animated.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1.5
		},
	}},
	inventory_image = "frost_land_blue_firefly.png",
	wield_image =  "frost_land_blue_firefly.png",
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
			minetest.set_node(pos, {name = "frost_land:blue_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) > 11 then
			minetest.set_node(pos, {name = "frost_land:hidden_blue_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

minetest.register_node("frost_land:hidden_blue_firefly", {
	description = "Hidden Blue Firefly",
	drawtype = "airlike",
	inventory_image = "frost_land_blue_firefly.png^default_invisible_node_overlay.png",
	wield_image =  "frost_land_blue_firefly.png^default_invisible_node_overlay.png",
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
			minetest.set_node(pos, {name = "frost_land:hidden_blue_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) <= 11 then
			minetest.set_node(pos, {name = "frost_land:blue_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

-------------------------------------------------------------------------------------------------------------------------------
minetest.register_node("frost_land:pink_firefly", {
	description = "Pink Firefly",
	drawtype = "plantlike",
	tiles = {{
		name = "frost_land_pink_firefly_animated.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1.5
		},
	}},
	inventory_image = "frost_land_pink_firefly.png",
	wield_image =  "frost_land_pink_firefly.png",
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
			minetest.set_node(pos, {name = "frost_land:pink_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) > 11 then
			minetest.set_node(pos, {name = "frost_land:hidden_pink_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

minetest.register_node("frost_land:hidden_pink_firefly", {
	description = "Hidden Pink Firefly",
	drawtype = "airlike",
	inventory_image = "frost_land_pink_firefly.png^default_invisible_node_overlay.png",
	wield_image =  "frost_land_pink_firefly.png^default_invisible_node_overlay.png",
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
			minetest.set_node(pos, {name = "frost_land:hidden_pink_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) <= 11 then
			minetest.set_node(pos, {name = "frost_land:pink_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

-------------------------------------------------------------------------------------------------------------------------------
minetest.register_node("frost_land:cyan_firefly", {
	description = "Cyan Firefly",
	drawtype = "plantlike",
	tiles = {{
		name = "frost_land_cyan_firefly_animated.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1.5
		},
	}},
	inventory_image = "frost_land_cyan_firefly.png",
	wield_image =  "frost_land_cyan_firefly.png",
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
			minetest.set_node(pos, {name = "frost_land:cyan_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) > 11 then
			minetest.set_node(pos, {name = "frost_land:hidden_cyan_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

minetest.register_node("frost_land:hidden_cyan_firefly", {
	description = "Hidden Cyan Firefly",
	drawtype = "airlike",
	inventory_image = "frost_land_cyan_firefly.png^default_invisible_node_overlay.png",
	wield_image =  "frost_land_cyan_firefly.png^default_invisible_node_overlay.png",
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
			minetest.set_node(pos, {name = "frost_land:hidden_cyan_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) <= 11 then
			minetest.set_node(pos, {name = "frost_land:cyan_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

------------------------------------------------------------------------------------------------------------------------------
minetest.register_node("frost_land:white_firefly", {
	description = "White Firefly",
	drawtype = "plantlike",
	tiles = {{
		name = "frost_land_white_firefly_animated.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1.5
		},
	}},
	inventory_image = "frost_land_white_firefly.png",
	wield_image =  "frost_land_white_firefly.png",
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
			minetest.set_node(pos, {name = "frost_land:white_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) > 11 then
			minetest.set_node(pos, {name = "frost_land:hidden_white_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

minetest.register_node("frost_land:hidden_white_firefly", {
	description = "Hidden White Firefly",
	drawtype = "airlike",
	inventory_image = "frost_land_white_firefly.png^default_invisible_node_overlay.png",
	wield_image =  "frost_land_white_firefly.png^default_invisible_node_overlay.png",
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
			minetest.set_node(pos, {name = "frost_land:hidden_white_firefly"})
			minetest.get_node_timer(pos):start(1)
			itemstack:take_item()
		end
		return itemstack
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) <= 11 then
			minetest.set_node(pos, {name = "frost_land:white_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:snow"},
	sidelen = 16,
	fill_ratio = 0.02,
	biomes = {"frost_land"},
	decoration = {
 "frost_land:white_firefly", "frost_land:cyan_firefly", "frost_land:blue_firefly", "frost_land:pink_firefly",
	}
})
