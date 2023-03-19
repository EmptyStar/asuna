--[[
  Biome definitions
]]

-- Caverealms biome references
local caverealms_biomes = {
  none = 0,
  moss = 1,
  fungal = 2,
  algae = 3,
  glacier = 4,
  deep_glacier = 5,
  fire = 6,
  salt = 7,
  glow_obsidian = 8,
  coal = 9,
}

asuna.biomes = {
  mountain = {
    heat = 50,
    humidity = 50,
    y_min = 140,
    y_max = 31000,
    nodes = {
      "default:snow", 1,
      "default:snowblock", 2,
    },
    flowers = {},
    mushrooms = {},
    animals = {"sheep","reindeer"},
    crops = {},
    stones = {},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "bare",
    caverealm = caverealms_biomes.none,
  },

  grassland = {
    heat = 50,
    humidity = 50,
    y_min = 2,
    y_max = 92,
    y_blend = 4,
    nodes = {
      "default:dirt_with_grass", 1,
      "default:dirt", 3,
    },
    flowers = {"blue","cyan","white","red","purple","orange","pink","yellow"},
    mushrooms = {},
    animals = {"chicken","cow","horse","pig","sheep"},
    crops = {"cucumber","spinach","eggplants","tomatoes","strawberry"},
    stones = {"greenstone","kyanite","limestone_white"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.moss,
  },

  underground = {
    heat = 50,
    humidity = 50,
    y_min = -31000,
    y_max = -257,
    nodes = {
      "default:stone", 1,
      "default:stone", 1,
    },
    flowers = {},
    mushrooms = {},
    animals = {"bat"},
    crops = {},
    stones = {}, -- FIXME gets set to all stones elsewhere
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "bare",
    caverealm = caverealms_biomes.none, -- is overridden in Caverealms biome selection
  },

  plains = {
    heat = 56,
    humidity = 32,
    y_min = 2,
    y_max = 92,
    y_blend = 4,
    nodes = {
      "default:dry_dirt_with_dry_grass", 1,
      "default:dry_dirt", 3,
    },
    flowers = {"yellow","white"},
    mushrooms = {},
    animals = {"chicken","horse","pig"},
    crops = {"corn","millet"},
    stones = {"limestone_white","limestone_blue","slate"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.moss,
  },

  prairie = {
    heat = 42,
    humidity = 47,
    y_min = 2,
    y_max = 32,
    y_blend = 4,
    nodes = {
      "prairie:prairie_dirt_with_grass", 1,
      "default:dirt", 3,
    },
    flowers = {},
    mushrooms = {},
    animals = {"chicken","owl","bird","rat","sheep"},
    crops = {"cucumber","eggplants","tomatoes","strawberry"},
    stones = {"greenstone","kyanite","limestone_white"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.moss,
  },

  dorwinion = {
    heat = 49,
    humidity = 42,
    y_min = 2,
    y_max = 31000,
    nodes = {
      "dorwinion:dorwinion_grass", 1,
      "dorwinion:dorwinion", 3,
    },
    flowers = {"red","white"},
    mushrooms = {"brown"},
    animals = {"owl","rat","bird"},
    crops = {"cucumber","strawberry"},
    stones = {"limestone_white","greenstone","kyanite","scoria"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    dungeon = {
      node = "dorwinion:dorwinion_brick_with_moss",
      alt = "dorwinion:dorwinion_brick",
      stair = "stairs:stair_limestone_white",
    },
    caverealm = caverealms_biomes.moss,
  },

  quicksand = {
    heat = 67,
    humidity = 85,
    y_min = 1,
    y_max = 2,
    nodes = {
      "ethereal:quicksand2", 3,
      "default:gravel", 1,
    },
    flowers = {},
    mushrooms = {},
    animals = {},
    crops = {},
    stones = {"greenstone","granite_green","ilvaite","bluestone"},
    shore = "ethereal:quicksand2",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.fungal,
    dungeon = "greenstone",
  },

  alpine = {
    heat = 25,
    humidity = 36,
    y_min = 2,
    y_max = 31000,
    nodes = {
      "naturalbiomes:alpine_litter", 1,
      "naturalbiomes:alpine_rock", 16,
    },
    flowers = {"black","yellow","cyan","white"},
    mushrooms = {"brown"},
    animals = {"fox","owl","pig","sheep","turkey","wolf"},
    crops = {"spinach","beetroot","potatoes","kale","onion"},
    stones = {"calcite","greenstone","slate"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "cold",
    caverealm = caverealms_biomes.moss,
  },

  desert = {
    heat = 52,
    humidity = 11,
    y_min = 2,
    y_max = 42,
    y_blend = 6,
    nodes = {
      "default:desert_sand", 1,
      "default:desert_sand", 3,
      "default:desert_stone",
    },
    flowers = {},
    mushrooms = {},
    animals = {},
    crops = {"agave","sisal","yucca"},
    stones = {"granite_red","rose_quartz","carnotite","sugilite"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    dungeon = {
      node = "default:sandstone",
      alt = "default:sandstone_brick",
      stair = "stairs:stair_sandstone_brick",
    },
    caverealm = caverealms_biomes.coal,
  },

  fiery = {
    heat = 90,
    humidity = 2,
    y_min = 2,
    y_max = 46,
    y_blend = 2,
    nodes = {
      "ethereal:fiery_dirt", 1,
      "default:dirt", 3,
    },
    flowers = {},
    mushrooms = {},
    animals = {},
    crops = {},
    stones = {"scoria","ilvaite","slate"},
    shore = "default:sandstone",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.fire,
    dungeon = "ilvaite",
  },

  terracotta = {
    heat = 82,
    humidity = 10,
    y_min = 2,
    y_max = 31000,
    nodes = {
      "terracotta:terracotta_1", 1,
      "terracotta:terracotta_1", 16,
      "default:desert_stone",
    },
    flowers = {},
    mushrooms = {},
    animals = {},
    crops = {},
    stones = {"slate","limestone_white","calcite","carnotite"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.coal,
    dungeon = "slate",
  },

  outback = {
    heat = 89,
    humidity = 22,
    y_min = 2,
    y_max = 31000,
    nodes = {
      "naturalbiomes:outback_litter", 1,
      "naturalbiomes:outback_ground", 16,
      "default:desert_stone",
    },
    flowers = {"yellow","red","white"},
    mushrooms = {},
    animals = {"horse","bird"},
    crops = {"aloe","agave","sisal","millet"},
    stones = {"carnotite","granite_red","calcite"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.coal,
    dungeon = "carontite",
  },

  sandstone = {
    heat = 74,
    humidity = 9,
    y_min = 2,
    y_max = 31000,
    nodes = {
      "default:sandstone", 1,
      "default:sandstone", 16,
      "default:desert_stone",
    },
    flowers = {},
    mushrooms = {},
    animals = {},
    crops = {"agave","yucca","chilie"},
    stones = {"granite_red","rose_quartz","carnotite","sugilite"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.coal,
    dungeon = {
      node = "default:sandstone",
      alt = "default:sandstone_brick",
      stair = "stairs:stair_sandstone_brick",
    },
  },

  savanna = {
    heat = 57,
    humidity = 29,
    y_min = 2,
    y_max = 31000,
    nodes = {
      "naturalbiomes:savannalitter", 1,
      "default:dirt", 3,
    },
    flowers = {"orange","yellow"},
    mushrooms = {},
    animals = {"horse","cat","chicken"},
    crops = {"aloe","yucca","jute","millet"},
    stones = {"scoria","marble","rose_quartz"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.moss,
  },

  mediterranean = {
    heat = 85,
    humidity = 26,
    y_min = 2,
    y_max = 31000,
    nodes = {
      "naturalbiomes:mediterran_litter", 1,
      "naturalbiomes:mediterran_rock", 16,
    },
    flowers = {"green","white","purple","black"},
    mushrooms = {},
    animals = {"bird","cat","chicken"},
    crops = {"aloe","chilie","yucca","jute","pepper","millet"},
    stones = {"marble","kyanite","scoria"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.moss,
    dungeon = "marble",
  },

  mushroom = {
    heat = 64,
    humidity = 82,
    y_min = 2,
    y_max = 24,
    y_blend = 4,
    nodes = {
      "ethereal:mushroom_dirt", 1,
      "default:dirt", 3,
    },
    flowers = {},
    mushrooms = {}, -- special mushrooms set in decor.lua
    animals = {},
    crops = {},
    stones = {"sugilite","granite_green","ilvaite"},
    shore = "default:clay",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.fungal,
    dungeon = "sugilite",
  },

  swamp = {
    heat = 65,
    humidity = 80,
    y_min = 1,
    y_max = 31000,
    nodes = {
      "default:dirt_with_grass", 1,
      "default:dirt", 3,
    },
    flowers = {"yellow","green","orange","black"},
    mushrooms = {"brown","red"},
    animals = {"frog","owl","rat"},
    crops = {"beetroot","rice","mint","asparagus"},
    stones = {"greenstone","granite_green","ilvaite","slate"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.fungal,
    dungeon = {
      node = "default:mossycobble",
      alt = "default:mossycobble",
      stair = "stairs:stair_mossycobble",
    },
  },

  marsh = {
    heat = 73,
    humidity = 100,
    y_min = 1,
    y_max = 20,
    nodes = {
      "default:dirt_with_grass", 1,
      "default:dirt", 3,
    },
    flowers = {"yellow","green","orange","black"},
    mushrooms = {"brown","red"},
    animals = {"frog"},
    crops = {"rice","mint"},
    stones = {"greenstone","granite_green","ilvaite","slate"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.algae,
    dungeon = {
      node = "default:mossycobble",
      alt = "default:mossycobble",
      stair = "stairs:stair_mossycobble",
    },
  },

  bambooforest = {
    heat = 88,
    humidity = 79,
    y_min = 6,
    y_max = 31000,
    nodes = {
      "bambooforest:dirt_with_bamboo", 1,
      "default:dirt", 3,
    },
    flowers = {"purple","orange"},
    mushrooms = {"brown","odd"},
    animals = {"bird","cat","chicken","frog","pig","rat"},
    crops = {"cassava","pepper","mint"},
    stones = {"amazonite","slate","calcite","greenstone","bluestone","ilvaite"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "tropical",
    caverealm = caverealms_biomes.moss,
    dungeon = "amazonite",
  },

  japaneseforest = {
    heat = 32,
    humidity = 72,
    y_min = 3,
    y_max = 31000,
    nodes = {
      "japaneseforest:japanese_dirt_with_grass", 1,
      "default:dirt", 3,
    },
    flowers = {"orange","pink","red","purple"},
    mushrooms = {},
    animals = {"fox","owl","rat"},
    crops = {"adzuki","bokchoy","ginger"},
    stones = {"greenstone","rose_quartz","marble","kyanite"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.moss,
    dungeon = "rose_quartz",
  },

  palmbeach = {
    heat = 100,
    humidity = 62,
    y_min = 1,
    y_max = 3,
    nodes = {
      "naturalbiomes:palmbeach_sand", 1,
      "default:sandstone", 3,
    },
    flowers = {},
    mushrooms = {},
    animals = {"bird"},
    crops = {},
    stones = {"limestone_blue","kyanite","calcite"},
    shore = "naturalbiomes:palmbeach_sand",
    seabed = "default:sand",
    ocean = "tropical",
    caverealm = caverealms_biomes.moss,
  },

  nightshade = {
    heat = 27,
    humidity = 68,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "nightshade:nightshade_dirt_with_grass", 1,
      "default:dirt", 3,
    },
    flowers = {},
    mushrooms = {"odd","red"},
    animals = {"bat"},
    crops = {"potatoes"},
    stones = {"ilvaite","slate","bluestone","sugilite"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.moss,
    dungeon = "ilvaite",
  },

  grassytwo = {
    heat = 38,
    humidity = 41,
    y_min = 2,
    y_max = 92,
    y_blend = 4,
    nodes = {
      "default:dirt_with_grass", 1,
      "default:dirt", 3,
    },
    flowers = {"blue","cyan","white","red","purple","orange","pink","yellow"},
    mushrooms = {},
    animals = {"chicken","cow","horse","pig","rat","owl","bird","sheep"},
    crops = {"cucumber","spinach","carrot","eggplants","tomatoes","cabbage","onion","strawberry"},
    stones = {"limestone_white","kyanite","limestone_blue","slate"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.moss,
  },

  mesa = {
    heat = 36,
    humidity = 19,
    y_min = 2,
    y_max = 31000,
    nodes = {
      "default:dirt_with_dry_grass", 1,
      "bakedclay:orange", 15,
      "default:desert_stone",
    },
    flowers = {"yellow","orange","white"},
    mushrooms = {},
    animals = {"chicken","cow","horse","owl","rat"},
    crops = {"millet","yucca"},
    stones = {"slate","scoria","limestone_white","bluestone"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.salt,
    dungeon = {
      node = "default:sandstone",
      alt = "default:sandstone_brick",
      stair = "stairs:stair_sandstone_brick",
    },
  },

  jumble = {
    heat = 57,
    humidity = 85,
    y_min = 2,
    y_max = 31000,
    nodes = {
      "default:dirt_with_grass", 1,
      "default:dirt", 3,
    },
    flowers = {"yellow","green","orange","black"},
    mushrooms = {"brown","red"},
    animals = {"frog","owl","rat"},
    crops = {"cucumber","spinach","eggplants","cabbage","onion"},
    stones = {"greenstone","ilvaite","slate","slate"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.fungal,
    dungeon = {
      node = "default:mossycobble",
      alt = "default:mossycobble",
      stair = "stairs:stair_mossycobble",
    },
  },

  deciduous_forest = {
    heat = 36,
    humidity = 52,
    y_min = 2,
    y_max = 192,
    nodes = {
      "default:dirt_with_grass", 1,
      "default:dirt", 3,
    },
    flowers = {"blue","white","yellow"},
    mushrooms = {"brown"},
    animals = {"chicken","pig","owl","rat"},
    crops = {"cucumber","spinach","eggplants","cabbage","onion"},
    stones = {"greenstone","granite_green","slate","limestone_white"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.moss,
  },

  sakura = {
    heat = 37,
    humidity = 74,
    y_min = 2,
    y_max = 40,
    y_blend = 6,
    nodes = {
      "ethereal:bamboo_dirt", 1,
      "default:dirt", 3,
    },
    flowers = {"pink","white","orange"},
    mushrooms = {},
    animals = {"chicken","fox","pig","sheep"},
    crops = {"adzuki","bokchoy","ginger","rice"},
    stones = {"rose_quartz","limestone_white","greenstone"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.moss,
    dungeon = "rose_quartz",
  },

  junglee = {
    heat = 90,
    humidity = 76,
    y_min = 6,
    y_max = 31000,
    nodes = {
      "default:dirt_with_rainforest_litter", 1,
      "default:dirt", 3,
    },
    flowers = {"blue","purple","orange","black"},
    mushrooms = {"brown","odd"},
    animals = {"bird","cat","chicken","pig","rat","frog"},
    crops = {"spiceleaf","sisal","cassava","pepper","mint"},
    stones = {"amazonite","bluestone","granite_green","marble","ilvaite","slate"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "tropical",
    caverealm = caverealms_biomes.moss,
    dungeon = "amazonite",
  },

  livingjungle = {
    heat = 88,
    humidity = 81,
    y_min = 1,
    y_max = 31000,
    nodes = {
      "livingjungle:jungleground", 1,
      "default:dirt", 6,
    },
    flowers = {"purple","green","black"},
    mushrooms = {"brown","odd"},
    animals = {"bird","cat","frog","pig","rat","frog"},
    crops = {"sisal","mint"},
    stones = {"amazonite","greenstone","granite_green","marble","slate","ilvaite"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "tropical",
    caverealm = caverealms_biomes.moss,
    dungeon = "amazonite",
  },

  grove = {
    heat = 91,
    humidity = 72,
    y_min = 2,
    y_max = 40,
    y_blend = 2,
    nodes = {
      "ethereal:grove_dirt", 1,
      "default:dirt", 3,
    },
    flowers = {"blue","orange","black","green"},
    mushrooms = {},
    animals = {"bird","chicken","pig"},
    crops = {"aloe","chilie","spiceleaf","sisal","cassava","jute","pepper"},
    stones = {"amazonite","granite_green","greenstone","marble"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "tropical",
    caverealm = caverealms_biomes.moss,
    dungeon = "amazonite",
  },

  alderswamp = {
    heat = 58,
    humidity = 80,
    y_min = 1,
    y_max = 56,
    y_blend = 4,
    nodes = {
      "naturalbiomes:alderswamp_litter", 1,
      "naturalbiomes:alderswamp_dirt", 3,
    },
    flowers = {"yellow","green"},
    mushrooms = {"brown","red","odd"},
    animals = {"frog","owl","rat"},
    crops = {"rice","mint","asparagus"},
    stones = {"greenstone","granite_green","ilvaite","slate"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    caverealm = caverealms_biomes.algae,
    dungeon = {
      node = "default:mossycobble",
      alt = "default:mossycobble",
      stair = "stairs:stair_mossycobble",
    },
  },

  badland = {
    heat = 24,
    humidity = 67,
    y_min = 2,
    y_max = 31000,
    nodes = {
      "badland:badland_grass", 1,
      "default:dirt", 3,
    },
    flowers = {"red","yellow","black"},
    mushrooms = {"brown"},
    animals = {"chicken","fox","owl","pig","rat","turkey"},
    crops = {"carrot","beetroot","potatoes","corn","kale"},
    stones = {"ilvaite","slate","scoria"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "cold",
    caverealm = caverealms_biomes.salt,
    dungeon = "slate",
  },

  coniferous_forest = {
    heat = 10,
    humidity = 54,
    y_min = 2,
    y_max = 48,
    nodes = {
      "default:dirt_with_coniferous_litter", 1,
      "default:dirt", 3,
    },
    flowers = {"white","green","cyan"},
    mushrooms = {"brown"},
    animals = {"fox","owl","sheep","turkey","wolf"},
    crops = {"carrot","potatoes","kale","onion"},
    stones = {"limestone_white","kyanite","slate","greenstone"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "cold",
    caverealm = caverealms_biomes.salt,
  },

  taiga = {
    heat = 10,
    humidity = 54,
    y_min = 49,
    y_max = 31000,
    nodes = {
      "default:dirt_with_snow", 1,
      "default:dirt", 3,
    },
    flowers = {"white","green","cyan"},
    mushrooms = {"brown"},
    animals = {"fox","owl","sheep","turkey","wolf"},
    crops = {"carrot","potatoes","kale","onion"},
    stones = {"limestone_white","kyanite","slate","greenstone"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "cold",
    caverealm = caverealms_biomes.salt,
  },

  glacier = {
    heat = 0,
    humidity = 54,
    y_min = 1,
    y_max = 31000,
    nodes = {
      "default:snowblock", 1,
      "default:snowblock", 3,
      "default:stone",
      "default:snowblock",
    },
    flowers = {},
    mushrooms = {},
    animals = {},
    crops = {},
    stones = {"limestone_white","granite_blue","limestone_blue"},
    shore = "default:ice",
    seabed = "default:sand",
    ocean = "frozen",
    caverealm = caverealms_biomes.glacier,
    dungeon = "limestone_white",
  },

  frost_land = {
    heat = 2,
    humidity = 85,
    y_min = 2,
    y_max = 31000,
    nodes = {
      "frost_land:frost_land_grass", 1,
      "default:dirt", 3,
      "default:ice",
      "default:snow",
    },
    flowers = {},
    mushrooms = {},
    animals = {"fox","owl","turkey","wolf"},
    crops = {},
    stones = {"marble","granite_blue","limestone_blue","limestone_white"},
    shore = "default:ice",
    seabed = "default:sand",
    ocean = "frozen",
    caverealm = caverealms_biomes.glacier,
    dungeon = "limestone_white",
  },

  tundra = {
    heat = 10,
    humidity = 17,
    y_min = 2,
    y_max = 40,
    y_blend = 2,
    nodes = {
      "default:permafrost_with_stones", 1,
      "default:permafrost", 1,
    },
    flowers = {},
    mushrooms = {},
    animals = {},
    crops = {},
    stones = {"limestone_white","limestone_blue","greenstone","granite_green","bluestone"},
    shore = "default:gravel",
    seabed = "default:sand",
    ocean = "bare",
    caverealm = caverealms_biomes.salt,
    dungeon = "limestone_white",
  },

  tundra_highland = {
    heat = 10,
    humidity = 17,
    y_min = 41,
    y_max = 192,
    nodes = {
      "default:permafrost_with_stones", 1,
      "default:permafrost", 1,
      "default:stone",
      "default:snow",
    },
    flowers = {},
    mushrooms = {},
    animals = {},
    crops = {},
    stones = {"limestone_white","limestone_blue","greenstone","granite_green","bluestone"},
    shore = "default:gravel",
    seabed = "default:sand",
    ocean = "bare",
    caverealm = caverealms_biomes.glacier,
    dungeon = "limestone_white",
  },

  silver_sands = {
    heat = 0,
    humidity = 7,
    y_min = 2,
    y_max = 38,
    nodes = {
      "default:silver_sand", 2,
      "default:gravel", 1,
      "default:silver_sandstone",
    },
    flowers = {},
    mushrooms = {},
    animals = {},
    crops = {},
    stones = {"marble","limestone_blue","slate","ilvaite"},
    shore = "default:silver_sand",
    seabed = "default:gravel",
    ocean = "bare",
    caverealm = caverealms_biomes.salt,
    dungeon = {
      node = "default:silver_sandstone",
      alt = "default:silver_sandstone_brick",
      stair = "stairs:stair_silver_sandstone_brick",
    },
  },

  frost = {
    heat = 0,
    humidity = 87,
    y_min = 2,
    y_max = 31000,
    nodes = {
      "ethereal:crystal_dirt", 1,
      "default:dirt", 3,
      "default:ice",
      "default:snow",
    },
    flowers = {},
    mushrooms = {},
    animals = {"fox","owl","turkey","wolf"},
    crops = {"medicinal_plant"},
    stones = {"marble","kyanite","bluestone","limestone_blue"},
    shore = "default:ice",
    seabed = "default:sand",
    ocean = "frozen",
    caverealm = caverealms_biomes.glacier,
    dungeon = "marble",
  },
}

--[[
  Biome groups
]]

asuna.biome_groups = {
  all = {},
  base = {},
  shore = {},
  below = {},
  ocean = {},
}

for biome,def in pairs(asuna.biomes) do
  table.insert(asuna.biome_groups.base,biome)
  table.insert(asuna.biome_groups.all,biome)
end

-- Generate dungeon definitions, shore biomes, and below ground biomes from base biomes
local supplementary_biomes = {}
for biome,def in pairs(asuna.biomes) do
  -- Add to base biome group
  table.insert(asuna.biome_groups.base,biome)

  -- If no dungeon overrides are defined
  if not def.dungeon then
    def.dungeon = {
      node = "default:cobble",
      alt = "default:mossycobble",
      stair = "stairs:stair_cobble",
    }
  elseif type(def.dungeon) == "string" then
    def.dungeon = {
      node = has_stones and ("too_many_stones:" .. def.dungeon .. "_brick") or "default:cobble",
      alt = has_stones and ("too_many_stones:" .. def.dungeon .. "_cracked_brick") or "default:mossycobble",
      stair = has_stones and ("stairs:stair_" .. def.dungeon .. "_brick") or "stairs:stair_cobble",
    }
  end

  -- Generate shore biome if the biome should have a proper shore
  if def.y_min == 2 or def.y_min == 1 then
    local shore_name = biome .. "_shore"
    table.insert(asuna.biome_groups.shore,shore_name)
    supplementary_biomes[shore_name] = {
      heat = def.heat,
      humidity = def.humidity,
      y_min = 0,
      y_max = def.y_min - 1,
      y_blend = 1,
      nodes = {
        def.shore, 1,
        def.shore, 2,
        def.nodes[5] or "default:stone",
      },
      flowers = {},
      mushrooms = {},
      animals = def.ocean == "tropical" and {"tropical_fish"} or {},
      crops = {},
      stones = {},
      shore = def.shore,
      seabed = def.seabed,
      ocean = def.ocean,
      dungeon = def.dungeon,
      caverealm = def.caverealm,
    }
  end

  -- Generate below biome if the biome should have a below biome
  if def.y_min < 100 and def.y_min > -1 then
    local below_name = biome .. "_below"
    local ocean_group_name = "ocean_" .. def.ocean
    table.insert(asuna.biome_groups.below,below_name)

    -- Ocean biome groups
    local ocean_group = asuna.biome_groups[ocean_group_name] or {}
    table.insert(ocean_group,below_name)
    asuna.biome_groups[ocean_group_name] = ocean_group

    supplementary_biomes[below_name] = {
      heat = def.heat,
      humidity = def.humidity,
      y_min = -256,
      y_max = -1,
      nodes = {
        "default:stone", 0,
        "default:stone", 0,
        "default:stone",
      },
      flowers = {},
      mushrooms = {},
      animals = def.ocean == "tropical" and {"bat","tropical_fish"} or {"bat"},
      crops = {},
      stones = def.stones,
      shore = def.shore,
      seabed = def.seabed,
      ocean = def.ocean,
      dungeon = def.dungeon,
      caverealm = def.caverealm,
    }
  end
end

-- Add supplementary biomes
for biome,def in pairs(supplementary_biomes) do
  table.insert(asuna.biome_groups.all,biome)
  asuna.biomes[biome] = def
end

--[[
  Biome feature groups
]]

asuna.features = {
  flowers = {},
  mushrooms = {},
  animals = {},
  crops = {},
  stones = {},
  shore = {},
  seabed = {},
  ocean = {},
  --caverealm = {},
}

for biome,def in pairs(asuna.biomes) do
  for feature,group in pairs(asuna.features) do
    local values = def[feature]
    if type(values) ~= "table" then
      local members = group[values] or {}
      table.insert(members,biome)
      group[values] = members
    else
      for _,value in ipairs(def[feature]) do
        local members = group[value] or {}
        table.insert(members,biome)
        group[value] = members
      end
    end
  end
end

--[[
  Biome support functions
]]

-- Generate a Minetest biome definition from Asuna data
for biome,def in pairs(asuna.biomes) do
  local mtbiomedef = {
    name = biome,
    heat_point = def.heat,
    humidity_point = def.humidity,
    y_min = def.y_min,
    y_max = def.y_max,
    vertical_blend = def.y_blend or 0,
    node_top = def.nodes[1],
    depth_top = def.nodes[2],
    node_filler = def.nodes[3],
    depth_filler = def.nodes[4],
    node_stone = def.nodes[5] or "default:stone",
    node_dust = def.nodes[6],
    node_riverbed = def.seabed,
    node_dungeon = def.dungeon.node,
    node_dungeon_alt = def.dungeon.alt,
    node_dungeon_stair = def.dungeon.stair,
  }
  def.generate_definition = function()
    return mtbiomedef
  end
end

-- Inject a Minetest decoration definition with feature group biome data
for feature,groups in pairs(asuna.features) do
  for group,biomes in pairs(groups) do
    local surface_nodes = {}
    local only_biomes = {}
    for _,biome in ipairs(biomes) do
      surface_nodes[asuna.biomes[biome].nodes[1]] = true
      table.insert(only_biomes,biome)
    end
    local surface_array = {}
    for node,_ in pairs(surface_nodes) do
      table.insert(surface_array,node)
    end
    biomes.inject_decoration = function(mtdecorationdef)
      mtdecorationdef.biomes = mtdecorationdef.biomes or only_biomes
      mtdecorationdef.place_on = mtdecorationdef.place_on or surface_array
      return mtdecorationdef
    end
  end
end

-- Inject a Minetest decoration definition with biome group data
for name,group in pairs(asuna.biome_groups) do
  local surface_nodes = {}
  local only_biomes = {}
  for _,biome in ipairs(group) do
    surface_nodes[asuna.biomes[biome].nodes[1]] = true
    table.insert(only_biomes,biome)
  end
  local surface_array = {}
  for node,_ in pairs(surface_nodes) do
    table.insert(surface_array,node)
  end
  group.inject_decoration = function(mtdecorationdef)
    mtdecorationdef.biomes = mtdecorationdef.biomes or only_biomes
    mtdecorationdef.place_on = mtdecorationdef.place_on or surface_array
    return mtdecorationdef
  end
end

--[[
  Custom biomes
]]

-- Custom biomes
minetest.register_decoration({
  deco_type = "simple",
  decoration = "default:gravel",
  place_on = {"default:silver_sand"},
  biomes = {"silver_sands"},
  y_max = 40,
  y_min = 1,
  fill_ratio = 0.008,
  place_offset_y = -1,
  flags = "force_placement",
  noise_params = {
    offset = -0.001,
    scale = 0.45,
    spread = {x = 100, y = 100, z = 100},
    seed = 354,
    octaves = 3,
    persistence = 1.7,
    lacunarity = 2.0,
    flags = "eased"
  },
})

-- Override biome registration function to add biome ID's to Caverealms biome
-- map and to prevent duplicate biome registrations
local mtrb = minetest.register_biome
minetest.register_biome = function(def)
  if minetest.registered_biomes[def.name] then
    return minetest.get_biome_id(def.name)
  end

  local i = mtrb(def)
  if i then
    asuna.caverealms.biome_map[minetest.get_biome_id(def.name)] = asuna.biomes[def.name].caverealm
  end
  return i
end

-- Register all biomes beginning with base biomes
for _,biome in ipairs(asuna.biome_groups.base) do
  minetest.register_biome(asuna.biomes[biome].generate_definition())
end

for _,biome in ipairs(asuna.biome_groups.shore) do
  minetest.register_biome(asuna.biomes[biome].generate_definition())
end

for _,biome in ipairs(asuna.biome_groups.below) do
  minetest.register_biome(asuna.biomes[biome].generate_definition())
end