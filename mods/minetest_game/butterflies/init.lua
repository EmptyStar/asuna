-- butterflies/init.lua

-- Load support for MT game translation.
local S = minetest.get_translator("butterflies")

-- register butterflies
local butter_list = {
	{"white",  S("White Butterfly")},
	{"red",    S("Red Butterfly")},
	{"violet", S("Violet Butterfly")}
}

for i in ipairs (butter_list) do
	local name = butter_list[i][1]
	local desc = butter_list[i][2]

	minetest.register_node("butterflies:butterfly_"..name, {
		description = desc,
		drawtype = "plantlike",
		tiles = {{
			name = "butterflies_butterfly_"..name.."_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3
			},
		}},
		inventory_image = "butterflies_butterfly_"..name..".png",
		wield_image =  "butterflies_butterfly_"..name..".png",
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
		floodable = true,
		on_place = function(itemstack, placer, pointed_thing)
			local player_name = placer:get_player_name()
			local pos = pointed_thing.above

			if not minetest.is_protected(pos, player_name) and
					not minetest.is_protected(pointed_thing.under, player_name) and
					minetest.get_node(pos).name == "air" then
				minetest.set_node(pos, {name = "butterflies:butterfly_"..name})
				minetest.get_node_timer(pos):start(1)
				itemstack:take_item()
			end
			return itemstack
		end,
		on_timer = function(pos, elapsed)
			if minetest.get_node_light(pos) < 11 then
				minetest.set_node(pos, {name = "butterflies:hidden_butterfly_"..name})
			end
			minetest.get_node_timer(pos):start(30)
		end
	})

	minetest.register_node("butterflies:hidden_butterfly_"..name, {
		drawtype = "airlike",
		inventory_image = "butterflies_butterfly_"..name..".png^default_invisible_node_overlay.png",
		wield_image =  "butterflies_butterfly_"..name..".png^default_invisible_node_overlay.png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		pointable = false,
		diggable = false,
		drop = "",
		groups = {not_in_creative_inventory = 1},
		floodable = true,
		on_place = function(itemstack, placer, pointed_thing)
			local player_name = placer:get_player_name()
			local pos = pointed_thing.above

			if not minetest.is_protected(pos, player_name) and
					not minetest.is_protected(pointed_thing.under, player_name) and
					minetest.get_node(pos).name == "air" then
				minetest.set_node(pos, {name = "butterflies:hidden_butterfly_"..name})
				minetest.get_node_timer(pos):start(1)
				itemstack:take_item()
			end
			return itemstack
		end,
		on_timer = function(pos, elapsed)
			if minetest.get_node_light(pos) >= 11 then
				minetest.set_node(pos, {name = "butterflies:butterfly_"..name})
			end
			minetest.get_node_timer(pos):start(30)
		end
	})
end

-- restart butterfly timers
minetest.register_lbm({
	name = "butterflies:butterfly_timer",
	nodenames = {
		"butterflies:butterfly_white",
		"butterflies:butterfly_red",
		"butterflies:butterfly_violet",
	},
	run_at_every_load = true,

	action = function(pos)
		minetest.get_node_timer(pos):start(math.random(1,5))
	end,
})