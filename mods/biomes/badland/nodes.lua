local modpath = minetest.get_modpath("badland")

minetest.register_node("badland:badland_grass", {
	description = "Badland Grass",
	tiles = {"badland_grass.png", "default_dirt.png",
		{name = "default_dirt.png^badland_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("badland:badland_leaves", {
	description = "Spooky Badland Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"badland_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"badland:badland_sapling_1"}, rarity = 20},
			{items = {"badland:badland_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("badland:badland_leaves_2", {
	description = "Haunted Badland Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"badland_leaves_2.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"badland:badland_sapling_2"}, rarity = 20},
			{items = {"badland:badland_leaves_2"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("badland:badland_leaves_3", {
	description = "Dusky Badland Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"badland_leaves_3.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"badland:badland_leaves_3"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("badland:badland_tree", {
	description = "Badland Tree",
	tiles = {"badland_tree_top.png", "badland_tree_top.png",
		"badland_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})


minetest.register_node("badland:badland_wood", {
	description = "Badland Tree",
	tiles = {"badland_wood.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

stairs.register_stair_and_slab(
	"badland_wood",
	"badland:badland_wood",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"badland_wood.png"},
	"Badland Wood Stair",
	"Badland Wood Slab",
	default.node_sound_wood_defaults(),
	true
)

doors.register_trapdoor("badland:badland_trapdoor", {
	description = "Badland Trapdoor",
	inventory_image = "badland_trapdoor.png",
	wield_image = "badland_trapdoor.png",
	tile_front = "badland_trapdoor.png",
	tile_side = "badland_trapdoor_side.png",
	gain_open = 0.06,
	gain_close = 0.13,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
})


doors.register("badland_door", {
		tiles = {{ name = "doors_badland_door.png", backface_culling = true }},
		description = "Badland Door",
		inventory_image = "doors_item_badland.png",
		groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		gain_open = 0.06,
		gain_close = 0.13,
		recipe = {
			{"badland:badland_wood", "badland:badland_wood"},
			{"badland:badland_wood", "badland:badland_wood"},
			{"badland:badland_wood", "badland:badland_wood"},
		}
})


doors.register_fencegate("badland:gate_badland", {
	description = "Badland Wood Fence Gate",
	texture = "badland_wood_fence.png",
	material = "badland:badland_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

	default.register_fence("badland:fence_badland_wood", {
		description = "Badland Wood Fence",
		texture = "badland_wood_fence.png",
		inventory_image = "default_fence_overlay.png^badland_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_overlay.png^badland_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		material = "badland:badland_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

	default.register_fence_rail("badland:fence_rail_badland_wood", {
		description = "Badland Wood Fence Rail",
		texture = "badland_wood_fence.png",
		inventory_image = "default_fence_rail_overlay.png^badland_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^badland_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = "badland:badland_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})


	minetest.register_node("badland:badland_grass_1", {
		description = "Badland Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"badland_grass_1.png"},
		-- Use texture of a taller grass stage in inventory
		inventory_image = "badland_grass_3.png",
		wield_image = "badland_grass_3.png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
		max_items = 1,
			items = {
				{items = {"farming:seed_wheat"}, rarity = 5},
				{items = {"badland:badland_grass_1"}},
			},
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
		},

		on_place = function(itemstack, placer, pointed_thing)
			-- place a random grass node
			local stack = ItemStack("badland:badland_grass_" .. math.random(1,5))
			local ret = minetest.item_place(stack, placer, pointed_thing)
			return ItemStack("badland:badland_grass_1 " ..
				itemstack:get_count() - (1 - ret:get_count()))
		end,
	})

for i = 2, 5 do
	minetest.register_node("badland:badland_grass_" .. i, {
		description = "Badland Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"badland_grass_" .. i .. ".png"},
		inventory_image = "badland_grass_" .. i .. ".png",
		wield_image = "badland_grass_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		drop = "badland:badland_grass_1",
		groups = {snappy = 3, flora = 1, attached_node = 1,
			not_in_creative_inventory = 1, grass = 1, flammable = 1},
			max_items = 1,
		items = {
			{items = {"farming:seed_wheat"}, rarity = 5},
			{items = {"badland:badland_grass_1"}},
		},
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16},
		},
	})
end

minetest.register_node("badland:scarecrow", {
	description = "Scarecrow",
	drawtype = "mesh",
	mesh = "scarecrow.obj",
	paramtype2 = "facedir",
	tiles = {
		"badland_scarecrow.png",
	},
	visual_scale = 0.5,
	wield_image = "badland_scarecrow_item.png",
	wield_scale = {x=1.0, y=1.0, z=1.0},
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 1, 0.3}
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 1, 0.3}
	},
	inventory_image = "badland_scarecrow_item.png",
	groups = {choppy = 1, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_wood_defaults()
})

-- Pumpkin
minetest.register_node("badland:pumpkin_block", {
	description = "Pumpkin Block",
	tiles = {"badland_pumpkin_fruit_top.png", "badland_pumpkin_fruit_top.png", "badland_pumpkin_fruit_side.png", "badland_pumpkin_fruit_side.png", "badland_pumpkin_fruit_side.png", "badland_pumpkin_fruit_side_off.png"},
	paramtype2 = "facedir",
	sounds = default.node_sound_wood_defaults(),
	is_ground_content = false,
	groups = {snappy=3, flammable=4, fall_damage_add_percent=-30},
	on_construct = pumpkin_on_construct
})

-- PUMPKIN LANTERN -- from recipe
minetest.register_node("badland:pumpkin_lantern", {
	description = "Jack o' Lantern",
	tiles = {"badland_pumpkin_fruit_top.png", "badland_pumpkin_fruit_top.png", "badland_pumpkin_fruit_side.png", "badland_pumpkin_fruit_side.png", "badland_pumpkin_fruit_side.png", "badland_pumpkin_fruit_side_on.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sounds = default.node_sound_wood_defaults(),
	is_ground_content = false,
	light_source = 12,
	drop = "badland:pumpkin_lantern",
	groups = {snappy=3, flammable=4, fall_damage_add_percent=-30},
	on_construct = pumpkin_on_construct
})

--[[
	Trees
]]

local trees = {
	{
		name = "Spooky",
		grow_function = function(pos)
			minetest.place_schematic({x = pos.x-2, y = pos.y, z = pos.z-2}, modpath.."/schematics/badland_tree_1.mts", "0", nil, false)
		end,
	},
	{
		name = "Haunted",
		grow_function = function(pos)
			minetest.place_schematic({x = pos.x-3, y = pos.y, z = pos.z-2}, modpath.."/schematics/badland_tree_3.mts", "0", nil, false)
		end,
	},
}

local mod_bonemeal = minetest.get_modpath("bonemeal")

for index,def in ipairs(trees) do
	local sapling = "badland:badland_sapling_" .. index
	local image = "badland_sapling_" .. index .. ".png"
	local leaves = "badland:badland_leaves_" .. index

	-- Register sapling
	minetest.register_node(sapling, {
		description = def.name .. " Badland Sapling",
		drawtype = "plantlike",
		tiles = {image},
		inventory_image = image,
		wield_image = image,
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		on_timer = function(pos)
			if not default.can_grow(pos) then
				-- try a bit later again
				minetest.get_node_timer(pos):start(math.random(240, 600))
			else
				minetest.remove_node(pos)
				def.grow_function(pos)
			end
		end,
		selection_box = {
			type = "fixed",
			fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 2 / 16, 4 / 16}
		},
		groups = {snappy = 2, dig_immediate = 3, flammable = 2,
			attached_node = 1, sapling = 1},
		sounds = default.node_sound_leaves_defaults(),

		on_construct = function(pos)
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		end,

		on_place = function(itemstack, placer, pointed_thing)
			itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
				sapling,
				-- minp, maxp to be checked, relative to sapling pos
				{x = -1, y = 0, z = -1},
				{x = 1, y = 1, z = 1},
				-- maximum interval of interior volume check
				2)

			return itemstack
		end,
	})

	-- Register sapling crafting recipe
	minetest.register_craft({
		output = sapling,
		recipe = {
			{"", leaves, ""},
			{leaves, "default:stick", leaves}
		},
	})

	-- Add bonemeal integration if supported
	if mod_bonemeal then
		bonemeal:add_sapling({
			{sapling, def.grow_function, "soil"},
		})
	end
end
