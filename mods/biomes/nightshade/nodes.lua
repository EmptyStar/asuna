local modpath = minetest.get_modpath("nightshade")

local function grow_new_nightshade_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end
	minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x-1, y = pos.y, z = pos.z-1}, modpath.."/schematics/nightshade_tree_1.mts", "0", nil, false)
end

minetest.register_node("nightshade:nightshade_dirt_with_grass", {
	description = "Nightshade Dirt With Grass",
	tiles = {"nightshade_nightshade_grass.png", "default_dirt.png",
		{name = "default_dirt.png^nightshade_nightshade_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("nightshade:nightshade_leaves_1", {
	description = "Nightshade Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"nightshade_tree_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"nightshade:nightshade_sapling"}, rarity = 20},
			{items = {"nightshade:nightshade_leaves_1"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("nightshade:nightshade_glowin_leaves_1", {
	description = "Nightshade Glowing Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"nightshade_tree_glowing_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	light_source = 15,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"nightshade:nightshade_sapling"}, rarity = 20},
			{items = {"nightshade:nightshade_glowin_leaves_1"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,

})


minetest.register_node("nightshade:nightshade_tree", {
	description = "Nightshade Tree",
	tiles = {"nightshade_tree_top.png", "nightshade_tree_top.png",
		"nightshade_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("nightshade:nightshade_wood", {
	description = "Nightshade Wood",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"nightshade_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("nightshade:nightshade_lamp", {
	description = "Nightshade Lamp",
	drawtype = "glasslike",
	tiles = {"nightshade_lamp.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
})

minetest.register_node("nightshade:nightshade_grass", {
	description = "Nightshade Grass",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.5,
	tiles = {"nightshade_grass.png"},
	inventory_image = "nightshade_grass.png",
	wield_image = "nightshade_grass.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, junglegrass = 1, flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
})

stairs.register_stair_and_slab(
	"nightshade_wood",
	"nightshade:nightshade_wood",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"nightshade_wood.png"},
	"Nightshade Wood Stair",
	"Nightshade Wood Slab",
	default.node_sound_wood_defaults(),
	true
)

doors.register_trapdoor("nightshade:nightshade_trapdoor", {
	description = "Nightshade Trapdoor",
	inventory_image = "nightshade_trapdoor.png",
	wield_image = "nightshade_trapdoor.png",
	tile_front = "nightshade_trapdoor.png",
	tile_side = "nightshade_trapdoor_side.png",
	gain_open = 0.06,
	gain_close = 0.13,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
})


doors.register("nightshade_door", {
		tiles = {{ name = "doors_nightshade_door.png", backface_culling = true }},
		description = "Nightshade Door",
		inventory_image = "doors_item_nightshade.png",
		groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		gain_open = 0.06,
		gain_close = 0.13,
		recipe = {
			{"nightshade:nightshade_wood", "nightshade:nightshade_wood"},
			{"nightshade:nightshade_wood", "nightshade:nightshade_wood"},
			{"nightshade:nightshade_wood", "nightshade:nightshade_wood"},
		}
})


doors.register_fencegate("nightshade:gate_nightshade", {
	description = "Nightshade Wood Fence Gate",
	texture = "nightshade_wood_fence.png",
	material = "nightshade:nightshade_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

	default.register_fence("nightshade:fence_nightshade_wood", {
		description = "Nightshade Wood Fence",
		texture = "nightshade_wood_fence.png",
		inventory_image = "default_fence_overlay.png^nightshade_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_overlay.png^nightshade_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		material = "nightshade:nightshade_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

	default.register_fence_rail("nightshade:fence_rail_nightshade_wood", {
		description = "Nightshade Wood Fence Rail",
		texture = "nightshade_wood_fence.png",
		inventory_image = "default_fence_rail_overlay.png^nightshade_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^nightshade_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = "nightshade:nightshade_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

	minetest.register_node("nightshade:nightshade_sapling", {
		description = "Nightshade Sapling",
		drawtype = "plantlike",
		tiles = {"nightshade_tree_sapling.png"},
		inventory_image = "nightshade_tree_sapling.png",
		wield_image = "nightshade_tree_sapling.png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		on_timer = grow_new_nightshade_tree,
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
				"nightshade:nightshade_sapling",
				-- minp, maxp to be checked, relative to sapling pos
				{x = -1, y = 0, z = -1},
				{x = 1, y = 1, z = 1},
				-- maximum interval of interior volume check
				2)

			return itemstack
		end,
	})

if minetest.get_modpath("bonemeal") ~= nil then
bonemeal:add_sapling({
	{"nightshade:nightshade_sapling", grow_new_nightshade_tree, "soil"},
})
end
