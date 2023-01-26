-- CaveRealms nodes.lua

--NODES--

--glowing crystal
minetest.register_node("caverealms:glow_crystal", {
	description = "Glow Sapphire",
	tiles = {"caverealms_glow_crystal.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_glass_defaults(),
	light_source = 13,
	paramtype = "light",
	use_texture_alpha = true,
	drawtype = "glasslike",
	sunlight_propagates = true,
})

--glowing emerald
minetest.register_node("caverealms:glow_emerald", {
	description = "Glow Emerald",
	tiles = {"caverealms_glow_emerald.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_glass_defaults(),
	light_source = 13,
	paramtype = "light",
	use_texture_alpha = true,
	drawtype = "glasslike",
	sunlight_propagates = true,
})

--glowing mese crystal blocks
minetest.register_node("caverealms:glow_mese", {
	description = "Glow Mese Crystal",
	tiles = {"caverealms_glow_mese.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_glass_defaults(),
	light_source = 13,
	paramtype = "light",
	use_texture_alpha = true,
	drawtype = "glasslike",
	sunlight_propagates = true,
})

--glowing ruby
minetest.register_node("caverealms:glow_ruby", {
	description = "Glow Ruby",
	tiles = {"caverealms_glow_ruby.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_glass_defaults(),
	light_source = 13,
	paramtype = "light",
	use_texture_alpha = true,
	drawtype = "glasslike",
	sunlight_propagates = true,
})

--glowing amethyst
minetest.register_node("caverealms:glow_amethyst", {
	description = "Glow Amethyst",
	tiles = {"caverealms_glow_amethyst.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_glass_defaults(),
	light_source = 13,
	paramtype = "light",
	use_texture_alpha = true,
	drawtype = "glasslike",
	sunlight_propagates = true,
})

--embedded crystal
minetest.register_node("caverealms:glow_ore", {
	description = "Glow Crystal Ore",
	tiles = {"caverealms_glow_ore.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_glass_defaults(),
	light_source = 10,
	paramtype = "light",
})

--embedded emerald
minetest.register_node("caverealms:glow_emerald_ore", {
	description = "Glow Emerald Ore",
	tiles = {"caverealms_glow_emerald_ore.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_glass_defaults(),
	light_source = 10,
	paramtype = "light",
})

--embedded ruby
minetest.register_node("caverealms:glow_ruby_ore", {
	description = "Glow Ruby Ore",
	tiles = {"caverealms_glow_ruby_ore.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_glass_defaults(),
	light_source = 10,
	paramtype = "light",
})

--embedded amethyst
minetest.register_node("caverealms:glow_amethyst_ore", {
	description = "Glow Amethyst Ore",
	tiles = {"caverealms_glow_amethyst_ore.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_glass_defaults(),
	light_source = 10,
	paramtype = "light",
})

--thin (transparent) ice
minetest.register_node("caverealms:thin_ice", {
	description = "Thin Ice",
	tiles = {"caverealms_thin_ice.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_glass_defaults(),
	use_texture_alpha = true,
	drawtype = "glasslike",
	sunlight_propagates = true,
	freezemelt = "default:water_source",
	paramtype = "light",
})

--salt crystal
minetest.register_node("caverealms:salt_crystal", {
	description = "Salt Crystal",
	tiles = {"caverealms_salt_crystal.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_glass_defaults(),
	light_source = 11,
	paramtype = "light",
	use_texture_alpha = true,
	drawtype = "glasslike",
	sunlight_propagates = true,
})

--glowing crystal gem
minetest.register_node("caverealms:glow_gem", {
	description = "Glow Gem",
	tiles = {"caverealms_glow_gem.png"},
	inventory_image = "caverealms_glow_gem.png",
	wield_image = "caverealms_glow_gem.png",
	is_ground_content = true,
	groups = {cracky = 3, oddly_breakable_by_hand = 1, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = 11,
	paramtype = "light",
	drawtype = "plantlike",
	walkable = false,
	buildable_to = true,
	visual_scale = 0.75,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	}
})

--glowing salt gem
minetest.register_node("caverealms:salt_gem", {
	description = "Salt Gem",
	tiles = {"caverealms_salt_gem.png"},
	inventory_image = "caverealms_salt_gem.png",
	wield_image = "caverealms_salt_gem.png",
	is_ground_content = true,
	groups = {cracky = 3, oddly_breakable_by_hand = 1, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = 11,
	paramtype = "light",
	drawtype = "plantlike",
	walkable = false,
	buildable_to = true,
	visual_scale = 0.75,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	}
})

--stone spike
minetest.register_node("caverealms:spike", {
	description = "Stone Spike",
	tiles = {"caverealms_spike.png"},
	inventory_image = "caverealms_spike.png",
	wield_image = "caverealms_spike.png",
	is_ground_content = true,
	groups = {cracky = 3, oddly_breakable_by_hand = 1, attached_node = 1},
	sounds = default.node_sound_stone_defaults(),
	light_source = 3,
	paramtype = "light",
	drawtype = "plantlike",
	walkable = false,
	buildable_to = true,
	visual_scale = 0.75,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	}
})


--upward pointing icicle
minetest.register_node("caverealms:icicle_up", {
	description = "Icicle",
	tiles = {"caverealms_icicle_up.png"},
	inventory_image = "caverealms_icicle_up.png",
	wield_image = "caverealms_icicle_up.png",
	is_ground_content = true,
	groups = {cracky=3, oddly_breakable_by_hand=1},
	sounds = default.node_sound_glass_defaults(),
	light_source = 8,
	paramtype = "light",
	drawtype = "plantlike",
	walkable = false,
	buildable_to = true,
	visual_scale = 1.0,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})

--downward pointing icicle
minetest.register_node("caverealms:icicle_down", {
	description = "Icicle",
	tiles = {"caverealms_icicle_down.png"},
	inventory_image = "caverealms_icicle_down.png",
	wield_image = "caverealms_icicle_down.png",
	is_ground_content = true,
	groups = {cracky=3, oddly_breakable_by_hand=1},
	sounds = default.node_sound_glass_defaults(),
	light_source = 8,
	paramtype = "light",
	drawtype = "plantlike",
	walkable = false,
	buildable_to = true,
	visual_scale = 1.0,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})

--cave mossy cobble - bluish?
minetest.register_node("caverealms:stone_with_moss", {
	description = "Cave Stone with Moss",
	tiles = {"default_cobble.png^caverealms_moss.png", "default_cobble.png", "default_cobble.png^caverealms_moss_side.png"},
	is_ground_content = true,
	groups = {crumbly=1, cracky=3},
	drop = 'default:cobble',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.25},
	}),
})

--cave lichen-covered cobble - purple-ish
minetest.register_node("caverealms:stone_with_lichen", {
	description = "Cave Stone with Lichen",
	tiles = {"default_cobble.png^caverealms_lichen.png", "default_cobble.png", "default_cobble.png^caverealms_lichen_side.png"},
	is_ground_content = true,
	groups = {crumbly=1, cracky=3},
	drop = 'default:cobble',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.25},
	}),
})

--cave algae-covered cobble - yellow-ish
minetest.register_node("caverealms:stone_with_algae", {
	description = "Cave Stone with Algae",
	tiles = {"default_cobble.png^caverealms_algae.png", "default_cobble.png", "default_cobble.png^caverealms_algae_side.png"},
	is_ground_content = true,
	groups = {crumbly=1, cracky=3},
	drop = 'default:cobble',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.25},
	}),
})

--tiny-salt-crystal-covered cobble - pink-ish
minetest.register_node("caverealms:stone_with_salt", {
	description = "Salt Crystal",
	tiles = {"caverealms_salty2.png"},
	light_source = 9,
	paramtype = "light",
	use_texture_alpha = true,
	drawtype = "glasslike",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_glass_defaults(),
})

--Hot Cobble - cobble with lava instead of mortar XD
minetest.register_node("caverealms:hot_cobble", {
	description = "Hot Cobble",
	tiles = {"caverealms_hot_cobble.png"},
	is_ground_content = true,
	groups = {cracky=1, hot=1, unbreakable = 1},
	damage_per_second = 1,
	light_source = 3,
	paramtype = "light",
	sounds = default.node_sound_stone_defaults({
		footstep = {name="default_stone_footstep", gain=0.25},
	}),
})

--Glow Obsidian
minetest.register_node("caverealms:glow_obsidian", {
	description = "Glowing Obsidian",
	tiles = {"caverealms_glow_obsidian.png"},
	is_ground_content = true,
	groups = {cracky=1, level=2},
	light_source = 7,
	paramtype = "light",
	sounds = default.node_sound_stone_defaults({
		footstep = {name="default_stone_footstep", gain=0.25},
	}),
})

--Glow Obsidian 2 - has traces of lava
minetest.register_node("caverealms:glow_obsidian_2", {
	description = "Hot Glowing Obsidian",
	tiles = {"caverealms_glow_obsidian2.png"},
	is_ground_content = true,
	groups = {cracky=1, hot=1, level=2},
	light_source = 9,
	paramtype = "light",
	sounds = default.node_sound_stone_defaults({
		footstep = {name="default_stone_footstep", gain=0.25},
	}),
})

--Glow Obsidian Bricks
minetest.register_node("caverealms:glow_obsidian_brick", {
	description = "Glow Obsidian Brick",
	tiles = {"caverealms_glow_obsidian_brick.png"},
	light_source = 7,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("caverealms:glow_obsidian_brick_2", {
	description = "Glow Obsidian Brick",
	tiles = {"caverealms_glow_obsidian_brick_2.png"},
	light_source = 9,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})

--Glow Obsidian Stairs/Slabs
stairs.register_stair_and_slab(
	"glow_obsidian_brick",
	"caverealms:glow_obsidian_brick",
	{cracky = 1, level = 2},
	{"caverealms_glow_obsidian_brick.png"},
	"Glow Obsidian Brick Stair",
	"Glow Obsidian Brick Slab",
	default.node_sound_stone_defaults())

stairs.register_stair_and_slab(
	"glow_obsidian_brick_2",
	"caverealms:glow_obsidian_brick_2",
	{cracky = 1, level = 2},
	{"caverealms_glow_obsidian_brick_2.png"},
	"Glow Obsidian Brick Stair",
	"Glow Obsidian Brick Slab",
	default.node_sound_stone_defaults())

--Glow Obsidian Glass
minetest.register_node("caverealms:glow_obsidian_glass", {
	description = "Glow Obsidian Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"caverealms_glow_obsidian_glass.png", "default_obsidian_glass_detail.png"},
	paramtype = "light",
	light_source = 13,
	sunlight_propagates = true,
	groups = {cracky = 3},
	sounds = default.node_sound_glass_defaults(),
})

--Coal Dust
minetest.register_node("caverealms:coal_dust", {
	description = "Coal Dust",
	tiles = {"caverealms_coal_dust.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1},
	sounds = default.node_sound_sand_defaults(),
})

--glow worms
minetest.register_node("caverealms:glow_worm", {
	description = "Blue Glow Worms",
	tiles = {"caverealms_glow_worm.png"},
	inventory_image = "caverealms_glow_worm.png",
	wield_image = "caverealms_glow_worm.png",
	is_ground_content = true,
	groups = {oddly_breakable_by_hand=3},
	light_source = 9,
	paramtype = "light",
	drawtype = "plantlike",
	walkable = false,
	buildable_to = true,
	visual_scale = 1.0,
	selection_box = {
		type = "fixed",
		fixed = {-1/6, -1/2, -1/6, 1/6, 1/2, 1/6},
	},
})

minetest.register_node("caverealms:glow_worm_green", {
	description = "Green Glow Worms",
	tiles = {"caverealms_glow_worm_green.png"},
	inventory_image = "caverealms_glow_worm_green.png",
	wield_image = "caverealms_glow_worm_green.png",
	is_ground_content = true,
	groups = {oddly_breakable_by_hand=3},
	light_source = 9,
	paramtype = "light",
	drawtype = "plantlike",
	walkable = false,
	buildable_to = true,
	visual_scale = 1.0,
	selection_box = {
		type = "fixed",
		fixed = {-1/6, -1/2, -1/6, 1/6, 1/2, 1/6},
	},
})

minetest.register_node("caverealms:fire_vine", {
	description = "Fire Vine",
	tiles = {"caverealms_fire_vine.png"},
	inventory_image = "caverealms_fire_vine.png",
	wield_image = "caverealms_fire_vine.png",
	is_ground_content = true,
	damage_per_second = 1,
	groups = {oddly_breakable_by_hand=3},
	light_source = 9,
	paramtype = "light",
	drawtype = "plantlike",
	walkable = false,
	buildable_to = true,
	visual_scale = 1.0,
	selection_box = {
		type = "fixed",
		fixed = {-1/6, -1/2, -1/6, 1/6, 1/2, 1/6},
	},
})


--define special flame so that it does not expire
minetest.register_node("caverealms:constant_flame", {
	description = "Fire",
	drawtype = "plantlike",
	tiles = {{
		name="fire_basic_flame_animated.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1},
	}},
	inventory_image = "fire_basic_flame.png",
	light_source = 14,
	groups = {igniter=2, dig_immediate=3, hot=3, not_in_creative_inventory=1},
	paramtype = "light",
	drop = '',
	walkable = false,
	buildable_to = true,
	damage_per_second = 4,
})

--dungeon master statue (nodebox)
minetest.register_node("caverealms:dm_statue", {
	description = "Dungeon Master Statue",
	tiles = {
		"caverealms_dm_stone.png",
		"caverealms_dm_stone.png",
		"caverealms_dm_stone.png",
		"caverealms_dm_stone.png",
		"caverealms_dm_stone.png",
		"caverealms_stone_eyes.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.4375, 0.4375, -0.3125, 0.4375}, -- NodeBox1
			{-0.25, -0.125, -0.1875, 0.25, 0.5, 0.1875}, -- NodeBox2
			{-0.375, 0, -0.125, -0.25, 0.4375, 0.125}, -- NodeBox3
			{0.25, 0.125, -0.4375, 0.375, 0.375, 0.1875}, -- NodeBox4
			{-0.25, -0.5, -0.125, -0.125, -0.125, 0.125}, -- NodeBox5
			{0.125, -0.3125, -0.125, 0.25, 0, 0.125}, -- NodeBox6
		}
	},
	selection_box = {
		type = "regular"
	}
})


-- Compatibility
minetest.register_alias("caverealms:hanging_thin_ice", "caverealms:thin_ice")

minetest.register_alias("caverealms:spike_2", "caverealms:spike")
minetest.register_alias("caverealms:spike_3", "caverealms:spike")
minetest.register_alias("caverealms:spike_4", "caverealms:spike")
minetest.register_alias("caverealms:spike_5", "caverealms:spike")

minetest.register_alias("caverealms:salt_gem_2", "caverealms:salt_gem")
minetest.register_alias("caverealms:salt_gem_3", "caverealms:salt_gem")
minetest.register_alias("caverealms:salt_gem_4", "caverealms:salt_gem")
minetest.register_alias("caverealms:salt_gem_5", "caverealms:salt_gem")

minetest.register_alias("caverealms:glow_gem_2", "caverealms:glow_gem")
minetest.register_alias("caverealms:glow_gem_3", "caverealms:glow_gem")
minetest.register_alias("caverealms:glow_gem_4", "caverealms:glow_gem")
minetest.register_alias("caverealms:glow_gem_5", "caverealms:glow_gem")
