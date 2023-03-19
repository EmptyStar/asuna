local modname = "livingjungle"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")

-- grass

	minetest.register_decoration({
		name = "livingjungle:grass1",
		deco_type = "simple",
		place_on = {"livingjungle:jungleground"},
		sidelen = 16,
                fill_ratio = 0.115,
		y_max = 31000,
		y_min = 2,
		decoration = "livingjungle:grass1",
	})

minetest.register_node("livingjungle:grass1", {
	    description = "Jungle Bushplant",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"livingjungle_junglegrass.png"},
	    inventory_image = "livingjungle_junglegrass.png",
	    wield_image = "livingjungle_junglegrass.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 0.0, 4 / 16},
	    },
    })

	minetest.register_decoration({
		name = "livingjungle:grass2",
		deco_type = "simple",
		place_on = {"livingjungle:jungleground"},
		sidelen = 16,
                fill_ratio = 0.115,
		y_max = 31000,
		y_min = 2,
		decoration = "livingjungle:grass2",
	})

minetest.register_node("livingjungle:grass2", {
	    description = "Jungle Fern",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"livingjungle_junglefern.png"},
	    inventory_image = "livingjungle_junglefern.png",
	    wield_image = "livingjungle_junglefern.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 0.0, 4 / 16},
	    },
    })

--- decor plants

minetest.register_node("livingjungle:alocasia", {
	    description = "Alocasia Bush",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"livingjungle_alocasia.png"},
	    inventory_image = "livingjungle_alocasia.png",
	    wield_image = "livingjungle_alocasia.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 0.0, 4 / 16},
	    },
    })

	minetest.register_decoration({
		name = "livingjungle:livingjungle:alocasia",
		deco_type = "simple",
		place_on = {"livingjungle:leafyjungleground"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.08,
			spread = {x = 100, y = 100, z = 100},
			seed = 3602,
			octaves = 7,
			persist = 0.9,
		},
		y_max = 31000,
		y_min = 1,
		decoration = "livingjungle:alocasia",
	})

minetest.register_node("livingjungle:flamingoflower", {
	    description = "Flamingo Flower",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"livingjungle_flamingoflower.png"},
	    inventory_image = "livingjungle_flamingoflower.png",
	    wield_image = "livingjungle_flamingoflower.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 0.0, 4 / 16},
	    },
    })

	minetest.register_decoration({
		name = "livingjungle:flamingoflower",
		deco_type = "simple",
		place_on = {"livingjungle:leafyjungleground"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.08,
			spread = {x = 100, y = 100, z = 100},
			seed = 722,
			octaves = 7,
			persist = 0.9,
		},
		y_max = 31000,
		y_min = 1,
		decoration = "livingjungle:flamingoflower",
	})


