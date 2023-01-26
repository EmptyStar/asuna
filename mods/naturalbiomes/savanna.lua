
local modname = "naturalbiomes"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")

minetest.register_node("naturalbiomes:savannalitter", {
	description = ("Savanna dirt with Grass"),
	tiles = {"naturalbiomes_savannalitter.png", "default_dirt.png",
		{name = "default_dirt.png^naturalbiomes_savannalitter_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_biome(asuna.biomes.savanna.generate_definition())

-- Tree generation
--

-- New acacia tree

local function grow_new_acacia_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end

	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/naturalbiomes_acaciatree_0_180_2.mts", "0", nil, true)
end 

-- acacia trunk
minetest.register_node("naturalbiomes:acacia_trunk", {
	description = ("Acacia Trunk"),
	tiles = {
		"naturalbiomes_savannaacaia_trunk_top.png",
		"naturalbiomes_savannaacaia_trunk_top.png",
		"naturalbiomes_savannaacacia_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- acacia wood
minetest.register_node("naturalbiomes:acacia_wood", {
	description = ("Acacia Wood"),
	tiles = {"naturalbiomes_savannaacacia_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "naturalbiomes:acacia_wood 4",
	recipe = {{"naturalbiomes:acacia_trunk"}}
})

minetest.register_node("naturalbiomes:acacia_leaves", {
  description = ("Acacia Leaves"),
  drawtype = "allfaces_optional",
  waving = 1,
  tiles = {"naturalbiomes_savannaacacia_leaves.png"},
  special_tiles = {"naturalbiomes_savannaacacia_leaves.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
  drop = {
    max_items = 1,
    items = {
      {
        -- player will get sapling with 1/50 chance
        items = {'naturalbiomes:acacia_sapling'},
        rarity = 50,
      },
      {
        -- player will get leaves only if he get no saplings,
        -- this is because max_items is 1
        items = {'naturalbiomes:acacia_leaves'},
      }
    }
  },
  sounds = default.node_sound_leaves_defaults(),

  after_place_node = default.after_place_leaves,
})

minetest.register_node("naturalbiomes:acacia_sapling", {
  description = ("Acacia Sapling"),
  drawtype = "plantlike",
  tiles = {"naturalbiomes_savannaacaia_sapling.png"},
  inventory_image = "naturalbiomes_savannaacaia_sapling.png",
  wield_image = "naturalbiomes_savannaacaia_sapling.png",
  paramtype = "light",
  sunlight_propagates = true,
  walkable = false,
  on_timer = grow_new_acacia_tree,
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
      "naturalbiomes:acacia_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

    return itemstack
  end,
})


    stairs.register_stair_and_slab(
      "naturalbiomes_savannaacacia_wood",
      "naturalbiomes:acacia_wood",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_savannaacacia_wood.png"},
      ("Acacia Stair"),
      ("Acacia Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "naturalbiomes_savannaacacia_trunk",
      "naturalbiomes:acacia_trunk",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_savannaacaia_trunk_top.png", "naturalbiomes_savannaacaia_trunk_top.png", "naturalbiomes_savannaacacia_trunk.png"},
      ("Acacia Trunk Stair"),
      ("Acacia Trunk Slab"),
      default.node_sound_wood_defaults()
    )

  doors.register_fencegate(
    "naturalbiomes:gate_acacia_wood",
    {
      description = ("Acacia Wood Fence Gate"),
      texture = "naturalbiomes_savannaacacia_wood.png",
      material = "naturalbiomes:acacia_wood",
      groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
      sounds = default.node_sound_wood_defaults()
    }
  )


default.register_fence(
  "naturalbiomes:fence_acacia_wood",
  {
    description = ("Acacia Fence"),
    texture = "naturalbiomes_acacia_fence_wood.png",
    inventory_image = "default_fence_overlay.png^naturalbiomes_savannaacacia_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_overlay.png^naturalbiomes_savannaacacia_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:acacia_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

default.register_fence_rail(
  "naturalbiomes:fence_rail_acacia_wood",
  {
    description = ("Acacia Fence Rail"),
    texture = "naturalbiomes_acacia_fence_wood.png",
    inventory_image = "default_fence_rail_overlay.png^naturalbiomes_savannaacacia_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_rail_overlay.png^naturalbiomes_savannaacacia_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:acacia_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

minetest.register_decoration({
    name = "naturalbiomes:acacia_tree",
    deco_type = "schematic",
    place_on = {"naturalbiomes:savannalitter"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.00105,
    biomes = {"savanna"},
    y_max = 31000,
    y_min = 2,
    schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_acaciatree_0_180_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

	minetest.register_decoration({
		name = "naturalbiomes:savannagras",
		deco_type = "schematic",
		place_on = {"naturalbiomes:savannalitter"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.006,
			spread = {x = 100, y = 100, z = 100},
			seed = 436,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"savanna"},
		y_max = 31000,
		y_min = 0,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_savannagrass1_0_90.mts",
	})

minetest.register_node("naturalbiomes:savannagrass", {
	description = ("Savanna Grass"),
	drawtype = "plantlike",
	tiles = {"naturalbiomes_savannagrass.png"},
	inventory_image = "naturalbiomes_savannagrass.png",
	wield_image = "naturalbiomes_savannagrass.png",
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

	minetest.register_decoration({
		name = "naturalbiomes:savannagrassmall",
		deco_type = "schematic",
		place_on = {"naturalbiomes:savannalitter"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.006,
			spread = {x = 100, y = 100, z = 100},
			seed = 436,
			octaves = 3,
			persist = 0.6
		},
		--fill_ratio = 0.05,
		biomes = {"savanna"},
		y_max = 31000,
		y_min = 0,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_savannagrass2_0_90.mts",
	})

minetest.register_node("naturalbiomes:savannagrasssmall", {
	description = ("Savanna Grass"),
	drawtype = "plantlike",
	tiles = {"naturalbiomes_savannagrass.png"},
	inventory_image = "naturalbiomes_savannagrass.png",
	wield_image = "naturalbiomes_savannagrass.png",
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

	minetest.register_decoration({
		name = "naturalbiomes:savanna_flowergrass",
		deco_type = "simple",
		place_on = {"naturalbiomes:savannalitter"},
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
		decoration = "naturalbiomes:savanna_flowergrass",
        spawn_by = "naturalbiomes:savannalitter"
	})

minetest.register_node("naturalbiomes:savanna_flowergrass", {
	    description = "Savanna Flowergrass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"naturalbiomes_savannagrasssmall.png"},
	    inventory_image = "naturalbiomes_savannagrasssmall.png",
	    wield_image = "naturalbiomes_savannagrasssmall.png",
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
		name = "naturalbiomes:savanna_grass2",
		deco_type = "simple",
		place_on = {"naturalbiomes:savannalitter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 1987,
			octaves = 3,
			persist = 2,
		},
		--fill_ratio = 0.05,
		y_max = 30000,
		y_min = 1,
		decoration = "naturalbiomes:savanna_grass2",
	})

minetest.register_node("naturalbiomes:savanna_grass2", {
	    description = "Savanna Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_savannagrass2.png"},
	    inventory_image = "naturalbiomes_savannagrass2.png",
	    wield_image = "naturalbiomes_savannagrass2.png",
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
		name = "naturalbiomes:savanna_grass3",
		deco_type = "simple",
		place_on = {"naturalbiomes:savannalitter"},
		sidelen = 16,
		--[[noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 834,
			octaves = 3,
			persist = 2,
		},]]
		fill_ratio = 0.1,
		y_max = 30000,
		y_min = 1,
		decoration = "naturalbiomes:savanna_grass3",
	})

minetest.register_node("naturalbiomes:savanna_grass3", {
	    description = "Savanna Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_savannagrass3.png"},
	    inventory_image = "naturalbiomes_savannagrass3.png",
	    wield_image = "naturalbiomes_savannagrass3.png",
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
		name = "naturalbiomes:acacia_log",
		deco_type = "schematic",
		place_on = {"naturalbiomes:savannalitter"},
		place_offset_y = 1,
		sidelen = 16,
		noise_params = {
			offset = 0.0012,
			scale = 0.0007,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"savanna"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_acacia_log_0_90.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "naturalbiomes:savannalitter",
		num_spawn_by = 8,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"naturalbiomes:savannalitter"},
		sidelen = 16,
		fill_ratio = 0.15,
		y_max = 30000,
		y_min = 1,
		decoration = {
			"default:dry_grass_2",
			"default:dry_grass_3",
			"default:dry_grass_4",
		  "default:dry_grass_5"
		},
		biomes = "naturalbiomes:savanna"
	})