
local modname = "naturalbiomes"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")

minetest.register_node("naturalbiomes:palmbeach_sand", {
	description = ("Beach Sand"),
	tiles = {"naturalbiomes_beach_sand.png"},
	groups = {crumbly = 3, soil = 1, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_biome(asuna.biomes.palmbeach.generate_definition())

minetest.register_node("naturalbiomes:palmbeach_rock", {
	description = ("Beach Rock"),
	tiles = {"naturalbiomes_beach_rock.png"},
	groups = {cracky = 3, stone = 1},
	drop = "naturalbiomes:palmbeach_rock",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

	minetest.register_decoration({
		name = "naturalbiomes:beach_rock",
		deco_type = "schematic",
		place_on = {"naturalbiomes:palmbeach_sand"},
    place_offset_y = -1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.02,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"palmbeach"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_beachrock_large_0_270.mts",
		flags = "place_center_x, place_center_z",
    rotation = "random",
	})


	minetest.register_decoration({
		name = "naturalbiomes:beach_rock2",
		deco_type = "schematic",
		place_on = {"naturalbiomes:palmbeach_sand"},
    place_offset_y = 1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.02,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"palmbeach"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_beachrock_small_0_270.mts",
		flags = "place_center_x, place_center_z",
    rotation = "random",
	})



	minetest.register_decoration({
		name = "naturalbiomes:beach_rock3",
		deco_type = "schematic",
		place_on = {"naturalbiomes:palmbeach_sand"},
    place_offset_y = -2,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.02,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"palmbeach"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_beachrock_medium2_0_180.mts",
		flags = "place_center_x, place_center_z",
    rotation = "random",
	})

	minetest.register_decoration({
		name = "naturalbiomes:beach_rock4",
		deco_type = "schematic",
		place_on = {"naturalbiomes:palmbeach_sand"},
    place_offset_y = -2,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.02,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"palmbeach"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_beachrock_medium_0_270.mts",
		flags = "place_center_x, place_center_z",
    rotation = "random",
	})

-- Tree generation
--

-- New palm tree

local function grow_new_palm_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end

	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/naturalbiomes_cocopalm_tree_0_270.mts", "0", nil, true)
end 


-- palm trunk
minetest.register_node("naturalbiomes:palm_trunk", {
	description = ("Palm Trunk"),
	tiles = {
		"naturalbiomes_savannapalm_trunk_top.png",
		"naturalbiomes_savannapalm_trunk_top.png",
		"naturalbiomes_savannapalm_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- palm wood
minetest.register_node("naturalbiomes:palm_wood", {
	description = ("Palm Wood"),
	tiles = {"naturalbiomes_savannapalm_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "naturalbiomes:palm_wood 4",
	recipe = {{"naturalbiomes:palm_trunk"}}
})

minetest.register_node("naturalbiomes:palm_leaves", {
  description = ("Palm Leaves"),
  drawtype = "allfaces_optional",
  waving = 1,
  tiles = {"naturalbiomes_savannapalm_leaves.png"},
  special_tiles = {"naturalbiomes_savannapalm_leaves.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
  drop = {
    max_items = 1,
    items = {
      {
        -- player will get sapling with 1/50 chance
        items = {'naturalbiomes:palm_sapling'},
        rarity = 50,
      },
      {
        -- player will get leaves only if he get no saplings,
        -- this is because max_items is 1
        items = {'naturalbiomes:palm_leaves'},
      }
    }
  },
  sounds = default.node_sound_leaves_defaults(),

  after_place_node = default.after_place_leaves,
})

minetest.register_node("naturalbiomes:palm_sapling", {
  description = ("Palm Sapling"),
  drawtype = "plantlike",
  tiles = {"naturalbiomes_savannapalm_sapling.png"},
  inventory_image = "naturalbiomes_savannapalm_sapling.png",
  wield_image = "naturalbiomes_savannapalm_sapling.png",
  paramtype = "light",
  sunlight_propagates = true,
  walkable = false,
  on_timer = grow_new_palm_tree,
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
      "naturalbiomes:palm_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

    return itemstack
  end,
})


    stairs.register_stair_and_slab(
      "naturalbiomes_savannapalm_wood",
      "naturalbiomes:palm_wood",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_savannapalm_wood.png"},
      ("Palm Stair"),
      ("Palm Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "naturalbiomes_savannapalm_trunk",
      "naturalbiomes:palm_trunk",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_savannapalm_trunk_top.png", "naturalbiomes_savannapalm_trunk_top.png", "naturalbiomes_savannapalm_trunk.png"},
      ("Palm Trunk Stair"),
      ("Palm Trunk Slab"),
      default.node_sound_wood_defaults()
    )

  doors.register_fencegate(
    "naturalbiomes:gate_palm_wood",
    {
      description = ("Palm Wood Fence Gate"),
      texture = "naturalbiomes_savannapalm_wood.png",
      material = "naturalbiomes:palm_wood",
      groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
      sounds = default.node_sound_wood_defaults()
    }
  )


default.register_fence(
  "naturalbiomes:fence_palm_wood",
  {
    description = ("Palm Fence"),
    texture = "naturalbiomes_palm_fence_wood.png",
    inventory_image = "default_fence_overlay.png^naturalbiomes_savannapalm_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_overlay.png^naturalbiomes_savannapalm_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:palm_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

default.register_fence_rail(
  "naturalbiomes:fence_rail_palm_wood",
  {
    description = ("Palm Fence Rail"),
    texture = "naturalbiomes_palm_fence_wood.png",
    inventory_image = "default_fence_rail_overlay.png^naturalbiomes_savannapalm_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_rail_overlay.png^naturalbiomes_savannapalm_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:palm_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

minetest.register_decoration({
    name = "naturalbiomes:palm_tree",
    deco_type = "schematic",
    place_on = {"naturalbiomes:palmbeach_sand"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.01115,
    biomes = {"palmbeach"},
    y_max = 5,
    y_min = 2,
    schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_cocopalm_tree_0_270.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

	-- Beach Bush

-- New palm buh

local function grow_new_palm_bush(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end

	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/naturalbiomes_beach_bush_0_270.mts", "0", nil, true)
end 

	minetest.register_decoration({
		name = "naturalbiomes:beach_bush",
		deco_type = "schematic",
		place_on = {"naturalbiomes:palmbeach_sand"},
    place_offset_y = 1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.06,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"palmbeach"},
		y_max = 31000,
		y_min = 3,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_beach_bush_0_270.mts",
		flags = "place_center_x, place_center_z",
	})

minetest.register_node("naturalbiomes:beach_bush_stem", {
	description = ("Beach Bush Stem"),
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"naturalbiomes_beach_bush_stem.png"},
	inventory_image = "naturalbiomes_beach_bush_stem.png",
	wield_image = "naturalbiomes_beach_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_node("naturalbiomes:beach_bush_leaves", {
	description = ("Beach Bush Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"naturalbiomes_beach_bush_leaves.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"naturalbiomes:beach_bush_sapling"}, rarity = 5},
			{items = {"naturalbiomes:beach_bush_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("naturalbiomes:beach_bush_sapling", {
	description = ("Beach Bush Sapling"),
	drawtype = "plantlike",
	tiles = {"naturalbiomes_beach_bush_stem.png"},
	inventory_image = "naturalbiomes_beach_bush_stem.png",
	wield_image = "naturalbiomes_beach_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_palm_bush,
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
			"naturalbiomes:beach_bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

	minetest.register_decoration({
		name = "naturalbiomes:palmbeach_grass1",
		deco_type = "simple",
		place_on = {"naturalbiomes:palmbeach_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 1987,
			octaves = 3,
			persist = 2,
		},
		y_max = 30000,
		y_min = 2,
		decoration = "naturalbiomes:palmbeach_grass1",
        spawn_by = "naturalbiomes:palmbeach_sand"
	})

minetest.register_node("naturalbiomes:palmbeach_grass1", {
	    description = "Palmbeach Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_beach_grass.png"},
	    inventory_image = "naturalbiomes_beach_grass.png",
	    wield_image = "naturalbiomes_beach_grass.png",
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
		name = "naturalbiomes:palmbeach_grass2",
		deco_type = "simple",
		place_on = {"naturalbiomes:palmbeach_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 834,
			octaves = 3,
			persist = 2,
		},
		y_max = 30000,
		y_min = 2,
		decoration = "naturalbiomes:palmbeach_grass2",
        spawn_by = "naturalbiomes:palmbeach_sand"
	})

minetest.register_node("naturalbiomes:palmbeach_grass2", {
	    description = "Palmbeach Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_beach_grass2.png"},
	    inventory_image = "naturalbiomes_beach_grass2.png",
	    wield_image = "naturalbiomes_beach_grass2.png",
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
		name = "naturalbiomes:palmbeach_grass3",
		deco_type = "simple",
		place_on = {"naturalbiomes:palmbeach_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 834,
			octaves = 3,
			persist = 2,
		},
		y_max = 30000,
		y_min = 2,
		decoration = "naturalbiomes:palmbeach_grass3",
        spawn_by = "naturalbiomes:palmbeach:_sand"
	})

minetest.register_node("naturalbiomes:palmbeach_grass3", {
	    description = "Palmbeach Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_beach_grass3.png"},
	    inventory_image = "naturalbiomes_beach_grass3.png",
	    wield_image = "naturalbiomes_beach_grass3.png",
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

-- Banana Bunch
minetest.register_node("naturalbiomes:banana_bunch", {
	description = ("Banana Bunch"),
	drawtype = "plantlike",
	tiles = {"naturalbiomes_banana_bunch.png"},
	inventory_image = "naturalbiomes_banana_bunch.png",
	wield_image = "naturalbiomes_banana_bunch.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.31, -0.5, -0.31, 0.31, 0.5, 0.31}
	},
	groups = {
		fleshy = 3, dig_immediate = 3, flammable = 2,
		leafdecay = 1, leafdecay_drop = 1
	},
	drop = "naturalbiomes:banana_bunch",
	on_use = minetest.item_eat(6),
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = function(pos, placer)
		if placer:is_player() then
			minetest.set_node(pos, {name = "naturalbiomes:banana_bunch", param2 = 1})
		end
	end
})

-- Bunch to Single
minetest.register_craft({
	type = "shapeless",
	output = "naturalbiomes:banana 3",
	recipe = {"naturalbiomes:banana_bunch"}
})

minetest.register_craft({
	type = "shapeless",
	output = "naturalbiomes:banana_bunch",
	recipe = {"naturalbiomes:banana", "naturalbiomes:banana", "naturalbiomes:banana"}
})

minetest.register_node("naturalbiomes:banana", {
	description = ("Banana"),
	drawtype = "torchlike",
	tiles = {"naturalbiomes_banana_single.png"},
	inventory_image = "naturalbiomes_banana_single.png",
	wield_image = "naturalbiomes_banana_single.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.31, -0.5, -0.31, 0.31, 0.5, 0.31}
	},
	groups = {
		food_banana = 1, fleshy = 3, dig_immediate = 3, flammable = 2,
		leafdecay = 1, leafdecay_drop = 1
	},
	drop = "naturalbiomes:banana",
	on_use = minetest.item_eat(2),
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = function(pos, placer)
		if placer:is_player() then
			minetest.set_node(pos, {name = "naturalbiomes:banana", param2 = 1})
		end
	end
})

minetest.register_node("naturalbiomes:coconut_slice", {
	description = ("Coconut Slice"),
	drawtype = "torchlike",
	tiles = {"naturalbiomes_coconut_slice.png"},
	inventory_image = "naturalbiomes_coconut_slice.png",
	wield_image = "naturalbiomes_coconut_slice.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.31, -0.5, -0.31, 0.31, 0.5, 0.31}
	},
	groups = {
		food_banana = 1, fleshy = 3, dig_immediate = 3, flammable = 2,
		leafdecay = 1, leafdecay_drop = 1
	},
	drop = "naturalbiomes:naturalbiomes:coconut_slice",
	on_use = minetest.item_eat(2),
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = function(pos, placer)
		if placer:is_player() then
			minetest.set_node(pos, {name = "naturalbiomes:coconut_slice", param2 = 1})
		end
	end
})

-- Coco
minetest.register_node("naturalbiomes:coconut", {
	description = ("Coconut"),
	drawtype = "plantlike",
	tiles = {"naturalbiomes_coconut.png"},
	inventory_image = "naturalbiomes_coconut.png",
	wield_image = "naturalbiomes_coconut.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.31, -0.5, -0.31, 0.31, 0.5, 0.31}
	},
	groups = {
		fleshy = 3, dig_immediate = 3, flammable = 2,
		leafdecay = 1, leafdecay_drop = 1
	},
	drop = "naturalbiomes:coconut",
	on_use = minetest.item_eat(6),
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = function(pos, placer)
		if placer:is_player() then
			minetest.set_node(pos, {name = "naturalbiomes:coconut", param2 = 1})
		end
	end
})

-- Bunch to Single


minetest.register_craft({
	type = "shapeless",
	output = "naturalbiomes:coconut_bunch",
	recipe = {"naturalbiomes:coconut_slice", "naturalbiomes:coconut_slice", "naturalbiomes:coconut_slice"}
})

