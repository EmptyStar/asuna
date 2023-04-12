asuna.decor = {}

--[[
	Flowers
]]

-- Group flowers by color
local flower_colors = {
	black = {
		"flowers:tulip_black",
	},
	white = {
		"beautiflowers:carla",
		"beautiflowers:cloe",
		"beautiflowers:genesis",
		"beautiflowers:gloria",
		"beautiflowers:hadassa",
		"beautiflowers:ingrid",
		"beautiflowers:irene",
		"beautiflowers:iris",
		"beautiflowers:ivette",
		"beautiflowers:michelle",
		"beautiflowers:suri",
		"flowers:dandelion_white",
		"herbs:achillea_white",
		"herbs:leontopodium_white",
		"herbs:leucanthemum_white",
		"herbs:trifolium_white",
	},
	blue = {
		"beautiflowers:beatriz",
		"beautiflowers:berta",
		"flowers:geranium",
		"herbs:centaurea",
		"herbs:campanula_blue",
		"herbs:digitalis_blue",
		"herbs:iris",
		"bakedclay:delphinium",
	},
	cyan = {
		"beautiflowers:thais",
		"beautiflowers:valentina",
		"beautiflowers:valeria",
		"beautiflowers:vera",
		"beautiflowers:victoria",
		"beautiflowers:virginia",
		"beautiflowers:xenia",
		"beautiflowers:zadia",
	},
	orange = {
		"beautiflowers:dafne",
		"beautiflowers:dana",
		"beautiflowers:delia",
		"beautiflowers:elena",
		"beautiflowers:erica",
		"beautiflowers:estela",
		"beautiflowers:eva",
		"beautiflowers:fabiola",
		"beautiflowers:fiona",
		"beautiflowers:gala",
		"flowers:tulip",
	},
	yellow = {
		"beautiflowers:ada",
		"beautiflowers:agnes",
		"beautiflowers:alicia",
		"beautiflowers:alma",
		"beautiflowers:amaia",
		"beautiflowers:anastasia",
		"beautiflowers:any",
		"flowers:dandelion_yellow",
		"flowers:sunflower",
		"herbs:digitalis_yellow",
		"herbs:plantago",
	},
	purple = {
		"beautiflowers:arleth",
		"beautiflowers:astrid",
		"beautiflowers:belen",
		"beautiflowers:blanca",
		"beautiflowers:casandra",
		"beautiflowers:clara",
		"beautiflowers:claudia",
		"beautiflowers:minerva",
		"beautiflowers:miriam",
		"beautiflowers:nazareth",
		"beautiflowers:noemi",
		"beautiflowers:olga",
		"beautiflowers:paula",
		"beautiflowers:regina",
		"beautiflowers:rocio",
		"beautiflowers:sabrina",
		"beautiflowers:vanesa",
		"flowers:viola",
		"beautiflowers:xena",
	},
	red = {
		"beautiflowers:arcoiris",
		"beautiflowers:jennifer",
		"beautiflowers:lara",
		"beautiflowers:laura",
		"beautiflowers:lidia",
		"beautiflowers:lucia",
		"beautiflowers:mara",
		"beautiflowers:martina",
		"beautiflowers:melania",
		"beautiflowers:mireia",
		"beautiflowers:nadia",
		"beautiflowers:nerea",
		"beautiflowers:noelia",
		"flowers:rose",
		"herbs:dosera",
		"herbs:papaver_red",
	},
	pink = {
		"beautiflowers:caroline",
		"beautiflowers:cristina",
		"beautiflowers:diana",
		"beautiflowers:gisela",
		"beautiflowers:olimpia",
		"beautiflowers:oriana",
		"beautiflowers:pia",
		"beautiflowers:raquel",
		"beautiflowers:ruth",
		"beautiflowers:sandra",
		"beautiflowers:sara",
		"beautiflowers:silvia",
		"beautiflowers:sofia",
		"beautiflowers:sonia",
		"beautiflowers:talia",
		"herbs:antirrhinum",
		"herbs:trifolium_red",
		"bakedclay:thistle",
		"bakedclay:lazarus",
	},
	green = {
		"flowers:chrysanthemum_green",
		"beautiflowers:pasto_1",
		"beautiflowers:pasto_2",
		"beautiflowers:pasto_3",
		"beautiflowers:pasto_4",
		"beautiflowers:pasto_5",
		"beautiflowers:pasto_6",
		"beautiflowers:pasto_7",
		"beautiflowers:pasto_8",
		"beautiflowers:pasto_9",
		"beautiflowers:pasto_10",
		"bakedclay:mannagrass",
	},
	red_mushroom = {
		"flowers:mushroom_red",
	},
	brown_mushroom = {
		"flowers:mushroom_brown",
		"herbs:mushroom_boletus",
		"herbs:mushroom_cantharellus",
		"herbs:mushroom_macrolepiota",
	},
	odd_mushroom = {
		"herbs:mushroom_amanita_green",
		"herbs:mushroom_gyromitra",
		"herbs:mushroom_galerina",
	}
}

