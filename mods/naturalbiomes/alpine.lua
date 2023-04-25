
local modname = "naturalbiomes"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")

minetest.register_node("naturalbiomes:alpine_litter", {
	description = ("Dirt with Alpine Grass"),
	tiles = {"naturalbiomes_alpine_litter.png", "naturalbiomes_alpine_rock.png",
		{name = "naturalbiomes_alpine_rock.png^naturalbiomes_alpine_litter_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "naturalbiomes:alpine_rock",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("naturalbiomes:alpine_rock", {
	description = ("Alpine Rock"),
	tiles = {"naturalbiomes_alpine_rock.png"},
	groups = {cracky = 3, stone = 1},
	drop = "naturalbiomes:alpine_rock",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_biome(asuna.biomes.alpine.generate_definition())

-- Tree generation
--

-- New pine tree

local function grow_new_alppine1_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end

	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/naturalbiomes_alpine_pine1_0_90.mts", "0", nil, true)
end 

-- Pine1 trunk
minetest.register_node("naturalbiomes:alppine1_trunk", {
	description = ("Pine Trunk"),
	tiles = {
		"naturalbiomes_alpine_pine1_trunk_top.png",
		"naturalbiomes_alpine_pine1_trunk_top.png",
		"naturalbiomes_alpine_pine1_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- Pine wood
minetest.register_node("naturalbiomes:alppine1_wood", {
	description = ("Pine Wood"),
	tiles = {"naturalbiomes_alpine_pine1_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "naturalbiomes:alppine1_wood 4",
	recipe = {{"naturalbiomes:allpine1_trunk"}}
})

minetest.register_node("naturalbiomes:alppine1_leaves", {
  description = ("Pine Leaves"),
  drawtype = "allfaces_optional",
  waving = 1,
  tiles = {"naturalbiomes_alpine_pine1_leaves.png"},
  special_tiles = {"naturalbiomes_alpine_pine1_leaves.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
  drop = {
    max_items = 1,
    items = {
      {
        -- player will get sapling with 1/50 chance
        items = {'naturalbiomes:alppine1_sapling'},
        rarity = 50,
      },
      {
        -- player will get leaves only if he get no saplings,
        -- this is because max_items is 1
        items = {'naturalbiomes:alppine1_leaves'},
      }
    }
  },
  sounds = default.node_sound_leaves_defaults(),

  after_place_node = default.after_place_leaves,
})

minetest.register_node("naturalbiomes:alppine1_sapling", {
  description = ("Pine Sapling"),
  drawtype = "plantlike",
  tiles = {"naturalbiomes_alpine_pine1_sapling.png"},
  inventory_image = "naturalbiomes_alpine_pine1_sapling.png",
  wield_image = "naturalbiomes_alpine_pine1_sapling.png",
  paramtype = "light",
  sunlight_propagates = true,
  walkable = false,
  on_timer = grow_new_alppine1_tree,
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
      "naturalbiomes:alppine1_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

    return itemstack
  end,
})


    stairs.register_stair_and_slab(
      "naturalbiomes_alpine_pine1_wood",
      "naturalbiomes:allpine1_wood",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_alpine_pine1_wood.png"},
      ("Pine Stair"),
      ("Pine Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "naturalbiomes_alpine_pine1_trunk",
      "naturalbiomes:alppine1_trunk",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_alpine_pine1_trunk_top.png", "naturalbiomes_alpine_pine1_trunk_top.png", "naturalbiomes_alpine_pine1_trunk.png"},
      ("Pine Trunk Stair"),
      ("Pine Trunk Slab"),
      default.node_sound_wood_defaults()
    )

  doors.register_fencegate(
    "naturalbiomes:gate_alppine1_wood",
    {
      description = ("Pine Wood Fence Gate"),
      texture = "naturalbiomes_alpine_pine1_wood.png",
      material = "naturalbiomes:alppine1_wood",
      groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
      sounds = default.node_sound_wood_defaults()
    }
  )


default.register_fence(
  "naturalbiomes:fence_alppine1_wood",
  {
    description = ("Pine Fence"),
    texture = "naturalbiomes_pine_fence_wood.png",
    inventory_image = "default_fence_overlay.png^naturalbiomes_alpine_pine1_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_overlay.png^naturalbiomes_alpine_pine1_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:alppine1_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

default.register_fence_rail(
  "naturalbiomes:fence_rail_alppine1_wood",
  {
    description = ("Pine Fence Rail"),
    texture = "naturalbiomes_pine_fence_wood.png",
    inventory_image = "default_fence_rail_overlay.png^naturalbiomes_alpine_pine1_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_rail_overlay.png^naturalbiomes_alpine_pine1_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:alppine1_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

minetest.register_decoration({
	name = "naturalbiomes:alppine1_tree",
	deco_type = "schematic",
	place_on = {"naturalbiomes:alpine_litter"},
	place_offset_y = 0,
	sidelen = 16,
	fill_ratio = 0.003,
	biomes = {"alpine"},
	y_max = 31000,
	y_min = 12,
	schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_alpine_pine1_0_90.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	name = "naturalbiomes:alppine1_tree2",
	deco_type = "schematic",
	place_on = {"naturalbiomes:alpine_litter"},
	place_offset_y = 0,
	sidelen = 16,
	fill_ratio = 0.0005,
	biomes = {"alpine"},
	y_max = 11,
	y_min = 4,
	schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_alpine_pine1_0_90.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

-- Tree generation
--

-- New alppine2 tree

local function grow_new_alppine2_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end

	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/naturalbiomes_alpine_pine2_0_90.mts", "0", nil, true)
end 

-- Pine2 trunk
minetest.register_node("naturalbiomes:alppine2_trunk", {
	description = ("Pine Trunk"),
	tiles = {
		"naturalbiomes_alpine_pine2_trunk_top.png",
		"naturalbiomes_alpine_pine2_trunk_top.png",
		"naturalbiomes_alpine_pine2_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- Pine2 wood
minetest.register_node("naturalbiomes:alppine2_wood", {
	description = ("Pine Wood"),
	tiles = {"naturalbiomes_alpine_pine2_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "naturalbiomes:alppine2_wood 4",
	recipe = {{"naturalbiomes:alppine2_trunk"}}
})

minetest.register_node("naturalbiomes:alppine2_leaves", {
  description = ("Pine Leaves"),
  drawtype = "allfaces_optional",
  waving = 1,
  tiles = {"naturalbiomes_alpine_pine2_leaves.png"},
  special_tiles = {"naturalbiomes_alpine_pine2_leaves.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
  drop = {
    max_items = 1,
    items = {
      {
        -- player will get sapling with 1/50 chance
        items = {'naturalbiomes:alppine2_sapling'},
        rarity = 50,
      },
      {
        -- player will get leaves only if he get no saplings,
        -- this is because max_items is 1
        items = {'naturalbiomes:alppine2_leaves'},
      }
    }
  },
  sounds = default.node_sound_leaves_defaults(),

  after_place_node = default.after_place_leaves,
})

minetest.register_node("naturalbiomes:alppine2_sapling", {
  description = ("Pine Sapling"),
  drawtype = "plantlike",
  tiles = {"naturalbiomes_alpine_pine2_sapling.png"},
  inventory_image = "naturalbiomes_alpine_pine2_sapling.png",
  wield_image = "naturalbiomes_alpine_pine2_sapling.png",
  paramtype = "light",
  sunlight_propagates = true,
  walkable = false,
  on_timer = grow_new_alppine2_tree,
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
      "naturalbiomes:alppine2_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

    return itemstack
  end,
})


    stairs.register_stair_and_slab(
      "naturalbiomes_alpine_pine2_wood",
      "naturalbiomes:alppine2_wood",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_alpine_pine2_wood.png"},
      ("Pine Stair"),
      ("Pine Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "naturalbiomes_alpine_pine2_trunk",
      "naturalbiomes:alppine2_trunk",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_alpine_pine2_trunk_top.png", "naturalbiomes_alpine_pine2_trunk_top.png", "naturalbiomes_alpine_pine2_trunk.png"},
      ("Pine Trunk Stair"),
      ("Pine Trunk Slab"),
      default.node_sound_wood_defaults()
    )

  doors.register_fencegate(
    "naturalbiomes:gate_alppine2_wood",
    {
      description = ("Pine Wood Fence Gate"),
      texture = "naturalbiomes_alpine_pine2_wood.png",
      material = "naturalbiomes:alppine2_wood",
      groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
      sounds = default.node_sound_wood_defaults()
    }
  )


default.register_fence(
  "naturalbiomes:fence_pine2_wood",
  {
    description = ("Pine Fence"),
    texture = "naturalbiomes_pine2_fence_wood.png",
    inventory_image = "default_fence_overlay.png^naturalbiomes_alpine_pine2_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_overlay.png^naturalbiomes_alpine_pine2_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:alppine2_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

default.register_fence_rail(
  "naturalbiomes:fence_rail_pine2_wood",
  {
    description = ("Pine Fence Rail"),
    texture = "naturalbiomes_pine2_fence_wood.png",
    inventory_image = "default_fence_rail_overlay.png^naturalbiomes_alpine_pine2_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_rail_overlay.png^naturalbiomes_alpine_pine2_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:alppine2_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

minetest.register_decoration({
	name = "naturalbiomes:alppine2_tree",
	deco_type = "schematic",
	place_on = {"naturalbiomes:alpine_litter"},
	place_offset_y = 0,
	sidelen = 16,
	fill_ratio = 0.007,
	biomes = {"alpine"},
	y_max = 31000,
	y_min = 12,
	schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_alpine_pine2_0_90.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	name = "naturalbiomes:alppine2_tree2",
	deco_type = "schematic",
	place_on = {"naturalbiomes:alpine_litter"},
	place_offset_y = 0,
	sidelen = 16,
	fill_ratio = 0.0008,
	biomes = {"alpine"},
	y_max = 11,
	y_min = 4,
	schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_alpine_pine2_0_90.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

-- Tree generation
--

-- New alpine bush

local function grow_new_alpine_bush(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end

	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/naturalbiomes_alpine_berrybush_0_90.mts", "0", nil, true)
end 

	-- Alpine bush

	minetest.register_decoration({
		name = "naturalbiomes:alpine_bush",
		deco_type = "schematic",
		place_on = {"naturalbiomes:alpine_litter"},
		sidelen = 16,
		fill_ratio = 0.00075,
		biomes = {"alpine"},
		y_max = 31000,
		y_min = 3,
		place_offset_y = 1,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_alpine_berrybush_0_90.mts",
		flags = "place_center_x, place_center_z",
	})

minetest.register_node("naturalbiomes:alpine_bush_leaves_with_berries", {
	description = ("Alpine Bush Leaves with Berries"),
	drawtype = "allfaces_optional",
	tiles = {"default_blueberry_bush_leaves.png^default_blueberry_overlay.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1, dig_immediate = 3},
	drop = "default:blueberries",
	sounds = default.node_sound_leaves_defaults(),
	node_dig_prediction = "default:blueberry_bush_leaves",

	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "default:blueberry_bush_leaves"})
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,
})

minetest.register_node("naturalbiomes:alpine_bush_leaves", {
	description = ("Alpine Bush Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"default_blueberry_bush_leaves.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"default:blueberry_bush_sapling"}, rarity = 5},
			{items = {"default:blueberry_bush_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) < 11 then
			minetest.get_node_timer(pos):start(200)
		else
			minetest.set_node(pos, {name = "default:blueberry_bush_leaves_with_berries"})
		end
	end,

	after_place_node = after_place_leaves,
})

minetest.register_node("naturalbiomes:alpine_bush_sapling", {
	description = ("Alpine Bush Sapling"),
	drawtype = "plantlike",
	tiles = {"default_blueberry_bush_sapling.png"},
	inventory_image = "default_blueberry_bush_sapling.png",
	wield_image = "default_blueberry_bush_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_sapling,
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
			"naturalbiomes:alpine_bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

	--[[minetest.register_decoration({
		name = "naturalbiomes:alpine_mushroom",
		deco_type = "simple",
		place_on = {"naturalbiomes:alpine_litter"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.04,
			spread = {x = 100, y = 100, z = 100},
			seed = 7133,
			octaves = 3,
			persist = 0.6
		},
		y_max = 31000,
		y_min = 1,
		decoration = "naturalbiomes:alpine_mushroom",
		spawn_by = "naturalbiomes:alpine_litter",

})


minetest.register_node("naturalbiomes:alpine_mushroom", {
	description = ("Alpine Mushroom"),
	tiles = {"naturalbiomes_alpine_mushroom.png"},
	inventory_image = "naturalbiomes_alpine_mushroom.png",
	wield_image = "naturalbiomes_alpine_mushroom.png",
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {mushroom = 1, food_mushroom = 1, snappy = 3, attached_node = 1, flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(1),
	selection_box = {
		type = "fixed",
		fixed = {-3 / 16, -0.5, -3 / 16, 3 / 16, -2 / 16, 3 / 16},
	}
})]]


	--[[minetest.register_decoration({
		name = "naturalbiomes:alpine_grass1",
		deco_type = "simple",
		place_on = {"naturalbiomes:alpine_litter"},
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
		decoration = "naturalbiomes:alpine_grass1",
        spawn_by = "naturalbiomes:alpine_litter"
	})]]

minetest.register_node("naturalbiomes:alpine_grass1", {
	    description = "Alpine Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_alpine_grass1.png"},
	    inventory_image = "naturalbiomes_alpine_grass1.png",
	    wield_image = "naturalbiomes_alpine_grass1.png",
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

	--[[minetest.register_decoration({
		name = "naturalbiomes:alpine_grass2",
		deco_type = "simple",
		place_on = {"naturalbiomes:alpine_litter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 4602,
			octaves = 8,
			persist = 1,
		},
		y_max = 31000,
		y_min = 1,
		decoration = "naturalbiomes:alpine_grass2",
        spawn_by = "naturalbiomes:alpine_litter"
	})]]

minetest.register_node("naturalbiomes:alpine_grass2", {
	    description = "Alpine Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_alpine_grass2.png"},
	    inventory_image = "naturalbiomes_alpine_grass2.png",
	    wield_image = "naturalbiomes_alpine_grass2.png",
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

	--[[minetest.register_decoration({
		name = "naturalbiomes:alpine_grass3",
		deco_type = "simple",
		place_on = {"naturalbiomes:alpine_litter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 3602,
			octaves = 7,
			persist = 1,
		},
		y_max = 31000,
		y_min = 1,
		decoration = "naturalbiomes:alpine_grass3",
        spawn_by = "naturalbiomes:alpine_litter"
	})]]

minetest.register_node("naturalbiomes:alpine_grass3", {
	    description = "Alpine Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_alpine_grass3.png"},
	    inventory_image = "naturalbiomes_alpine_grass3.png",
	    wield_image = "naturalbiomes_alpine_grass3.png",
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
		name = "naturalbiomes:alpine_grass3",
		deco_type = "simple",
		place_on = {"naturalbiomes:alpine_litter"},
		sidelen = 16,
		fill_ratio = 0.175,
		y_max = 31000,
		y_min = 1,
		decoration = {
			"naturalbiomes:alpine_grass1",
			"naturalbiomes:alpine_grass2",
			"naturalbiomes:alpine_grass3",
		},
	})

	minetest.register_decoration({
		name = "naturalbiomes:alpine_dandelion",
		deco_type = "simple",
		place_on = {"naturalbiomes:alpine_litter"},
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
		decoration = "naturalbiomes:alpine_dandelion",
        spawn_by = "naturalbiomes:alpine_litter"
	})

minetest.register_node("naturalbiomes:alpine_dandelion", {
	    description = "Alpine Dandelion Flower",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_alpine_dandelion.png"},
	    inventory_image = "naturalbiomes_alpine_dandelion.png",
	    wield_image = "naturalbiomes_alpine_dandelion.png",
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
		name = "naturalbiomes:alpine_edelweiss",
		deco_type = "simple",
		place_on = {"naturalbiomes:alpine_litter"},
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
		decoration = "naturalbiomes:alpine_edelweiss",
        spawn_by = "naturalbiomes:mediterran_litter"
	})

minetest.register_node("naturalbiomes:alpine_edelweiss", {
	    description = "Edelweiss Flower",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_alpine_edelweiss.png"},
	    inventory_image = "naturalbiomes_alpine_edelweiss.png",
	    wield_image = "naturalbiomes_alpine_edelweiss.png",
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
		name = "naturalbiomes:alpine_log",
		deco_type = "schematic",
		place_on = {"naturalbiomes:alpine_litter"},
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
		biomes = {"alpine"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes__alpine_pine1_log_0_90.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "naturalbiomes:alpine_litter",
		num_spawn_by = 4,
	})

	minetest.register_decoration({
		name = "naturalbiomes:alpine_log2",
		deco_type = "schematic",
		place_on = {"naturalbiomes:alpine_litter"},
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
		biomes = {"alpine"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_alpine_pine2_log_0_90.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "naturalbiomes:alpine_litter",
		num_spawn_by = 4,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {
			"naturalbiomes:alpine_litter",
			"naturalbiomes:alppine1_leaves",
			"naturalbiomes:alppine2_leaves",
		},
		sidelen = 16,
		noise_params = {
			offset = -0.75,
			scale = -1,
			spread = {x = 100, y = 100, z = 100},
			seed = 456,
			octaves = 2,
			persist = 1.0
		},
		biomes = {"alpine"},
		y_max = 31000,
		y_min = 1,
		decoration = "default:snow",
	})