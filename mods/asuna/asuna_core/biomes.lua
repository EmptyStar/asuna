--[[
  Biome definitions
]]

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
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "bare",
    cave = "none",
  },

  grassland = {
    heat = 50,
    humidity = 51,
    y_min = 4,
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
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "bamboo",
  },

  underground = {
    heat = 50,
    humidity = 50,
    y_min = -31000,
    y_max = -31000,
    nodes = {
      "default:stone", 1,
      "default:stone", 1,
    },
    flowers = {},
    mushrooms = {},
    animals = {"bat"},
    crops = {},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "bare",
     -- is overridden in Caverealms biome selection
    cave = "none", -- will probably not exist in mapgen
  },

  plains = {
    heat = 56,
    humidity = 32,
    y_min = 4,
    y_max = 92,
    y_blend = 4,
    nodes = {
      "default:dry_dirt_with_dry_grass", 1,
      "default:dry_dirt", 3,
    },
    flowers = {"yellow","white"},
    mushrooms = {},
    animals = {"chicken","horse","pig"},
    crops = {"corn","millet","wheat","cotton"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "dry",
    dungeon = "travertine",
  },

  prairie = {
    heat = 42,
    humidity = 47,
    y_min = 4,
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
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "dorwinion",
  },

  dorwinion = {
    heat = 49,
    humidity = 42,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "dorwinion:dorwinion_grass", 1,
      "dorwinion:dorwinion", 3,
    },
    flowers = {"red","white"},
    mushrooms = {"brown"},
    animals = {"owl","rat","bird"},
    crops = {"cucumber","strawberry"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    dungeon = {
      node = "dorwinion:dorwinion_brick_with_moss",
      alt = "dorwinion:dorwinion_brick",
      stair = "stairs:stair_dorwinion_brick",
    },
    cave = "dorwinion",
  },

  quicksand = {
    heat = 72,
    humidity = 92,
    y_min = 0,
    y_max = 0,
    nodes = {
      "ethereal:quicksand2", 2,
      "ethereal:quicksand2", 2,
    },
    flowers = {},
    mushrooms = {},
    animals = {},
    crops = {},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "fungal",
    dungeon = "mudstone",
    y_blend = 1,
  },

  alpine = {
    heat = 25,
    humidity = 36,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "naturalbiomes:alpine_litter", 1,
      "naturalbiomes:alpine_rock", 32,
    },
    flowers = {"black","yellow","cyan","white"},
    mushrooms = {"brown"},
    animals = {"fox","owl","pig","sheep","turkey","wolf"},
    crops = {"spinach","beetroot","potatoes","kale","onion"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "cold",
    cave = "moss",
    dungeon = "granite_white",
  },

  desert = {
    heat = 52,
    humidity = 11,
    y_min = 4,
    y_max = 31000,
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
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    dungeon = {
      node = "default:sandstonebrick",
      alt = "default:sandstonebrick",
      stair = "stairs:stair_sandstonebrick",
    },
    cave = "coal",
  },

  fiery = {
    heat = 86,
    humidity = 3,
    y_min = 4,
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
    shore = "default:sandstone",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "fire",
    dungeon = "basalt",
  },

  everness_forsaken_desert = {
    heat = 85,
    humidity = 12,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "everness:forsaken_desert_sand", 1,
      "everness:forsaken_desert_sand", 1,
      "everness:forsaken_desert_stone",
    },
    flowers = {},
    mushrooms = {},
    animals = {},
    crops = {},
    shore = "everness:dry_ocean_dirt",
    seabed = "everness:dry_ocean_dirt",
    ocean = "forsaken_desert",
    cave = "forsaken_desert",
    dungeon = {
      node = "everness:forsaken_desert_brick",
      alt = "everness:forsaken_desert_brick_red",
      stair = "stairs:stair_forsaken_desert_brick",
    },
  },

  outback = {
    heat = 87,
    humidity = 29,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "naturalbiomes:outback_litter", 1,
      "naturalbiomes:outback_ground", 32,
      "default:desert_stone",
    },
    flowers = {"yellow","red","white"},
    mushrooms = {},
    animals = {"horse","bird"},
    crops = {"aloe","agave","sisal","millet"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "forsaken_desert",
    dungeon = "gabbro",
  },

  sandstone = {
    heat = 74,
    humidity = 7,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "default:sand", 1,
      "default:sandstone", 32,
      "default:desert_stone",
    },
    flowers = {},
    mushrooms = {},
    animals = {},
    crops = {"agave","yucca","chilie"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "coal",
    dungeon = {
      node = "default:sandstonebrick",
      alt = "default:sandstonebrick",
      stair = "stairs:stair_sandstonebrick",
    },
  },

  savanna = {
    heat = 57,
    humidity = 29,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "naturalbiomes:savannalitter", 1,
      "default:dirt", 3,
    },
    flowers = {"orange","yellow"},
    mushrooms = {},
    animals = {"horse","cat","chicken"},
    crops = {"aloe","yucca","jute","millet","cotton"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "dry",
    dungeon = "travertine",
  },

  mediterranean = {
    heat = 89,
    humidity = 32,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "naturalbiomes:mediterran_litter", 1,
      "naturalbiomes:mediterran_rock", 16,
    },
    flowers = {"green","white","purple","black"},
    mushrooms = {},
    animals = {"bird","cat","chicken"},
    crops = {"aloe","chilie","yucca","jute","pepper","millet","cotton"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "dry",
    dungeon = "marble",
  },

  mushroom = {
    heat = 70,
    humidity = 100,
    y_min = 4,
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
    shore = "default:clay",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "fungal",
    dungeon = "sugilite",
  },

  swamp = {
    heat = 73,
    humidity = 74,
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
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "fungal",
    dungeon = {
      node = "default:mossycobble",
      alt = "default:mossycobble",
      stair = "stairs:stair_mossycobble",
    },
  },

  marsh = {
    heat = 71,
    humidity = 99,
    y_min = 1,
    y_max = 24,
    y_blend = 4,
    nodes = {
      "default:dirt_with_grass", 1,
      "default:dirt", 3,
    },
    flowers = {"yellow","green","orange","black"},
    mushrooms = {"brown","red"},
    animals = {"frog"},
    crops = {"rice","mint"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "fungal",
    dungeon = {
      node = "default:mossycobble",
      alt = "default:mossycobble",
      stair = "stairs:stair_mossycobble",
    },
  },

  --[[everness_bamboo_forest = {
    heat = 50,
    humidity = 98,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "everness:dirt_with_grass_1", 1,
      "everness:dirt_1", 3,
    },
    flowers = {"purple","orange"},
    mushrooms = {"brown","odd"},
    animals = {"bird","cat","chicken","frog","pig","rat"},
    crops = {"cassava","pepper","mint"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "tropical",
    
    dungeon = {
      node = "everness:bamboo_wood",
      alt = "everness:bamboo_mosaic_wood",
      stair = "stairs:stair_bamboo_wood",
    },
  },]]

  bambooforest = {
    heat = 48,
    humidity = 99,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "bambooforest:dirt_with_bamboo", 1,
      "default:dirt", 3,
    },
    flowers = {"purple","orange"},
    mushrooms = {"brown","red"},
    animals = {"bird","cat","chicken","frog","pig","rat"},
    crops = {"cassava","pepper","mint","ginger"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "bamboo",
    dungeon = "granite_gray",
  },

  japaneseforest = {
    heat = 36,
    humidity = 74,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "japaneseforest:japanese_dirt_with_grass", 1,
      "default:dirt", 3,
    },
    flowers = {"orange","pink","red","purple"},
    mushrooms = {},
    animals = {"fox","owl","rat"},
    crops = {"adzuki","bokchoy","ginger"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "bamboo",
    dungeon = "howlite",
  },

  palmbeach = {
    heat = 95,
    humidity = 55,
    y_min = 1,
    y_max = 4,
    nodes = {
      "naturalbiomes:palmbeach_sand", 1,
      "default:sandstone", 3,
    },
    flowers = {},
    mushrooms = {},
    animals = {"bird"},
    crops = {},
    shore = "naturalbiomes:palmbeach_sand",
    seabed = "default:sand",
    ocean = "tropical",
    cave = "moss",
    dungeon = "travertine",
  },

  nightshade = {
    heat = 26,
    humidity = 68,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "nightshade:nightshade_dirt_with_grass", 1,
      "default:dirt", 3,
    },
    flowers = {"black"},
    mushrooms = {"odd","red"},
    animals = {"bat"},
    crops = {"potatoes"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "coral_forest",
    dungeon = "soapstone",
  },

  grassytwo = {
    heat = 37,
    humidity = 41,
    y_min = 4,
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
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "moss",
  },

  mesa = {
    heat = 36,
    humidity = 17,
    y_min = 4,
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
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "dry",
    dungeon = {
      node = "default:sandstonebrick",
      alt = "default:sandstonebrick",
      stair = "stairs:stair_sandstonebrick",
    },
  },

  jumble = {
    heat = 56,
    humidity = 92,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "default:dirt_with_grass", 1,
      "default:dirt", 3,
    },
    flowers = {"yellow","green","orange","black"},
    mushrooms = {"brown","red","odd"},
    animals = {"frog","owl","rat"},
    crops = {"cucumber","spinach","eggplants","cabbage","onion"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "mushroom",
    dungeon = {
      node = "default:mossycobble",
      alt = "default:mossycobble",
      stair = "stairs:stair_mossycobble",
    },
  },

  deciduous_forest = {
    heat = 36,
    humidity = 52,
    y_min = 4,
    y_max = 192,
    nodes = {
      "default:dirt_with_grass", 1,
      "default:dirt", 3,
    },
    flowers = {"blue","white","yellow"},
    mushrooms = {"brown"},
    animals = {"chicken","pig","owl","rat"},
    crops = {"cucumber","spinach","eggplants","cabbage","onion"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "bamboo",
  },

  sakura = {
    heat = 39,
    humidity = 75,
    y_min = 4,
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
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "bamboo",
    dungeon = "howlite",
  },

  junglee = {
    heat = 85,
    humidity = 69,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "default:dirt_with_rainforest_litter", 1,
      "default:dirt", 3,
    },
    flowers = {"blue","purple","orange","black"},
    mushrooms = {"brown","odd"},
    animals = {"bird","cat","chicken","pig","rat","frog"},
    crops = {"spiceleaf","sisal","cassava","pepper","mint"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "tropical",
    cave = "bamboo",
    dungeon = "serpentine",
  },

  livingjungle = {
    heat = 91,
    humidity = 94,
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
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "tropical",
    cave = "bamboo",
    dungeon = "serpentine",
  },

  grove = {
    heat = 85,
    humidity = 68,
    y_min = 4,
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
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "tropical",
    cave = "moss",
    dungeon = "mudstone",
  },

  alderswamp = {
    heat = 56,
    humidity = 78,
    y_min = 1,
    y_max = 31000,
    y_blend = 4,
    nodes = {
      "naturalbiomes:alderswamp_litter", 1,
      "naturalbiomes:alderswamp_dirt", 3,
    },
    flowers = {"yellow","green"},
    mushrooms = {"brown","red","odd"},
    animals = {"frog","owl","rat"},
    crops = {"rice","mint","asparagus"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "temperate",
    cave = "fungal",
    dungeon = {
      node = "default:mossycobble",
      alt = "default:mossycobble",
      stair = "stairs:stair_mossycobble",
    },
  },

  badland = {
    heat = 19,
    humidity = 65,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "badland:badland_grass", 1,
      "default:dirt", 3,
    },
    flowers = {},
    mushrooms = {"brown"},
    animals = {"chicken","fox","owl","pig","rat","turkey","bat"},
    crops = {"carrot","beetroot","potatoes","corn","kale","wheat"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "cold",
    cave = "cursed_lands",
    dungeon = "slate",
  },

  coniferous_forest = {
    heat = 12,
    humidity = 50,
    y_min = 4,
    y_max = 48,
    nodes = {
      "default:dirt_with_coniferous_litter", 1,
      "default:dirt", 3,
    },
    flowers = {"white","green","cyan"},
    mushrooms = {"brown"},
    animals = {"fox","owl","sheep","turkey","wolf"},
    crops = {"carrot","potatoes","kale","onion"},
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "cold",
    cave = "moss",
    dungeon = "granite_white",
  },

  taiga = {
    heat = 12,
    humidity = 50,
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
    shore = "default:sand",
    seabed = "default:sand",
    ocean = "cold",
    cave = "moss",
    dungeon = "granite_white"
  },

  glacier = {
    heat = 2,
    humidity = 51,
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
    shore = "default:cave_ice",
    seabed = "default:sand",
    ocean = "frozen",
    cave = "frosted_icesheet",
    dungeon = "howlite",
  },

  frost_land = {
    heat = 19,
    humidity = 87,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "frost_land:frost_land_grass", 1,
      "default:dirt", 3,
      "default:cave_ice",
      "default:snow",
    },
    flowers = {},
    mushrooms = {},
    animals = {"fox","owl","turkey","wolf"},
    crops = {},
    shore = "default:cave_ice",
    seabed = "default:sand",
    ocean = "frozen",
    cave = "frosted_icesheet",
    dungeon = "granite_blue",
  },

  tundra = {
    heat = 11,
    humidity = 16,
    y_min = 4,
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
    shore = "default:gravel",
    seabed = "default:sand",
    ocean = "bare",
    cave = "frosted_icesheet",
    dungeon = "granite_gray",
  },

  tundra_highland = {
    heat = 12,
    humidity = 16,
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
    shore = "default:gravel",
    seabed = "default:sand",
    ocean = "bare",
    cave = "frosted_icesheet",
    dungeon = "granite_black",
  },

  everness_forsaken_tundra = {
    heat = 13,
    humidity = 10,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "everness:forsaken_tundra_dirt", 1,
      "everness:forsaken_tundra_dirt", 1,
      "everness:forsaken_tundra_stone",
    },
    flowers = {},
    mushrooms = {},
    animals = {},
    crops = {},
    shore = "everness:forsaken_tundra_beach_sand",
    seabed = "everness:forsaken_tundra_beach_sand",
    ocean = "forsaken_tundra",
    cave = "forsaken_tundra",
    dungeon = {
      node = "everness:forsaken_tundra_cobble",
      alt = "everness:forsaken_tundra_brick",
      stair = "stairs:stair_forsaken_tundra_cobble",
    },
  },

  frost = {
    heat = 3,
    humidity = 97,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "ethereal:crystal_dirt", 1,
      "default:dirt", 3,
      "default:cave_ice",
      "default:snow",
    },
    flowers = {},
    mushrooms = {},
    animals = {"fox","owl","turkey","wolf"},
    crops = {"medicinal_plant"},
    shore = "default:cave_ice",
    seabed = "default:sand",
    ocean = "frozen",
    cave = "crystal_forest",
    dungeon = "granite_blue",
  },

  everness_frosted_icesheet = {
    heat = 1,
    humidity = 59,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "everness:frosted_snowblock", 1,
      "everness:frosted_snowblock", 3,
      "everness:frosted_cave_ice",
    },
    flowers = {},
    mushrooms = {},
    animals = {},
    crops = {},
    shore = "default:cave_ice",
    seabed = "default:cave_ice",
    ocean = "frosted_icesheet",
    cave = "frosted_icesheet",
    dungeon = {
      node = "everness:icecobble",
      alt = "everness:snowcobble",
      stair = "stairs:stair_ice",
    },
  },

  everness_cursed_lands = {
    heat = 59,
    humidity = 80,
    y_min = 1,
    y_max = 31000,
    nodes = {
      "everness:dirt_with_cursed_grass", 1,
      "everness:cursed_dirt", 3,
      "everness:cursed_stone_carved",
    },
    flowers = {"black","green"},
    mushrooms = {"red"},
    animals = {"bat"},
    crops = {},
    shore = "everness:cursed_stone",
    seabed = "everness:cursed_stone",
    deep_seabed = "everness:cursed_lands_deep_ocean_sand",
    ocean = "cursed_lands",
    cave = "cursed_lands",
    dungeon = {
      node = "everness:cursed_brick",
      alt = "everness:cursed_brick_with_growth",
      stair = "stairs:stair_cursed_brick",
    },
  },

  everness_crystal_forest = {
    heat = 22,
    humidity = 98,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "everness:dirt_with_crystal_grass", 1,
      "everness:crystal_dirt", 3,
      "everness:crystal_stone",
    },
    flowers = {},
    mushrooms = {},
    animals = {},
    crops = {},
    shore = "everness:crystal_sand",
    seabed = "everness:crystal_sand",
    deep_seabed = "everness:crystal_forest_deep_ocean_sand",
    ocean = "crystal_forest",
    cave = "crystal_forest",
    dungeon = {
      node = "everness:crystal_cobble",
      alt = "everness:crystal_stone_brick",
      stair = "everness:stair_crystal_cobble",
    },
  },

  everness_coral_forest = {
    heat = 24,
    humidity = 74,
    y_min = 4,
    y_max = 31000,
    nodes = {
      "everness:dirt_with_coral_grass", 1,
      "everness:coral_dirt", 3,
      "everness:coral_desert_stone",
    },
    flowers = {},
    mushrooms = {},
    animals = {},
    crops = {},
    shore = "everness:coral_white_sand",
    seabed = "everness:coral_white_sand",
    deep_seabed = "everness:coral_forest_deep_ocean_sand",
    ocean = "coral_forest",
    cave = "coral_forest",
    dungeon = {
      node = "everness:coral_desert_stone_block",
      alt = "everness:coral_desert_stone_brick",
      stair = "stairs:stair_coral_desert_stone_block",
    },
  }
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

