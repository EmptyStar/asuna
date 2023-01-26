
local modname = "naturalbiomes"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")

minetest.register_node("naturalbiomes:bambooforest_litter", {
	description = ("Bamboo Forest Litter"),
	tiles = {"naturalbiomes_bambooforest_litter.png", "naturalbiomes_bambooforest_rock.png",
		{name = "naturalbiomes_bambooforest_rock.png^naturalbiomes_bambooforest_litter_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "naturalbiomes:bambooforest_rock",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_biome({
    name = "bambooforest",
    node_top = "naturalbiomes:bambooforest_litter",
    depth_top = 2,
    node_filler = "naturalbiomes:bambooforest_rock",
    depth_filler = 70,
		node_riverbed = "default:clay",
		depth_riverbed = 2,
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
    y_max = 31000,
    y_min = 5,
    heat_point = 89,
    humidity_point = 77,
})

-- Tree generation
--

-- New bamboo tree

local function grow_new_bamboo_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end

	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/naturalbiomes_bambootree_large_0_270.mts", "0", nil, true)
end 

-- bamboo trunk
minetest.register_node("naturalbiomes:bamboo_trunk", {
	description = ("Bamboo Trunk"),
	tiles = {
		"naturalbiomes_bambooforest_bamboo_trunk_top.png",
		"naturalbiomes_bambooforest_bamboo_trunk_top.png",
		"naturalbiomes_bambooforest_bamboo_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- bamboo wood
minetest.register_node("naturalbiomes:bamboo_wood", {
	description = ("Bamboo Wood"),
	tiles = {"naturalbiomes_bambooforest_bamboo_wood2.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "naturalbiomes:bamboo_wood 4",
	recipe = {{"naturalbiomes:bamboo_trunk"}}
})

minetest.register_node("naturalbiomes:bamboo_leaves", {
  description = ("Bamboo Leaves"),
  drawtype = "allfaces_optional",
  waving = 1,
  tiles = {"naturalbiomes_Bambooforest_bamboo_leaves.png"},
  special_tiles = {"naturalbiomes_Bambooforest_bamboo_leaves.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
  drop = {
    max_items = 1,
    items = {
      {
        -- player will get sapling with 1/50 chance
        items = {'naturalbiomes:bamboo_sapling'},
        rarity = 50,
      },
      {
        -- player will get leaves only if he get no saplings,
        -- this is because max_items is 1
        items = {'naturalbiomes:bamboo_leaves'},
      }
    }
  },
  sounds = default.node_sound_leaves_defaults(),

  after_place_node = default.after_place_leaves,
})

minetest.register_node("naturalbiomes:bamboo_sapling", {
  description = ("Bamboo Sapling"),
  drawtype = "plantlike",
  tiles = {"naturalbiomes_bambooforest_bamboo_sapling.png"},
  inventory_image = "naturalbiomes_bambooforest_bamboo_sapling.png",
  wield_image = "naturalbiomes_bambooforest_bamboo_sapling.png",
  paramtype = "light",
  sunlight_propagates = true,
  walkable = false,
  on_timer = grow_new_bamboo_tree,
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
      "naturalbiomes:bamboo_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

    return itemstack
  end,
})


    stairs.register_stair_and_slab(
      "naturalbiomes_bambooforest_bamboo_wood2",
      "naturalbiomes:bamboo_wood",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_bambooforest_bamboo_wood2.png"},
      ("Alder Stair"),
      ("Alder Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "naturalbiomes_bambooforest_bamboo_trunk",
      "naturalbiomes:bamboo_trunk",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_bambooforest_bamboo_trunk_top.png", "naturalbiomes_bambooforest_bamboo_trunk_top.png", "naturalbiomes_bambooforest_bamboo_trunk.png"},
      ("Bamboo Trunk Stair"),
      ("Bamboo Trunk Slab"),
      default.node_sound_wood_defaults()
    )

  doors.register_fencegate(
    "naturalbiomes:gate_bamboo_wood",
    {
      description = ("Bamboo Wood Fence Gate"),
      texture = "naturalbiomes_bambooforest_bamboo_wood2.png",
      material = "naturalbiomes:bamboo_wood",
      groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
      sounds = default.node_sound_wood_defaults()
    }
  )


default.register_fence(
  "naturalbiomes:fence_bamboo_wood",
  {
    description = ("Bamboo Fence"),
    texture = "naturalbiomes_bamboo_fence_wood.png",
    inventory_image = "default_fence_overlay.png^naturalbiomes_bambooforest_bamboo_wood2.png^default_fence_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_overlay.png^naturalbiomes_bambooforest_bamboo_wood2.png^default_fence_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:bamboo_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

default.register_fence_rail(
  "naturalbiomes:fence_rail_bamboo_wood",
  {
    description = ("Bamboo Fence Rail"),
    texture = "naturalbiomes_bamboo_fence_wood.png",
    inventory_image = "default_fence_rail_overlay.png^naturalbiomes_bambooforest_bamboo_wood2.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_rail_overlay.png^naturalbiomes_bambooforest_bamboo_wood2.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:bamboo_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

minetest.register_decoration({
    name = "naturalbiomes:bamboo_tree",
    deco_type = "schematic",
    place_on = {"naturalbiomes:bambooforest_litter"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.02115,
    biomes = {"naturalbiomes:bambooforest"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_bambootree_large_0_270.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "naturalbiomes:bamboo_tree2",
    deco_type = "schematic",
    place_on = {"naturalbiomes:bambooforest_litter"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.02115,
    biomes = {"naturalbiomes:bambooforest"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_bambootree_small_0_270.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


	minetest.register_decoration({
		name = "naturalbiomes:smallbamboo",
		deco_type = "schematic",
		place_on = {"naturalbiomes:bambooforest_litter"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.05,
			spread = {x = 100, y = 100, z = 100},
			seed = 936,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"naturalbiomes:bambooforest"},
		y_max = 31000,
		y_min = 0,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_bambootree_small_micro_0_270.mts",
	})

minetest.register_node("naturalbiomes:smallbamboo", {
	description = ("Small Bamboo Grass"),
	drawtype = "plantlike",
	tiles = {"naturalbiomes_bambooforest_bamboo_trunksmall.png"},
	inventory_image = "naturalbiomes_bambooforest_bamboo_trunksmall.png",
	wield_image = "naturalbiomes_bambooforest_bamboo_trunksmall.png",
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

minetest.register_node("naturalbiomes:bambooforest_rock", {
	description = ("Forest Rock"),
	tiles = {"naturalbiomes_bambooforest_rock.png"},
	groups = {cracky = 3, stone = 1},
	drop = "naturalbiomes:bambooforest_rock",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

	minetest.register_decoration({
		name = "naturalbiomes:bambooforest_groundgrass",
		deco_type = "simple",
		place_on = {"naturalbiomes:bambooforest_litter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 3602,
			octaves = 7,
			persist = 1,
		},
		y_max = 30000,
		y_min = 1,
		decoration = "naturalbiomes:bambooforest_groundgrass",
        spawn_by = "naturalbiomes:bambooforest_litter"
	})

minetest.register_node("naturalbiomes:bambooforest_groundgrass", {
	    description = "Babmooforest Gorund Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"naturalbiomes_bambooforest_groundgrass.png"},
	    inventory_image = "naturalbiomes_bambooforest_groundgrass.png",
	    wield_image = "naturalbiomes_bambooforest_groundgrass.png",
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
		name = "naturalbiomes:bambooforest_groundgrass2",
		deco_type = "simple",
		place_on = {"naturalbiomes:bambooforest_litter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 3602,
			octaves = 7,
			persist = 1,
		},
		y_max = 30000,
		y_min = 1,
		decoration = "naturalbiomes:bambooforest_groundgrass2",
        spawn_by = "naturalbiomes:bambooforest_litter"
	})

minetest.register_node("naturalbiomes:bambooforest_groundgrass2", {
	    description = "Babmooforest Gorund Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"naturalbiomes_bambooforest_groundgrass2.png"},
	    inventory_image = "naturalbiomes_bambooforest_groundgrass2.png",
	    wield_image = "naturalbiomes_bambooforest_groundgrass2.png",
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

--
-- Tree generation
--

-- New banana tree

local function grow_new_banana_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end

	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/naturalbiomes_banana_palm_0_90.mts", "0", nil, true)
end 

-- banana trunk
minetest.register_node("naturalbiomes:banana_trunk", {
	description = ("Banana Trunk"),
	tiles = {
		"naturalbiomes__banana_trunk_top.png",
		"naturalbiomes__banana_trunk_top.png",
		"naturalbiomes__banana_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- banana wood
minetest.register_node("naturalbiomes:banana_wood", {
	description = ("Banana Wood"),
	tiles = {"naturalbiomes__banana_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "naturalbiomes:banana_wood 4",
	recipe = {{"naturalbiomes:banana_trunk"}}
})

minetest.register_node("naturalbiomes:banana_leaves", {
  description = ("Banana Leaves"),
  drawtype = "allfaces_optional",
  waving = 1,
  tiles = {"naturalbiomes__banana_leaf.png"},
  special_tiles = {"naturalbiomes__banana_leaf.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
  drop = {
    max_items = 1,
    items = {
      {
        -- player will get sapling with 1/50 chance
        items = {'naturalbiomes:banana_sapling'},
        rarity = 50,
      },
      {
        -- player will get leaves only if he get no saplings,
        -- this is because max_items is 1
        items = {'naturalbiomes:banana_leaves'},
      }
    }
  },
  sounds = default.node_sound_leaves_defaults(),

  after_place_node = default.after_place_leaves,
})

minetest.register_node("naturalbiomes:banana_sapling", {
  description = ("Banana Sapling"),
  drawtype = "plantlike",
  tiles = {"naturalbiomes__banana_tree_sapling.png"},
  inventory_image = "naturalbiomes__banana_tree_sapling.png",
  wield_image = "naturalbiomes__banana_tree_sapling.png",
  paramtype = "light",
  sunlight_propagates = true,
  walkable = false,
  on_timer = grow_new_banana_tree,
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
      "naturalbiomes:banana_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

    return itemstack
  end,
})


    stairs.register_stair_and_slab(
      "naturalbiomes_banana_wood",
      "naturalbiomes:banana_wood",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_banana_wood.png"},
      ("Banana Stair"),
      ("Banana Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "naturalbiomes_banana_trunk",
      "naturalbiomes:banana_trunk",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_banana_trunk_top.png", "naturalbiomes_banana_trunk_top.png", "naturalbiomes_banana_trunk.png"},
      ("Banana Trunk Stair"),
      ("Banana Trunk Slab"),
      default.node_sound_wood_defaults()
    )

  doors.register_fencegate(
    "naturalbiomes:gate_banana_wood",
    {
      description = ("Banana Wood Fence Gate"),
      texture = "naturalbiomes_banana_wood.png",
      material = "naturalbiomes:banana_wood",
      groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
      sounds = default.node_sound_wood_defaults()
    }
  )


default.register_fence(
  "naturalbiomes:fence_banana_wood",
  {
    description = ("Banana Fence"),
    texture = "naturalbiomes_banana_wood.png",
    inventory_image = "default_fence_overlay.png^naturalbiomes_banana_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_overlay.png^naturalbiomes_banana_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:banana_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

default.register_fence_rail(
  "naturalbiomes:fence_rail_banana_wood",
  {
    description = ("Banana Fence Rail"),
    texture = "naturalbiomes_banana_wood.png",
    inventory_image = "default_fence_rail_overlay.png^naturalbiomes_banana_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_rail_overlay.png^naturalbiomes_banana_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:banana_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

minetest.register_decoration({
    name = "naturalbiomes:banana_tree",
    deco_type = "schematic",
    place_on = {"naturalbiomes:bambooforest_litter"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.00515,
    biomes = {"naturalbiomes:bambooforest"},
    y_max = 31000,
    y_min = 5,
    schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_banana_palm_0_90.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})
