
local modname = "naturalbiomes"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")

minetest.register_node("naturalbiomes:mediterran_litter", {
	description = ("Mediterranean litter with grass"),
	tiles = {"naturalbiomes_mediterran_litter.png", "default_dirt.png",
		{name = "default_dirt.png^naturalbiomes_mediterran_litte_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("naturalbiomes:mediterran_rock", {
	description = ("Mediterranean Rock"),
	tiles = {"naturalbiomes_mediterran_rock.png"},
	groups = {cracky = 3, stone = 1},
legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("naturalbiomes:mediterran_ruin", {
	description = ("Mediterranean Ruin"),
	tiles = {"naturalbiomes_mediterran_ruins.png"},
	groups = {cracky = 3, stone = 1},
legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("naturalbiomes:mediterran_ruin2", {
	description = ("Mediterranean Ruin Column"),
	tiles = {"naturalbiomes_mediterran_ruins2.png"},
	groups = {cracky = 3, stone = 1},
legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_biome(asuna.biomes.mediterranean.generate_definition())

-- Tree generation
--

-- New olive tree

local function grow_new_olive_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end

	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/naturalbiomes_olive_tree2_0_90.mts", "0", nil, true)
end 

-- olive trunk
minetest.register_node("naturalbiomes:olive_trunk", {
	description = ("Olive Trunk"),
	tiles = {
		"naturalbiomes_mediterran_olive_trunk_top.png",
		"naturalbiomes_mediterran_olive_trunk_top.png",
		"naturalbiomes_mediterran_olive_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- olive wood
minetest.register_node("naturalbiomes:olive_wood", {
	description = ("Olive Wood"),
	tiles = {"naturalbiomes_mediterran_olive_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "naturalbiomes:olive_wood 4",
	recipe = {{"naturalbiomes:olive_trunk"}}
})

minetest.register_node("naturalbiomes:olive_leaves", {
  description = ("Olive Leaves"),
  drawtype = "allfaces_optional",
  waving = 1,
  tiles = {"naturalbiomes_mediterran_olive_leaves.png"},
  special_tiles = {"naturalbiomes_mediterran_olive_leaves.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
  drop = {
    max_items = 1,
    items = {
      {
        -- player will get sapling with 1/50 chance
        items = {'naturalbiomes:olive_sapling'},
        rarity = 50,
      },
      {
        -- player will get leaves only if he get no saplings,
        -- this is because max_items is 1
        items = {'naturalbiomes:olive_leaves'},
      }
    }
  },
  sounds = default.node_sound_leaves_defaults(),

  after_place_node = default.after_place_leaves,
})

minetest.register_node("naturalbiomes:olive_sapling", {
  description = ("Olive Sapling"),
  drawtype = "plantlike",
  tiles = {"naturalbiomes_mediterran_olive_sapling.png"},
  inventory_image = "naturalbiomes_mediterran_olive_sapling.png",
  wield_image = "naturalbiomes_mediterran_olive_sapling.png",
  paramtype = "light",
  sunlight_propagates = true,
  walkable = false,
  on_timer = grow_new_olive_tree,
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
      "naturalbiomes:olive_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

    return itemstack
  end,
})


    stairs.register_stair_and_slab(
      "naturalbiomes_mediterran_olive_wood",
      "naturalbiomes:olive_wood",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_mediterran_olive_wood.png"},
      ("Olive Stair"),
      ("Olive Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "naturalbiomes_mediterran_olive_trunk",
      "naturalbiomes:olive_trunk",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_mediterran_olive_trunk_top.png", "naturalbiomes_mediterran_olive_trunk_top.png", "naturalbiomes_mediterran_olive_trunk.png"},
      ("Alder Trunk Stair"),
      ("Alder Trunk Slab"),
      default.node_sound_wood_defaults()
    )

  doors.register_fencegate(
    "naturalbiomes:gate_olive_wood",
    {
      description = ("Olive Wood Fence Gate"),
      texture = "naturalbiomes_mediterran_olive_wood.png",
      material = "naturalbiomes:olive_wood",
      groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
      sounds = default.node_sound_wood_defaults()
    }
  )


default.register_fence(
  "naturalbiomes:fence_olive_wood",
  {
    description = ("Olive Fence"),
    texture = "naturalbiomes_olive_fence_woode.png",
    inventory_image = "default_fence_overlay.png^naturalbiomes_mediterran_olive_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_overlay.png^naturalbiomes_mediterran_olive_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:olive_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

default.register_fence_rail(
  "naturalbiomes:fence_rail_olive_wood",
  {
    description = ("Olive Fence Rail"),
    texture = "naturalbiomes_olive_fence_woode.png",
    inventory_image = "default_fence_rail_overlay.png^naturalbiomes_mediterran_olive_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_rail_overlay.png^naturalbiomes_mediterran_olive_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:olive_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

minetest.register_decoration({
    name = "naturalbiomes:olive_tree",
    deco_type = "schematic",
    place_on = {"naturalbiomes:mediterran_litter"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.00105,
    biomes = {"mediterranean"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_olive_tree2_0_90.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

-- Tree generation
--

-- New pine tree

local function grow_new_pine_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end

	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/naturalbiomes_med_pinetree_0_90.mts", "0", nil, true)
end 


-- pine trunk
minetest.register_node("naturalbiomes:pine_trunk", {
	description = ("Pine Trunk"),
	tiles = {
		"naturalbiomes_mediterran_pine_trunk_top.png",
		"naturalbiomes_mediterran_pine_trunk_top.png",
		"naturalbiomes_mediterran_pine_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- pine wood
minetest.register_node("naturalbiomes:pine_wood", {
	description = ("Pine Wood"),
	tiles = {"naturalbiomes_mediterran_pine_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "naturalbiomes:pine_wood 4",
	recipe = {{"naturalbiomes:pine_trunk"}}
})

minetest.register_node("naturalbiomes:pine_leaves", {
  description = ("Pine Leaves"),
  drawtype = "allfaces_optional",
  waving = 1,
  tiles = {"naturalbiomes_mediterran_pine_leaves.png"},
  special_tiles = {"naturalbiomes_mediterran_pine_leaves.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
  drop = {
    max_items = 1,
    items = {
      {
        -- player will get sapling with 1/50 chance
        items = {'naturalbiomes:pine_sapling'},
        rarity = 50,
      },
      {
        -- player will get leaves only if he get no saplings,
        -- this is because max_items is 1
        items = {'naturalbiomes:pine_leaves'},
      }
    }
  },
  sounds = default.node_sound_leaves_defaults(),

  after_place_node = default.after_place_leaves,
})

minetest.register_node("naturalbiomes:pine_sapling", {
  description = ("Pine Sapling"),
  drawtype = "plantlike",
  tiles = {"naturalbiomes_mediterran_pine_sapling.png"},
  inventory_image = "naturalbiomes_mediterran_pine_sapling.png",
  wield_image = "naturalbiomes_mediterran_pine_sapling.png",
  paramtype = "light",
  sunlight_propagates = true,
  walkable = false,
  on_timer = grow_new_pine_tree,
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
      "naturalbiomes:pine_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

    return itemstack
  end,
})

    stairs.register_stair_and_slab(
      "naturalbiomes_mediterran_pine_wood",
      "naturalbiomes:pine_wood",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_mediterran_pine_wood.png"},
      ("Pine Stair"),
      ("Pine Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "naturalbiomes_mediterran_pine_trunk",
      "naturalbiomes:pine_trunk",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_mediterran_pine_trunk_top.png", "naturalbiomes_mediterran_pine_trunk_top.png", "naturalbiomes_mediterran_pine_wood.png"},
      ("Pine Trunk Stair"),
      ("Pine Trunk Slab"),
      default.node_sound_wood_defaults()
    )

  doors.register_fencegate(
    "naturalbiomes:gate_pine_wood",
    {
      description = ("Pine Wood Fence Gate"),
      texture = "naturalbiomes_mediterran_pine_wood.png",
      material = "naturalbiomes:pine_wood",
      groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
      sounds = default.node_sound_wood_defaults()
    }
  )


default.register_fence(
  "naturalbiomes:fence_pine_wood",
  {
    description = ("Pine Fence"),
    texture = "naturalbiomes_medpine_fence_woode.png",
    inventory_image = "default_fence_overlay.png^naturalbiomes_mediterran_pine_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_overlay.png^naturalbiomes_mediterran_pine_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:pine_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

default.register_fence_rail(
  "naturalbiomes:fence_rail_pine_wood",
  {
    description = ("Pine Fence Rail"),
    texture = "naturalbiomes_medpine_fence_woode.png",
    inventory_image = "default_fence_rail_overlay.png^naturalbiomes_mediterran_pine_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_rail_overlay.png^naturalbiomes_mediterran_pine_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:pine_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

minetest.register_decoration({
    name = "naturalbiomes:pine_tree",
    deco_type = "schematic",
    place_on = {"naturalbiomes:mediterran_litter"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.00115,
    biomes = {"mediterranean"},
    y_max = 31,
    y_min = 1,
    schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_med_pinetree_0_90.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "naturalbiomes:pine_treesmall",
    deco_type = "schematic",
    place_on = {"naturalbiomes:mediterran_litter"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.00105,
    biomes = {"mediterranean"},
    y_max = 31,
    y_min = 1,
    schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_med_pinetree_small_0_90.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

	-- Cypress Bush

-- New cypress tree

local function grow_new_cypress_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end

	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/naturalbiomes_cypress_0_90.mts", "0", nil, true)
end 


	minetest.register_decoration({
		name = "naturalbiomes:med_bush",
		deco_type = "schematic",
		place_on = {"naturalbiomes:mediterran_litter"},
    place_offset_y = 1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.02,
			spread = {x = 100, y = 100, z = 100},
			seed = 3876,
			octaves = 3,
			persist = 0.4,
		},
		biomes = {"mediterranean"},
		y_max = 31000,
		y_min = 3,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_cypress_0_90.mts",
		flags = "place_center_x, place_center_z",
	})

minetest.register_node("naturalbiomes:med_bush_stem", {
	description = ("Cypress Bush Stem"),
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"naturalbiomes_mediterran_cypress_stem.png"},
	inventory_image = "naturalbiomes_mediterran_cypress_stem.png",
	wield_image = "naturalbiomes_mediterran_cypress_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_node("naturalbiomes:med_bush_leaves", {
	description = ("Cypress Bush Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"naturalbiomes_mediterran_cypress_leavese.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"naturalbiomes:med_bush_sapling"}, rarity = 5},
			{items = {"naturalbiomes:med_bush_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("naturalbiomes:med_bush_sapling", {
	description = ("Cypress Bush Sapling"),
	drawtype = "plantlike",
	tiles = {"naturalbiomes_mediterran_cypress_stem.png"},
	inventory_image = "naturalbiomes_mediterran_cypress_stem.png",
	wield_image = "naturalbiomes_mediterran_cypress_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_cypress_tree,
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
			"naturalbiomes:med_bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

	minetest.register_decoration({
		name = "naturalbiomes:med_flower1",
		deco_type = "simple",
		place_on = {"naturalbiomes:mediterranean_litter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 4602,
			octaves = 6,
			persist = 1,
		},
		y_max = 30000,
		y_min = 1,
		decoration = "naturalbiomes:med_flower1",
        spawn_by = "naturalbiomes:mediterran_litter"
	})

minetest.register_node("naturalbiomes:med_flower1", {
	    description = "Mediterranean Flower",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_mediterran_flower1.png"},
	    inventory_image = "naturalbiomes_mediterran_flower1.png",
	    wield_image = "naturalbiomes_mediterran_flower1.png",
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
		name = "naturalbiomes:med_flower2",
		deco_type = "simple",
		place_on = {"naturalbiomes:mediterran_litter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 4602,
			octaves = 8,
			persist = 1,
		},
		y_max = 30000,
		y_min = 1,
		decoration = "naturalbiomes:med_flower2",
        spawn_by = "naturalbiomes:mediterran_litter"
	})

minetest.register_node("naturalbiomes:med_flower2", {
	    description = "Mediterranean Flower",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_mediterran_flower2.png"},
	    inventory_image = "naturalbiomes_mediterran_flower2.png",
	    wield_image = "naturalbiomes_mediterran_flower2.png",
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
		name = "naturalbiomes:med_flower3",
		deco_type = "simple",
		place_on = {"naturalbiomes:mediterran_litter"},
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
		decoration = "naturalbiomes:med_flower3",
        spawn_by = "naturalbiomes:mediterran_litter"
	})

minetest.register_node("naturalbiomes:med_flower3", {
	    description = "Mediterranean Flower",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_mediterran_flower3.png"},
	    inventory_image = "naturalbiomes_mediterran_flower3.png",
	    wield_image = "naturalbiomes_mediterran_flower3.png",
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
		name = "naturalbiomes:med_grass1",
		deco_type = "simple",
		place_on = {"naturalbiomes:mediterran_litter"},
		sidelen = 16,
		--[[noise_params = {
			offset = -0.03,
			scale = 0.15,
			spread = {x = 300, y = 300, z = 300},
			seed = 4602,
			octaves = 6,
			persist = 1,
		},]]
		fill_ratio = 0.075,
		y_max = 30000,
		y_min = 1,
		decoration = "naturalbiomes:med_grass1",
        spawn_by = "naturalbiomes:mediterran_litter"
	})

minetest.register_node("naturalbiomes:med_grass1", {
	    description = "Mediterranean Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_mediterran_grass.png"},
	    inventory_image = "naturalbiomes_mediterran_grass.png",
	    wield_image = "naturalbiomes_mediterran_grass.png",
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
		name = "naturalbiomes:med_grass2",
		deco_type = "simple",
		place_on = {"naturalbiomes:mediterran_litter"},
		sidelen = 16,
		--[[noise_params = {
			offset = -0.03,
			scale = 0.15,
			spread = {x = 300, y = 300, z = 300},
			seed = 4602,
			octaves = 8,
			persist = 1,
		},]]
		fill_ratio = 0.075,
		y_max = 30000,
		y_min = 1,
		decoration = "naturalbiomes:med_grass2",
        spawn_by = "naturalbiomes:mediterran_litter"
	})

minetest.register_node("naturalbiomes:med_grass2", {
	    description = "Mediterranean Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_mediterran_grass2.png"},
	    inventory_image = "naturalbiomes_mediterran_grass2.png",
	    wield_image = "naturalbiomes_mediterran_grass2.png",
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
		name = "naturalbiomes:med_ruin1",
		deco_type = "schematic",
		place_on = {"naturalbiomes:mediterran_litter"},
    place_offset_y = 1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.008,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 1,
			persist = 0.1,
		},
		biomes = {"mediterranean"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_medruin1_0_90.mts",
		flags = "place_center_x, place_center_z",
    rotation = "random",
	})

	minetest.register_decoration({
		name = "naturalbiomes:med_ruin2",
		deco_type = "schematic",
		place_on = {"naturalbiomes:mediterran_litter"},
    place_offset_y = 1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.008,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 1,
			persist = 0.1,
		},
		biomes = {"mediterranean"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_medruin2_0_90.mts",
		flags = "place_center_x, place_center_z",
    rotation = "random",
	})

	minetest.register_decoration({
		name = "naturalbiomes:med_ruin3",
		deco_type = "schematic",
		place_on = {"naturalbiomes:mediterran_litter"},
    place_offset_y = 1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.008,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 1,
			persist = 0.1,
		},
		biomes = {"mediterranean"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_medruin3_0_90.mts",
		flags = "place_center_x, place_center_z",
    rotation = "random",
	})

-- Olives
minetest.register_node("naturalbiomes:olives", {
	description = ("Fresh Olives"),
	drawtype = "plantlike",
	tiles = {"naturalbiomes__fresholives.png"},
	inventory_image = "naturalbiomes__fresholives.png",
	wield_image = "naturalbiomes__fresholives.png",
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
	drop = "naturalbiomes:olives",
	on_use = minetest.item_eat(6),
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = function(pos, placer)
		if placer:is_player() then
			minetest.set_node(pos, {name = "naturalbiomes:olives", param2 = 1})
		end
	end
})
