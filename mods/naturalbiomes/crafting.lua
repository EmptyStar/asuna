    stairs.register_stair_and_slab(
      "naturalbiomes_adler_reed_bundle",
      "naturalbiomes:reed_bundle",
      {snappy = 3, oddly_breakable_by_hand = 0, flammable = 0},
      {"naturalbiomes_adler_reed_bundle.png"},
      ("Reed Bundle Stair"),
      ("Reed Bundle Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "naturalbiomes_alpine_rock_brick",
      "naturalbiomes:alpine_brick",
      {cracky = 1, oddly_breakable_by_hand = 0, flammable = 0},
      {"naturalbiomes_alpine_rock_brick.png"},
      ("Alpine Brick Stair"),
      ("Alpine Brick Slab"),
      default.node_sound_wood_defaults()
    )


    stairs.register_stair_and_slab(
      "naturalbiomes_bambooforest_rock_brick",
      "naturalbiomes:bamboo_brick",
      {cracky = 1, oddly_breakable_by_hand = 0, flammable = 0},
      {"naturalbiomes_bambooforest_rock_brick.png"},
      ("Bamboo Brick Stair"),
      ("Bamboo Brick Slab"),
      default.node_sound_wood_defaults()
    )


    stairs.register_stair_and_slab(
      "naturalbiomes_beach_rock_brick",
      "naturalbiomes:beach_brick",
      {cracky = 1, oddly_breakable_by_hand = 0, flammable = 0},
      {"naturalbiomes_beach_rock_brick.png"},
      ("Beach Brick Stair"),
      ("Beach Brick Slab"),
      default.node_sound_wood_defaults()
    )


    stairs.register_stair_and_slab(
      "naturalbiomes_mediterran_rock_brick",
      "naturalbiomes:med_brick",
      {cracky = 1, oddly_breakable_by_hand = 0, flammable = 0},
      {"naturalbiomes_mediterran_rock_brick.png"},
      ("Med Brick Stair"),
      ("Med Brick Slab"),
      default.node_sound_wood_defaults()
    )


    stairs.register_stair_and_slab(
      "naturalbiomes_outback_rock_brick",
      "naturalbiomes:outback_brick",
      {cracky = 1, oddly_breakable_by_hand = 0, flammable = 0},
      {"naturalbiomes_outback_rock_brick.png"},
      ("Outback Brick Stair"),
      ("Outback Brick Slab"),
      default.node_sound_wood_defaults()
    )

walls.register(":naturalbiomes:alpine_brick_wall", "Alpine Brick Wall", "naturalbiomes_alpine_rock_brick.png",
		"naturalbiomes:alpine_brick_wall", default.node_sound_stone_defaults())

walls.register(":naturalbiomes:bamboo_brick_wall", "Bambooforest Wall", "naturalbiomes_bambooforest_rock_brick.png",
		"naturalbiomes:bamboo_brick_wall", default.node_sound_stone_defaults())

walls.register(":naturalbiomes:med_brick_wall", "Mediterranean Wall", "naturalbiomes_mediterran_rock_brick.png",
		"naturalbiomes:med_brick_wall", default.node_sound_stone_defaults())

walls.register(":naturalbiomes:outback_brick_wall", "Outback Wall", "naturalbiomes_outback_rock_brick.png",
		"naturalbiomes:outback_brick_wall", default.node_sound_stone_defaults())

walls.register(":naturalbiomes:beach_brick_wall", "Palmbeach Wall", "naturalbiomes_beach_rock_brick.png",
		"naturalbiomes:beach_brick_wall", default.node_sound_stone_defaults())

minetest.register_node("naturalbiomes:reed_bundle", {
	description = ("Reed Bundle"),
	tiles = {
		"naturalbiomes_adler_reed_bundle_top.png",
		"naturalbiomes_adler_reed_bundle_top.png",
		"naturalbiomes_adler_reed_bundle.png"
	},
	is_ground_content = false,
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("naturalbiomes:alpine_brick", {
	description = ("Alpine Brick"),
	tiles = {"naturalbiomes_alpine_rock_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("naturalbiomes:bamboo_brick", {
	description = ("Bambooforest Brick"),
	tiles = {"naturalbiomes_bambooforest_rock_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("naturalbiomes:beach_brick", {
	description = ("Beach Brick"),
	tiles = {"naturalbiomes_beach_rock_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("naturalbiomes:med_brick", {
	description = ("Meditteranean Brick"),
	tiles = {"naturalbiomes_mediterran_rock_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("naturalbiomes:outback_brick", {
	description = ("Outback Brick"),
	tiles = {"naturalbiomes_outback_rock_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "naturalbiomes:reed_bundle",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:alderswamp_reed", "naturalbiomes:alderswamp_reed", "naturalbiomes:alderswamp_reed", "naturalbiomes:alderswamp_reed"}

})

minetest.register_craft({
	output = "naturalbiomes:reed_bundle",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:alderswamp_reed2", "naturalbiomes:alderswamp_reed2", "naturalbiomes:alderswamp_reed2", "naturalbiomes:alderswamp_reed2"}

})

minetest.register_craft({
	output = "naturalbiomes:reed_bundle",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:alderswamp_reed3", "naturalbiomes:alderswamp_reed3", "naturalbiomes:alderswamp_reed3", "naturalbiomes:alderswamp_reed3"}

})

minetest.register_craft({
	output = "naturalbiomes:alpine_brick",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:alpine_rock", "naturalbiomes:alpine_rock", "naturalbiomes:alpine_rock", "naturalbiomes:alpine_rock"}

	
})

minetest.register_craft({
	output = "naturalbiomes:bamboo_brick",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:bambooforest_rock", "naturalbiomes:bambooforest_rock", "naturalbiomes:bambooforest_rock", "naturalbiomes:bambooforest_rock"}

	
})

minetest.register_craft({
	output = "naturalbiomes:beach_brick",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:palmbeach_rock", "naturalbiomes:palmbeach_rock", "naturalbiomes:palmbeach_rock", "naturalbiomes:palmbeach_rock"}

	
})

minetest.register_craft({
	output = "naturalbiomes:med_brick",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:mediterran_rock", "naturalbiomes:mediterran_rock", "naturalbiomes:mediterran_rock", "naturalbiomes:mediterran_rock"}

	
})

minetest.register_craft({
	output = "naturalbiomes:outback_brick",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:outback_rock", "naturalbiomes:outback_rock", "naturalbiomes:outback_rock", "naturalbiomes:outback_rock"}

	
})

----

minetest.register_craft({
	output = "naturalbiomes:alpine_brick_wall",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:alpine_brick", "naturalbiomes:alpine_brick", "naturalbiomes:alpine_brick", "naturalbiomes:alpine_brick", "naturalbiomes:alpine_brick", "naturalbiomes:alpine_brick"}

	
})

minetest.register_craft({
	output = "naturalbiomes:bamboo_brick_wall",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:bamboo_brick", "naturalbiomes:bamboo_brick", "naturalbiomes:bamboo_brick", "naturalbiomes:bamboo_brick", "naturalbiomes:bamboo_brick", "naturalbiomes:bamboo_brick"}

	
})

minetest.register_craft({
	output = "naturalbiomes:beach_brick",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:beach_brick", "naturalbiomes:beach_brick", "naturalbiomes:beach_brick", "naturalbiomes:beach_brick", "naturalbiomes:beach_brick", "naturalbiomes:beach_brick"}

	
})

minetest.register_craft({
	output = "naturalbiomes:med_brick_wall",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:med_brick", "naturalbiomes:med_brick", "naturalbiomes:med_brick", "naturalbiomes:med_brick", "naturalbiomes:med_brick", "naturalbiomes:med_brick"}

	
})

minetest.register_craft({
	output = "naturalbiomes:outback_brick_wall",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:outback_brick", "naturalbiomes:outback_brick", "naturalbiomes:outback_brick", "naturalbiomes:outback_brick", "naturalbiomes:outback_brick", "naturalbiomes:outback_brick"}

	
})