-- Generate dungeon definitions, shore biomes, and below ground biomes from base biomes
local supplementary_biomes = {}
for biome,def in pairs(asuna.biomes) do
  -- Add to base biome group
  table.insert(asuna.biome_groups.base,biome)
  table.insert(asuna.biome_groups.all,biome)

  -- If no dungeon overrides are defined
  if not def.dungeon then
    def.dungeon = {
      node = "default:cobble",
      alt = "default:mossycobble",
      stair = "stairs:stair_cobble",
    }
  elseif type(def.dungeon) == "string" then
    def.dungeon = {
      node = "too_many_stones:" .. def.dungeon .. "_brick",
      alt = "too_many_stones:" .. def.dungeon .. "_cracked_brick",
      stair = "stairs:stair_" .. def.dungeon .. "_brick",
    }
  end

  -- If no deep seabed is defined
  if not def.deep_seabed then
    def.deep_seabed = def.seabed
  end

  -- Generate shore biome if the biome should have a proper shore
  if def.y_min <= 4 and def.y_min >= 1 then
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
        def.nodes[5] or "default:stone", def.nodes[4] - 1,
        def.nodes[5] or "default:stone",
      },
      flowers = {},
      mushrooms = {},
      animals = def.ocean == "tropical" and {"tropical_fish"} or {},
      crops = {},
      shore = def.shore,
      seabed = def.seabed,
      deep_seabed = def.deep_seabed,
      ocean = def.ocean,
      dungeon = def.dungeon,
      cave = def.cave,
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
      y_min = -31000,
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
      shore = def.shore,
      seabed = def.seabed,
      deep_seabed = def.deep_seabed,
      ocean = def.ocean,
      dungeon = def.dungeon,
      cave = def.cave,
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
  shore = {},
  seabed = {},
  ocean = {},
  cave = {},
  --
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

-- Override biome registration function to prevent duplicate biome registrations
local mtrb = minetest.register_biome
minetest.register_biome = function(def)
  if minetest.registered_biomes[def.name] then
    return minetest.get_biome_id(def.name)
  else
    return mtrb(def)
  end
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