-- Register flower decorations per biome
local function cf(flowers,mushrooms)
	local decor = {
		flowers = {},
		mushrooms = {},
	}

	-- Generate list of flowers
	for _,flower in ipairs(flowers or {}) do
		for _,flower in ipairs(flower_colors[flower]) do
			table.insert(decor.flowers,flower)
		end
	end

	-- Generate list of mushrooms
	for _,mushroom in ipairs(mushrooms or {}) do
		for _,mushroom in ipairs(flower_colors[mushroom .. "_mushroom"]) do
			table.insert(decor.mushrooms,mushroom)
		end
	end

	return decor
end

local biome_decor = {
	grassland = cf({"blue","cyan","white","red","purple","orange","pink","yellow"}),
	grassytwo = cf({"blue","cyan","white","red","purple","orange","pink","yellow"}),
	dorwinion = cf({"red","white"},{"brown"}),
	savanna = cf({"orange","yellow"}),
	mediterranean = cf({"green","white","purple","black"}),
	alpine = cf({"black","yellow","cyan","white"},{"brown"}),
	outback = cf({"yellow","red","white"}),
	coniferous_forest = cf({"white","green","cyan"}),
	deciduous_forest = cf({"yellow"},{"brown"}),
	sakura = cf({"pink","white","orange"}),
	japaneseforest = cf({"orange","pink","red","purple"}),
	jumble = cf({"yellow","black","green"},{"brown","red"}),
	swamp = cf({"yellow","green","orange","black"},{"brown","red"}),
	marsh = cf({"yellow","green","orange","black"},{"brown","red"}),
	alderswamp = cf({"yellow","green"},{"brown","red","odd"}),
	mesa = cf({"yellow","orange","white"}),
	grove = cf({"blue","orange","black","green"}),
	livingjungle = cf({"purple","green","black"}),
	plains = cf({"yellow","white"}),
	nightshade = cf({"black"},{"odd","red"}),
	badland = cf({},{"brown"}),
}

