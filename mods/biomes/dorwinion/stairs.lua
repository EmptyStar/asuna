if minetest.get_modpath("stairs") then
  stairs.register_stair_and_slab(
    "dorwinion",
    "dorwinion:dorwinion",
    {cracky = 3},
    {"dorwinion.png"},
    "Dorwinion Stair",
    "Dorwinion Slab",
    default.node_sound_stone_defaults(),
    true
  )

  stairs.register_stair_and_slab(
    "dorwinion_brick",
    "dorwinion:dorwinion_brick",
    {cracky = 3},
    {"dorwinion_brick.png"},
    "Dorwinion Brick Stair",
    "Dorwinion Brick Slab",
    default.node_sound_stone_defaults(),
    true
  )

  stairs.register_stair_and_slab(
    "dorwinion_brick_with_flowers",
    "dorwinion:dorwinion_brick_with_flowers",
    {cracky = 3},
    {"dorwinion_brick_with_flowers.png"},
    "Dorwinion Brick With Flowers Stair",
    "Dorwinion Brick With Flowers Slab",
    default.node_sound_stone_defaults(),
    true
  )

  stairs.register_stair_and_slab(
    "dorwinion_brick_with_moss",
    "dorwinion:dorwinion_brick_with_moss",
    {cracky = 3},
    {"dorwinion_brick_with_moss.png"},
    "Dorwinion Brick With Moss Stair",
    "Dorwinion Brick With Moss Slab",
    default.node_sound_stone_defaults(),
    true
  )

  stairs.register_stair_and_slab(
    "dorwinion_carved",
    "dorwinion:dorwinion_carved",
    {cracky = 3},
    {"dorwinion_carved.png"},
    "Dorwinion Carved Stair",
    "Dorwinion Carved Slab",
    default.node_sound_stone_defaults(),
    true
  )
end