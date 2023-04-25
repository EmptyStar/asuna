
local modname = "naturalbiomes"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")

minetest.register_node("naturalbiomes:outback_litter", {
	description = ("Outback ground with grass"),
	tiles = {"naturalbiomes_outbacklitter.png", "naturalbiomes_outback_ground.png",
		{name = "naturalbiomes_outback_ground.png^naturalbiomes_outbacklitter_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "naturalbiomes:outback_ground",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("naturalbiomes:outback_rock", {
	description = ("Outback Rock"),
	tiles = {"naturalbiomes_outback_rock.png"},
	groups = {cracky = 3, stone = 1},
legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("naturalbiomes:outback_ground", {
	description = ("Outback Ground Sand"),
	tiles = {"naturalbiomes_outback_ground.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_biome(asuna.biomes.outback.generate_definition())

-- Tree generation
--

-- New outback tree

local function grow_new_outback_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end

	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/naturalbiomes_outback_tree1_0_90.mts", "0", nil, true)
end 

-- outback trunk
minetest.register_node("naturalbiomes:outback_trunk", {
	description = ("Outback Trunk"),
	tiles = {
		"naturalbiomes_outbackeukalyptus_trunk_top.png",
		"naturalbiomes_outbackeukalyptus_trunk_top.png",
		"naturalbiomes_outbackeucalyptus_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- outback wood
minetest.register_node("naturalbiomes:outback_wood", {
	description = ("Outback Wood"),
	tiles = {"naturalbiomes_outback_eukalyptus_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "naturalbiomes:outback_wood 4",
	recipe = {{"naturalbiomes:outback_trunk"}}
})

minetest.register_node("naturalbiomes:outback_leaves", {
  description = ("Outback Leaves"),
  drawtype = "allfaces_optional",
  waving = 1,
  tiles = {"naturalbiomes_outbackeukalyptus_leaves.png"},
  special_tiles = {"naturalbiomes_outbackeukalyptus_leaves.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
  drop = {
    max_items = 1,
    items = {
      {
        -- player will get sapling with 1/50 chance
        items = {'naturalbiomes:outback_sapling'},
        rarity = 50,
      },
      {
        -- player will get leaves only if he get no saplings,
        -- this is because max_items is 1
        items = {'naturalbiomes:outback_leaves'},
      }
    }
  },
  sounds = default.node_sound_leaves_defaults(),

  after_place_node = default.after_place_leaves,
})

minetest.register_node("naturalbiomes:outback_sapling", {
  description = ("Outback Sapling"),
  drawtype = "plantlike",
  tiles = {"naturalbiomes_outbackeukaplyptus_sapling.png"},
  inventory_image = "naturalbiomes_outbackeukaplyptus_sapling.png",
  wield_image = "naturalbiomes_outbackeukaplyptus_sapling.png",
  paramtype = "light",
  sunlight_propagates = true,
  walkable = false,
  on_timer = grow_new_outback_tree,
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
      "naturalbiomes:outback_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

    return itemstack
  end,
})


    stairs.register_stair_and_slab(
      "naturalbiomes_outback_eukalyptus_wood",
      "naturalbiomes:outback_wood",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_outback_eukalyptus_wood.png"},
      ("Outback Stair"),
      ("Outback Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "naturalbiomes_outbackeucalyptus_trunk",
      "naturalbiomes:outback_trunk",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_outbackeukalyptus_trunk_top.png", "naturalbiomes_outbackeukalyptus_trunk_top.png", "naturalbiomes_outbackeucalyptus_trunk.png"},
      ("Alder Trunk Stair"),
      ("Alder Trunk Slab"),
      default.node_sound_wood_defaults()
    )

  doors.register_fencegate(
    "naturalbiomes:gate_outback_wood",
    {
      description = ("Outback Wood Fence Gate"),
      texture = "naturalbiomes_outback_eukalyptus_wood.png",
      material = "naturalbiomes:outback_wood",
      groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
      sounds = default.node_sound_wood_defaults()
    }
  )


default.register_fence(
  "naturalbiomes:fence_outback_wood",
  {
    description = ("Outback Fence"),
    texture = "naturalbiomes_eukalyptus_fence_wood.png",
    inventory_image = "default_fence_overlay.png^naturalbiomes_outback_eukalyptus_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_overlay.png^naturalbiomes_outback_eukalyptus_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:outback_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

default.register_fence_rail(
  "naturalbiomes:fence_rail_outback_wood",
  {
    description = ("Outback Fence Rail"),
    texture = "naturalbiomes_eukalyptus_fence_wood.png",
    inventory_image = "default_fence_rail_overlay.png^naturalbiomes_outback_eukalyptus_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_rail_overlay.png^naturalbiomes_outback_eukalyptus_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:outback_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

minetest.register_decoration({
    name = "naturalbiomes:outback_tree",
    deco_type = "schematic",
    place_on = {"naturalbiomes:outback_litter"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.001,
    biomes = {"outback"},
    y_max = 31,
    y_min = 1,
    schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_outback_tree1_0_90.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "naturalbiomes:outback_tree2",
    deco_type = "schematic",
    place_on = {"naturalbiomes:outback_litter"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.00075,
    biomes = {"outback"},
    y_max = 31,
    y_min = 1,
    schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_outback_tree2_0_90.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

	minetest.register_decoration({
		name = "naturalbiomes:outback_log",
		deco_type = "schematic",
		place_on = {"naturalbiomes:outback_litter"},
		place_offset_y = 1,
		sidelen = 16,
		noise_params = {
			offset = 0.0002,
			scale = 0.0005,
			spread = {x = 550, y = 550, z = 550},
			seed = 2,
			octaves = 3,
			persist = 0.36
		},
		biomes = {"outback"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_outback_log_0_90.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "naturalbiomes:outback_litter",
		num_spawn_by = 2,
	})

	-- Outback Bush

-- New outback bush

local function grow_new_outback_bush(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end

	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/naturalbiomes_outback_bush_small2_0_270.mts", "0", nil, true)
end 

	minetest.register_decoration({
		name = "naturalbiomes:outback_bush",
		deco_type = "schematic",
		place_on = {"naturalbiomes:outback_litter"},
    place_offset_y = 1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 391,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"outback"},
		y_max = 31000,
		y_min = 3,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_outback_bush_small2_0_270.mts",
		flags = "place_center_x, place_center_z",
	})

minetest.register_node("naturalbiomes:outback_bush_stem", {
	description = ("Outback Bush Stem"),
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"naturalbiomes_outback_bush_stem.png"},
	inventory_image = "naturalbiomes_outback_bush_stem.png",
	wield_image = "naturalbiomes_outback_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_node("naturalbiomes:outback_bush_leaves", {
	description = ("Outback Bush Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"naturalbiomes_outbackbush_leaves.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"naturalbiomes:outback_bush_sapling"}, rarity = 5},
			{items = {"naturalbiomes:outback_bush_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("naturalbiomes:outback_bush_sapling", {
	description = ("Outback Bush Sapling"),
	drawtype = "plantlike",
	tiles = {"naturalbiomes_outback_bush_stem.png"},
	inventory_image = "naturalbiomes_outback_bush_stem.png",
	wield_image = "naturalbiomes_outback_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_outback_bush,
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
			"naturalbiomes:outback_bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

	minetest.register_decoration({
		name = "naturalbiomes:outback_grass",
		deco_type = "simple",
		place_on = {"naturalbiomes:outback_litter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.15,
			spread = {x = 100, y = 100, z = 100},
			seed = 4602,
			octaves = 4,
			persist = 1,
		},
		y_max = 30000,
		y_min = 1,
		decoration = "naturalbiomes:outback_grass",
        spawn_by = "naturalbiomes:outback_litter"
	})

minetest.register_node("naturalbiomes:outback_grass", {
	    description = "Outback Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_outbackgrass.png"},
	    inventory_image = "naturalbiomes_outbackgrass.png",
	    wield_image = "naturalbiomes_outbackgrass.png",
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
		name = "naturalbiomes:outback_grass2",
		deco_type = "simple",
		place_on = {"naturalbiomes:outback_litter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 500, y = 500, z = 500},
			seed = 687,
			octaves = 3,
			persist = 2,
		},
		y_max = 30000,
		y_min = 1,
		decoration = "naturalbiomes:outback_grass2",
        spawn_by = "naturalbiomes:outback_litter"
	})

minetest.register_node("naturalbiomes:outback_grass2", {
	    description = "Outback Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_outbackgrass2.png"},
	    inventory_image = "naturalbiomes_outbackgrass2.png",
	    wield_image = "naturalbiomes_outbackgrass2.png",
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
		name = "naturalbiomes:outback_grass3",
		deco_type = "simple",
		place_on = {"naturalbiomes:outback_litter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 500, y = 500, z = 500},
			seed = 6072,
			octaves = 2,
			persist = 3,
		},
		y_max = 30000,
		y_min = 1,
		decoration = "naturalbiomes:outback_grass3",
        spawn_by = "naturalbiomes:outback_litter"
	})

minetest.register_node("naturalbiomes:outback_grass3", {
	    description = "Outback Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_outbackgrass3.png"},
	    inventory_image = "naturalbiomes_outbackgrass3.png",
	    wield_image = "naturalbiomes_outbackgrass3.png",
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
		name = "naturalbiomes:outback_grass4",
		deco_type = "simple",
		place_on = {"naturalbiomes:outback_litter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.15,
			spread = {x = 500, y = 500, z = 500},
			seed = 457,
			octaves = 3,
			persist = 1,
		},
		y_max = 31000,
		y_min = 1,
		decoration = "naturalbiomes:outback_grass4",
        spawn_by = "naturalbiomes:outback_litter"
	})

minetest.register_node("naturalbiomes:outback_grass4", {
	    description = "Outback Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_outbackgrass4.png"},
	    inventory_image = "naturalbiomes_outbackgrass4.png",
	    wield_image = "naturalbiomes_outbackgrass4.png",
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
		name = "naturalbiomes:outback_grass5",
		deco_type = "simple",
		place_on = {"naturalbiomes:outback_litter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.15,
			spread = {x = 100, y = 100, z = 100},
			seed = 4602,
			octaves = 4,
			persist = 1,
		},
		y_max = 31000,
		y_min = 1,
		decoration = "naturalbiomes:outback_grass5",
        spawn_by = "naturalbiomes:outback_litter"
	})

minetest.register_node("naturalbiomes:outback_grass5", {
	    description = "Outback Grass",
	    drawtype = "plantlike",
	    waving = 1,
		noise_params = {
			offset = -0.03,
			scale = 0.15,
			spread = {x = 500, y = 500, z = 500},
			seed = 457,
			octaves = 3,
			persist = 1,
		},
	    tiles = {"naturalbiomes_outbackgrass5.png"},
	    inventory_image = "naturalbiomes_outbackgrass5.png",
	    wield_image = "naturalbiomes_outbackgrass5.png",
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
		name = "naturalbiomes:outback_grass6",
		deco_type = "simple",
		place_on = {"naturalbiomes:outback_litter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 3602,
			octaves = 5,
			persist = 1,
		},
		y_max = 30000,
		y_min = 1,
		decoration = "naturalbiomes:outback_grass6",
        spawn_by = "naturalbiomes:outback_litter"
	})

minetest.register_node("naturalbiomes:outback_grass6", {
	    description = "Outback Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_outbackgrass6.png"},
	    inventory_image = "naturalbiomes_outbackgrass6.png",
	    wield_image = "naturalbiomes_outbackgrass6.png",
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

minetest.register_node("naturalbiomes:outback_rockformation1", {
	description = ("Outback Rock Formation"),
	tiles = {"naturalbiomes_beach_rock.png"},
	groups = {cracky = 3, stone = 1},
	drop = "naturalbiomes:palmbeach_rock",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

	minetest.register_decoration({
		name = "naturalbiomes:outback_rockformation1",
		deco_type = "schematic",
		place_on = {"naturalbiomes:outback_litter"},
    place_offset_y = -1,
		sidelen = 16,
    fill_ratio = 0.00005,
		biomes = {"outback"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_outback_rock1_0_90.mts",
		flags = "place_center_x, place_center_z",
    rotation = "random",
	})


	minetest.register_decoration({
		name = "naturalbiomes:outback_rockformation2",
		deco_type = "schematic",
		place_on = {"naturalbiomes:outback_litter"},
    place_offset_y = -2,
		sidelen = 16,
    fill_ratio = 0.00005,
		biomes = {"outback"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_outback_rock2_0_90.mts",
		flags = "place_center_x, place_center_z",
    rotation = "random",
	})



	minetest.register_decoration({
		name = "naturalbiomes:outback_rockformation3",
		deco_type = "schematic",
		place_on = {"naturalbiomes:outback_litter"},
    place_offset_y = -3,
		sidelen = 16,
    fill_ratio = 0.00005,
		biomes = {"outback"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_outback_rock3_0_90.mts",
		flags = "place_center_x, place_center_z",
    rotation = "random",
	})


-- Outback Bush 3

	minetest.register_decoration({
		name = "naturalbiomes:outback_bush2",
		deco_type = "schematic",
		place_on = {"naturalbiomes:outback_litter"},
    place_offset_y = 1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 391,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"outback"},
		y_max = 31000,
		y_min = 3,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_outback_bush2_0_90.mts",
		flags = "place_center_x, place_center_z",
	})