-- Do actual decoration registration after other mods are finished
minetest.register_on_mods_loaded(function()
	-- Register shore grass
	minetest.register_decoration(asuna.biome_groups.shore.inject_decoration({
		deco_type = "simple",
		place_on = "default:sand",
		decoration = {"default:marram_grass_1","default:marram_grass_2","default:marram_grass_3"},
		y_min = 1,
		y_max = 2,
		sidelen = 16,
		fill_ratio = 0.024,
	}))

	-- Register flowers and mushrooms
	for biome,decor in pairs(biome_decor) do
		-- Valid top nodes
		local top_nodes = {
			"default:dirt",
			"default:dirt_with_grass",
			"default:dry_dirt_with_dry_grass",
			"default:dirt_with_dry_grass",
			"default:dirt_with_rainforest_litter",
			"default:dirt_with_coniferous_litter",
			"naturalbiomes:savannalitter",
			"naturalbiomes:alpine_litter",
			"naturalbiomes:mediterran_litter",
			"naturalbiomes:alderswamp_litter",
			"naturalbiomes:outback_litter",
			"ethereal:grove_dirt",
			"ethereal:bamboo_dirt",
			"livingjungle:jungleground",
			"ethereal:mushroom_dirt",
			"nightshade:nightshade_dirt_with_grass",
			"japaneseforest:japanese_dirt_with_grass",
			"bambooforest:dirt_with_bamboo",
			"dorwinion:dorwinion_grass",
			"badland:badland_grass",
		}

		-- Register flowers
		if #decor.flowers > 0 then
			minetest.register_decoration({
				name = "asuna_core:flowers_" .. biome,
				deco_type = "simple",
				sidelen = 80,
				place_on = top_nodes,
				fill_ratio = 0.011,
				biomes = {biome},
				y_max = 31000,
				y_min = 1,
				decoration = decor.flowers,
			})
		end

		-- Register mushrooms
		if #decor.mushrooms > 0 then
			minetest.register_decoration({
				name = "asuna_core:mushrooms_" .. biome,
				deco_type = "simple",
				sidelen = 80,
				place_on = top_nodes,
				fill_ratio = 0.004,
				biomes = {biome},
				y_max = 31000,
				y_min = 1,
				decoration = decor.mushrooms,
			})
		end
	end

	-- Special sunflower decor for the Plains biome
	minetest.register_decoration({
		name = "asuna_core:plains_special_sunflower",
		deco_type = "simple",
		place_on = {"default:dry_dirt_with_dry_grass"},
		sidelen = 80,
		fill_ratio = 0.075,
		biomes = {"plains"},
		y_max = 31000,
		y_min = 1,
		decoration = "flowers:sunflower",
	})

	-- Special dense flower decor for the Prairie biome
	minetest.register_decoration({
		name = "asuna_core:prairie_special_flowers",
		deco_type = "simple",
		place_on = "prairie:prairie_dirt_with_grass",
		sidelen = 80,
		fill_ratio = 0.265,
		biomes = "prairie",
		y_max = 31000,
		y_min = 1,
		decoration = cf({"blue","cyan","white","orange","yellow"}).flowers,
	})

	-- Special mushroom decor for the Mushroom biome
	minetest.register_decoration({
		name = "asuna_core:mushroom_special_mushrooms",
		deco_type = "simple",
		place_on = "ethereal:mushroom_dirt",
		sidelen = 80,
		fill_ratio = 0.075,
		biomes = "mushroom",
		y_max = 31000,
		y_min = 1,
		decoration = cf({"odd_mushroom","brown_mushroom"}).flowers,
	})

	--[[
		Butterflies
	]]

	if minetest.get_modpath("butterflies") then

		minetest.register_decoration({
			name = "butterflies:butterfly",
			deco_type = "simple",
			place_on = {
				"default:dirt_with_grass",
				"prairie:prairie_dirt_with_grass",
				"dorwinion:dorwinion_grass",
				"ethereal:bamboo_dirt",
			},
			place_offset_y = 2,
			sidelen = 80,
			fill_ratio = 0.005,
			biomes = {
				"grassland",
				"deciduous_forest",
				"grassytwo",
				"prairie",
				"dorwinion",
				"jumble",
				"sakura",
			},
			y_max = 31000,
			y_min = 1,
			decoration = {
				"butterflies:butterfly_white",
				"butterflies:butterfly_red",
				"butterflies:butterfly_violet",
			},
			spawn_by = "group:flower",
			num_spawn_by = 1,
		})
	end

	--[[
		Fireflies
	]]

	if minetest.get_modpath("fireflies") then

		minetest.register_decoration({
			name = "fireflies:firefly_low",
			deco_type = "simple",
			place_on = {
				"default:dirt_with_grass",
				"default:dirt_with_coniferous_litter",
				"default:dirt",
				"prairie:prairie_dirt_with_grass",
				"badland:badland_grass",
				"dorwinion:dorwinion_grass",
				"naturalbiomes:alderswamp_litter",
				"naturalbiomes:alpine_litter",
			},
			place_offset_y = 2,
			sidelen = 16,
			noise_params = {
				offset = -0.005,
				scale = 0.015,
				spread = {x = 60, y = 20, z = 60},
				seed = 2112,
				octaves = 1,
				persistence = 0.75,
				flags = "eased"
			},
			biomes = {
				"deciduous_forest",
				"grassland",
				"grassytwo",
				"prairie",
				"dorwinion",
				"jumble",
				"swamp",
				"marsh",
				"alderswamp",
				"alpine",
			},
			y_max = 31000,
			y_min = -1,
			place_offset_y = 2,
			decoration = "fireflies:hidden_firefly",
		})
	end

	--[[
		Large jungle trees
	]]
	local chunksize = tonumber(minetest.get_mapgen_setting("chunksize"))
	if chunksize >= 5 then
		minetest.register_decoration({
			name = "default:emergent_jungle_tree",
			deco_type = "schematic",
			place_on = {
				"default:dirt_with_rainforest_litter",
				"bambooforest:dirt_with_bamboo",
			},
			sidelen = 80,
			noise_params = {
				offset = 0.0,
				scale = 0.0025,
				spread = {x = 200, y = 200, z = 200},
				seed = 2685,
				octaves = 3,
				persist = 0.7
			},
			biomes = {"junglee","bambooforest"},
			y_max = 30000,
			y_min = 1,
			schematic = minetest.get_modpath("default") .. "/schematics/emergent_jungle_tree.mts",
			flags = "place_center_x, place_center_z",
			rotation = "random",
			place_offset_y = -4,
		})
	end

	--[[
		Hanging vines
	]]

	local soil_nodes = {}
	for _,soil_node in ipairs({
		"default:dirt",
		"default:dirt_with_grass",
		"default:dirt_with_rainforest_litter",
		"livingjungle:jungleground",
		"livingjungle:leafyjungleground",
		"bambooforest:dirt_with_bamboo",
		"naturalbiomes:alderswamp_litter",
		"naturalbiomes:alderswamp_dirt",
		"default:tree",
		"default:jungletree",
	}) do
		soil_nodes[minetest.get_content_id(soil_node)] = true
	end

	local cids = {
		air = minetest.get_content_id("air"),
		vine = minetest.get_content_id("ethereal:vine"),
		water = minetest.get_content_id("default:water_source"), -- used for waterfalls below; unrelated to vines
		water_flowing = minetest.get_content_id("default:water_flowing"), -- used for cave liquids below; unrelated to vines
		lava = minetest.get_content_id("default:lava_source"), -- used for cave liquids below; unrelated to vines
		lava_flowing = minetest.get_content_id("default:lava_flowing"), -- used for cave liquids below; unrelated to vines
		stone = minetest.get_content_id("default:stone"),
	}

	abdecor.register_advanced_decoration("asuna_hanging_vines",{
		target = {
			place_on = {
				"group:stone",
				"default:dirt",
			},
			spawn_by = "air",
			num_spawn_by = 5,
			sidelen = 80,
			fill_ratio = 0.3,
			biomes = {
				"swamp",
				"alderswamp",
				"marsh",
				"junglee",
				"bambooforest",
				"jumble",
				"livingjungle",
			},
			y_max = 31000,
			y_min = 1,
			flags = "all_ceilings",
		},
	  fn = function(mapgen)
			-- Get provided values
			local pos = mapgen.pos
			local va = mapgen.voxelarea
			local vdata = mapgen.data
			local vparam2 = mapgen.param2

			-- Get stride values and set position
			local ystride = va.ystride
			local zstride = va.zstride
			pos = va:index(pos.x,pos.y,pos.z)

			-- Scan for dirt or surface nodes for a short distance above the position
			for above = 1, 2 do
				above = pos + above * ystride
				if soil_nodes[vdata[above]] then
					pos = above
					break
				end
			end

			-- List of cardinal directions relative to the current position
			local cardinal = {
				pos - 1,
				pos + 1,
				pos - zstride,
				pos + zstride,
			}

			-- Iterate over cardinal positions and place vines at and below those positions
			for i = 1, 4 do
				local dir = cardinal[i]
				if vdata[dir] == cids.air then
					for below = 0, ((dir ^ 2 + (dir + pos) % 3) % 4 + 2) do
						below = dir - below * ystride
						if vdata[below] == cids.air then
							vdata[below] = cids.vine
							vparam2[below] = i + 1
						else
							break
						end
					end
				end
			end
		end,
		flags = {
			param2 = true,
		},
	})

	--[[
		Ocean waterfalls
	]]

	local wall_stones = {
		"default:stone",
		"default:desert_stone",
		"default:sandstone",
		"default:silver_sandstone",
		"dorwinion:dorwinion",
		"naturalbiomes:mediterran_rock",
		"naturalbiomes:alpine_rock",
		"default:stone_with_coal",
		"default:stone_with_iron",
		"default:stone_with_tin",
		"default:stone_with_copper",
		"default:stone_with_gold",
		"default:stone_with_diamond",
		"default:stone_with_mese",
		"too_many_stones:glow_apatite",
		"too_many_stones:glow_calcite",
		"too_many_stones:glow_esperite",
		"too_many_stones:glow_fluorite",
		"too_many_stones:glow_selenite",
		"too_many_stones:glow_sodalite",
		"too_many_stones:glow_willemite",
		"too_many_stones:agate_blue",
		"too_many_stones:agate_gray",
		"too_many_stones:agate_green",
		"too_many_stones:agate_moss",
		"too_many_stones:agate_orange",
		"too_many_stones:agate_purple",
		"too_many_stones:agate_red",
		"too_many_stones:amazonite",
		"too_many_stones:amber",
		"too_many_stones:amethyst",
		"too_many_stones:andesite",
		"too_many_stones:basalt",
		"too_many_stones:basalt_columnar",
		"too_many_stones:black_opal",
		"too_many_stones:calcite",
		"too_many_stones:carnotite",
		"too_many_stones:celestine",
		"too_many_stones:chrysoprase",
		"too_many_stones:citrine",
		"too_many_stones:covellite",
		"too_many_stones:crocoite",
		"too_many_stones:erythrite",
		"too_many_stones:eudialite",
		"too_many_stones:fire_opal",
		"too_many_stones:gabbro",
		"too_many_stones:galena",
		"too_many_stones:granite_black",
		"too_many_stones:granite_blue",
		"too_many_stones:granite_gray",
		"too_many_stones:granite_green",
		"too_many_stones:granite_pink",
		"too_many_stones:granite_red",
		"too_many_stones:granite_white",
		"too_many_stones:heliodor",
		"too_many_stones:howlite",
		"too_many_stones:ilvaite",
		"too_many_stones:jade",
		"too_many_stones:kyanite",
		"too_many_stones:lapis_lazuli",
		"too_many_stones:limestone_blue",
		"too_many_stones:limestone_white",
		"too_many_stones:marble",
		"too_many_stones:mudstone",
		"too_many_stones:opal",
		"too_many_stones:prasiolite",
		"too_many_stones:pumice",
		"too_many_stones:pyrite",
		"too_many_stones:quartz",
		"too_many_stones:rose_quartz",
		"too_many_stones:scoria",
		"too_many_stones:serpentine",
		"too_many_stones:slate",
		"too_many_stones:slate_tile",
		"too_many_stones:soapstone",
		"too_many_stones:sodalite",
		"too_many_stones:sugilite",
		"too_many_stones:travertine",
		"too_many_stones:tuff_beige",
		"too_many_stones:tuff_grey",
		"too_many_stones:tuff_red",
		"too_many_stones:turquoise",
		"too_many_stones:vivianite",
	}
	local valid_wall_stones = {}
	for _,node in ipairs(wall_stones) do
		valid_wall_stones[minetest.get_content_id(node)] = true
	end

	abdecor.register_advanced_decoration("asuna_waterfalls",{
		target = {
			place_on = "default:water_source",
			spawn_by = wall_stones,
			num_spawn_by = 3,
			sidelen = 80,
			fill_ratio = 0.11,
			biomes = asuna.biome_groups.shore,
			y_max = 1,
			y_min = 1,
			flags = "liquid_surface",
		},
		fn = function(mapgen)
			-- Get provided values
			local pos = mapgen.pos
			local va = mapgen.voxelarea
			local vdata = mapgen.data

			-- Get stride values and adjust position
			local ystride = va.ystride
			local zstride = va.zstride
			pos = va:index(pos.x,pos.y + 1,pos.z)
			local too_low_pos = 0

			-- Get stone wall direction
			local cardinal = {
				-1,
				-zstride,
				1,
				zstride,
			}

			local found_stone = false
			local check_wall = nil
			for i = 1, 4 do
				local wallpos = pos + cardinal[i]
				local wallleft = cardinal[i % 4 + 1]
				local wallright = cardinal[(i + 2) % 4 + 1]
				check_wall = function(pos) -- is the entire row of wall nodes made of stone?
					return valid_wall_stones[vdata[pos]] and valid_wall_stones[vdata[pos + wallleft]] and valid_wall_stones[vdata[pos + wallright]] and true or false
				end
				if check_wall(wallpos) then
					pos = wallpos
					too_low_pos = pos
					found_stone = true
					break
				end
			end

			-- Do nothing if no stone wall found
			if not found_stone then
				return
			end

			-- Iterate above 'rows' of stone wall until we find something that isn't stone
			repeat
				pos = pos + ystride
			until not check_wall(pos)

			-- Set two below stone position to water if higher than one node
			local placepos = pos - 2 * ystride
			if placepos > too_low_pos then
				vdata[placepos] = cids.water
			end
		end,
		flags = {
			liquid = true,
		},
	})

	--[[
		Cave ceiling liquids
	]]

	local enclosing_nodes = valid_wall_stones

	abdecor.register_advanced_decoration("asuna_cave_liquids",{
		target = {
			place_on = {
				"group:stone",
			},
			sidelen = 80,
			spawn_by = {
				"group:stone",
			},
			num_spawn_by = 9,
			fill_ratio = 0.000015,
			y_max = -30,
			y_min = -31000,
			flags = "all_ceilings",
		},
		fn = function(mapgen)
			-- Get provided values
			local va = mapgen.voxelarea
			local vdata = mapgen.data
			local vparam2 = mapgen.param2
			local pos = mapgen.pos

			-- Get stride values and set position
			local ystride = va.ystride
			local zstride = va.zstride
			local pos = va:index(pos.x,pos.y,pos.z)

			-- Liquid must be enclosed to its sides and above
			for _,adjacent in ipairs({
				ystride,
				1,
				-1,
				zstride,
				-zstride,
			}) do
				if not enclosing_nodes[vdata[pos + adjacent]] then
					return -- liquid is not fully enclosed
				end
			end

			-- Liquid must have sufficient clearance below
			-- Scanning from bottom up should typically fail faster than top down
			for below = pos - ystride * 8, pos - ystride, ystride do
				if vdata[below] ~= minetest.CONTENT_AIR then
					return -- not enough space between ceiling and ground
				end
			end

			-- Fill the position and all air below with liquid based on climate + bias
			-- Dry/hot climates are more likely to be lava, vice-versa with water
			local liquid = (function()
				local heatmap = minetest.get_mapgen_object("heatmap") or {}
				local humiditymap = minetest.get_mapgen_object("humiditymap") or {}
				local pos2d = mapgen.index2d(mapgen.pos)
				local heat = heatmap[pos2d] or 50
				local humidity = humiditymap[pos2d] or 50
				local climate = 50 + (heat / 2 - 25) - (humidity / 2 - 25)
				local pos_random = (pos ^ 2 + pos) % 38 * (pos % 2 == 0 and 1 or -1) + climate -- not actually random but good enough
				return pos_random > 56 and {cids.lava,cids.lava_flowing} or {cids.water,cids.water_flowing} -- bias in favor of water
			end)()
			vdata[pos] = liquid[1]
			pos = pos - ystride
			while vdata[pos] == minetest.CONTENT_AIR do
				vdata[pos] = liquid[2]
				vparam2[pos] = 15
				pos = pos - ystride
			end
		end,
		flags = {
			liquid = true,
			param2 = true,
		},
	})
end)