minetest.register_node("livingjungle:stinkflower_core", {
	description = ("Stinkflower"),
	tiles = {
		"livingjungle_stinkflower_middle.png",
		"livingjungle_stinkflower_middle.png",
		"livingjungle_stinkflower_middle.png"
	},
	groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	sounds = mod_def and default.node_sound_leaves_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

minetest.register_node("livingjungle:stinkflower_leaf", {
	description = ("Stinkflower Leaf"),
	tiles = {
		"livingjungle_stinkflower_side.png",
		"livingjungle_stinkflower_side.png",
		"livingjungle_stinkflower_side.png"
	},
	groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	sounds = mod_def and default.node_sound_leaves_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"livingjungle:jungleground"},
                place_offset_y = 1,
		sidelen = 16,
		noise_params = {
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 111,
			octaves = 3,
			persist = 0.8,
		},
		y_max = 31000,
		y_min = 1,
		 schematic = minetest.get_modpath("livingjungle").."/schematics/stinkflower.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


--- trees

-- New giantforest paleo samauma tree

local function grow_new_samauma_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end
minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x - 13, y = pos.y - 0, z = pos.z - 13}, modpath.."/schematics/samauma_tree.mts", "0", nil, false)

end

--  samauma trunk
minetest.register_node("livingjungle:samauma_trunk", {
	description = ("Samauma Trunk"),
	tiles = {
		"livingjungle_samauma_trunk_top.png",
		"livingjungle_samauma_trunk_top.png",
		"livingjungle_samauma_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- paleo samauma wood
minetest.register_node("livingjungle:samauma_wood", {
	description = ("Samauma Wood"),
	tiles = {"livingjungle_samauma_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "livingjungle:samauma_wood 4",
	recipe = {{"livingjungle:samauma_trunk"}}
})

minetest.register_node("livingjungle:samauma_leaves", {
  description = ("Samauma Leaves"),
  drawtype = "allfaces_optional",
  waving = 1,
  visual_scale = 1.0,
  tiles = {"livingjungle_samauma_leaves.png"},
  special_tiles = {"livingjungle_samauma_leaves.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
  drop = {
    max_items = 1,
    items = {
      {
        -- player will get sapling with 1/50 chance
        items = {'livingjungle:samauma_sapling'},
        rarity = 50,
      },
      {
        -- player will get leaves only if he get no saplings,
        -- this is because max_items is 1
        items = {'livingjungle:samauma_leaves'},
      }
    }
  },
  sounds = default.node_sound_leaves_defaults(),

  after_place_node = default.after_place_leaves,
})

minetest.register_node("livingjungle:samauma_sapling", {
  description = ("Samauma Sapling"),
  drawtype = "plantlike",
  tiles = {"livingjungle_samauma_sapling.png"},
  inventory_image = "livingjungle_samauma_sapling.png",
  wield_image = "livingjungle_samauma_sapling.png",
  paramtype = "light",
  sunlight_propagates = true,
  walkable = false,
  on_timer = grow_new_samauma_tree,
  selection_box = {
    type = "fixed",
    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
  },
  groups = {snappy = 2, dig_immediate = 3, flammable = 2,
    attached_node = 1, sapling = 1},
  sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

  on_place = function(itemstack, placer, pointed_thing)
    itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
      "livingjungle:samauma_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

    return itemstack
  end,
})


    stairs.register_stair_and_slab(
      "livingjungle_samauma_wood",
      "livingjungle:samauma_wood",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"livingjungle_samauma_wood.png"},
      ("Samauma Stair"),
      ("Samauma Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "livingjungle_samauma_trunk",
      "livingjungle:samauma_trunk",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"livingjungle_samauma_trunk_top.png", "livingjungle_samauma_trunk_top.png", "livingjungle_samauma_trunk.png"},
      ("Samauma Trunk Stair"),
      ("Samauma Trunk Slab"),
      default.node_sound_wood_defaults()
    )

  doors.register_fencegate(
    "livingjungle:gate_samauma_wood",
    {
      description = ("Samauma Wood Fence Gate"),
      texture = "livingjungle_samauma_wood.png",
      material = "livingjungle:samauma_wood",
      groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
      sounds = default.node_sound_wood_defaults()
    }
  )


default.register_fence(
  "livingjungle:fence_samauma_wood",
  {
    description = ("Samauma Fence"),
    texture = "livingjungle_samauma_fencewood.png",
    inventory_image = "default_fence_overlay.png^livingjungle_samauma_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_overlay.png^livingjungle_samauma_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    material = "livingjungle:samauma_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

default.register_fence_rail(
  "livingjungle:fence_rail_samauma_wood",
  {
    description = ("Samauma Fence Rail"),
    texture = "livingjungle_samauma_fencewood.png",
    inventory_image = "default_fence_rail_overlay.png^livingjungle_samauma_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_rail_overlay.png^livingjungle_samauma_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    material = "livingjungle:samauma_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

minetest.register_decoration({
    name = "livingjungle:samauma_tree",
    deco_type = "schematic",
    place_on = {"livingjungle:leafyjungleground"},
    place_offset_y = -3,
    sidelen = 16,
    fill_ratio = 0.00095,
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("livingjungle").."/schematics/samauma_tree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "livingjungle:samauma_tree2",
    deco_type = "schematic",
    place_on = {"livingjungle:leafyjungleground"},
    place_offset_y = -3,
    sidelen = 16,
    fill_ratio = 0.00095,
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("livingjungle").."/schematics/samauma_tree2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "livingjungle:samauma_tree3",
    deco_type = "schematic",
    place_on = {"livingjungle:leafyjungleground"},
    place_offset_y = -3,
    sidelen = 16,
    fill_ratio = 0.00935,
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("livingjungle").."/schematics/samauma_tree3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "livingjungle:samauma_tree11",
    deco_type = "schematic",
    place_on = {"livingjungle:leafyjungleground"},
    place_offset_y = -3,
    sidelen = 16,
    fill_ratio = 0.00095,
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("livingjungle").."/schematics/samauma_tree11.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "livingjungle:samauma_tree22",
    deco_type = "schematic",
    place_on = {"livingjungle:leafyjungleground"},
    place_offset_y = -3,
    sidelen = 16,
    fill_ratio = 0.00095,
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("livingjungle").."/schematics/samauma_tree22.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "livingjungle:samauma_tree33",
    deco_type = "schematic",
    place_on = {"livingjungle:leafyjungleground"},
    place_offset_y = -3,
    sidelen = 16,
    fill_ratio = 0.00935,
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("livingjungle").."/schematics/samauma_tree33.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


minetest.register_node("livingjungle:lianabranch", {
	description = ("Liana Branch"),
	drawtype = "plantlike",
	waving = 1,
	tiles = {"livingjungle_liana_branch.png"},
	inventory_image = "livingjungle_liana_branch.png",
	wield_image = "livingjungle_liana_branch.png",
	paramtype = "light",
	sunlight_propagates = true,
	climbable = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})

minetest.register_node("livingjungle:lianabranch3", {
	description = ("Liana Branch"),
	drawtype = "raillike",
	waving = 1,
	tiles = {"livingjungle_liana_branch3.png"},
	inventory_image = "livingjungle_liana_branch3.png",
	wield_image = "livingjungle_liana_branch3.png",
	paramtype = "light",
	sunlight_propagates = true,
	climbable = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})

minetest.register_node("livingjungle:lianaleaves", {
	description = ("Liana Leaves"),
	drawtype = "plantlike",
	waving = 1,
	tiles = {"livingjungle_liana_leaves.png"},
	inventory_image = "livingjungle_liana_leaves.png",
	wield_image = "livingjungle_liana_leaves.png",
	paramtype = "light",
	sunlight_propagates = true,
	climbable = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})

	


minetest.register_node("livingjungle:liana_stem", {
	description = ("Liana Stem"),
	tiles = {
		"livingjungle_liana_stem.png",
		"livingjungle_liana_stem.png",
		"livingjungle_liana_stem.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

--- mangroves

minetest.register_node("livingjungle:mangrove_root", {
	description = ("Mangrove Root"),
	drawtype = "plantlike_rooted",
	waving = 0,
	paramtype = "light",
	tiles = {"default_sand.png"},
	special_tiles = {{name = "livingjungle_mangrove_root.png", tileable_vertical = true}},
	inventory_image = "livingjungle_mangrove_root.png",
	wield_image = "livingjungle_mangrove_root.png",
	groups = {snappy = 3},
	selection_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
				{-4/16, 0.5, -4/16, 4/16, 1.5, 4/16},
		},
	},
	node_dig_prediction = "default:sand",
	node_placement_prediction = "",
	sounds = default.node_sound_stone_defaults({
		dig = {name = "default_dig_snappy", gain = 0.2},
		dug = {name = "default_grass_footstep", gain = 0.25},
	}),

	on_place = coral_on_place,

	after_destruct  = function(pos, oldnode)
		minetest.set_node(pos, {name = "default:sand"})
	end,
})

minetest.register_node("livingjungle:mangrove_root2", {
	description = ("Mangrove Air Roots"),
	drawtype = "plantlike",
	waving = 0,
	tiles = {"livingjungle_mangrove_root.png"},
	inventory_image = "livingjungle_mangrove_root.png",
	wield_image = "livingjungle_mangrove_root.png",
	paramtype = "light",
	sunlight_propagates = true,

	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})

minetest.register_node("livingjungle:mangrove_stem", {
	description = ("Mangrove Stem"),
	tiles = {
		"livingjungle_mangrove_stem.png",
		"livingjungle_mangrove_stem.png",
		"livingjungle_mangrove_stem.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

minetest.register_node("livingjungle:mangrove_leaves", {
  description = ("Mangrove Leaves"),
  drawtype = "allfaces_optional",
  waving = 1,
  visual_scale = 1.0,
  tiles = {"livingjungle_mangrove_leaves.png"},
  special_tiles = {"livingjungle_mangrove_leaves.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
  drop = {
    },
  sounds = default.node_sound_leaves_defaults(),

  after_place_node = default.after_place_leaves,
})

minetest.register_decoration({
    name = "livingjungle:mangrovetree",
    deco_type = "schematic",
    place_on = {"default:sand"},
    place_offset_y = -1,
    sidelen = 16,
		noise_params = {
			offset = -0.0,
			scale = 0.010,
			spread = {x = 100, y = 100, z = 100},
			seed = 3602,
			octaves = 5,
			persist = 1,
		},
    y_max = 0,
    y_min = 0,
    biomes = {"livingjungle_shore"},
    schematic = minetest.get_modpath("livingjungle").."/schematics/livingjungle_mangrovetree.mts",
	flags = "place_center_x, place_center_z",
    flags = "force_placement",
	rotation = "random",
})

minetest.register_decoration({
    name = "livingjungle:mangrovetree2",
    deco_type = "schematic",
    place_on = {"default:sand"},
    place_offset_y = -1,
    sidelen = 16,
		noise_params = {
			offset = -0.0,
			scale = 0.035,
			spread = {x = 100, y = 100, z = 100},
			seed = 3602,
			octaves = 5,
			persist = 1,
		},
    y_max = 0,
    y_min = 0,
    biomes = {"livingjungle_shore"},
    schematic = minetest.get_modpath("livingjungle").."/schematics/livingjungle_mangrovetree2.mts",
	flags = "place_center_x, place_center_z",
    flags = "force_placement",
	rotation = "random",
})

minetest.register_decoration({
    name = "livingjungle:mangrovetree3",
    deco_type = "schematic",
    place_on = {"default:sand"},
    place_offset_y = -1,
    sidelen = 16,
		noise_params = {
			offset = -0.0,
			scale = 0.019,
			spread = {x = 100, y = 100, z = 100},
			seed = 3602,
			octaves = 5,
			persist = 1,
		},
    y_max = 0,
    y_min = 0,
    biomes = {"livingjungle_shore"},
    schematic = minetest.get_modpath("livingjungle").."/schematics/livingjungle_mangrovetree3.mts",
	flags = "place_center_x, place_center_z",
    flags = "force_placement",
	rotation = "random",
})