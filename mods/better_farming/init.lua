local path = minetest.get_modpath("better_farming")
local seed = 67789

-- Global
better_farming = {
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	register_plant = function(name,steps,fertility)
		-- Get lowercase name
		local lower = name:lower():gsub(" ","_")

		-- Generate fertility groups
		local groups = { flammable = 2 }
		for _,soil in ipairs(fertility) do
			groups[soil] = 1
		end

		-- Add to registered_plants
		farming.register_plant("better_farming:" .. lower,{
			description = name .. " Seed",
			harvest_description = name,
			inventory_image = "better_farming_" .. lower .. "_seed.png",
			minlight = better_farming.minlight,
			maxlight = better_farming.maxlight,
			steps = steps,
			groups = groups,
			fertility = fertility,
		})

		-- Register crop biome decoration
		local node = "better_farming:" .. lower .. "_" .. steps
		minetest.register_decoration(asuna.features.crops[lower].inject_decoration({
			name = node,
			deco_type = "simple",
			sidelen = 8,
			noise_params = {
				offset = -0.4125,
				scale = 0.3575,
				spread = {x = 14, y = 14, z = 14},
				seed = seed,
				octaves = 2,
				persist = 0.62,
				lacunarity = 0.675,
			},
			y_max = 31000,
			y_min = 1,
			decoration = node,
			param2 = 3,
		}))

		-- Increment seed
		seed = seed + 43
	end
}




	dofile(path .. "/crops/carrot.lua")----Carrot-1
	dofile(path .. "/crops/onion.lua")----Onion-2
	dofile(path .. "/crops/strawberry.lua")----Strawberry-3
	dofile(path .. "/crops/tomatoes.lua")----Tomatoes-4
	dofile(path .. "/crops/chilie.lua")----Chilie-5
	dofile(path .. "/crops/pepper.lua")----Peper-6
	dofile(path .. "/crops/rice.lua")----Rice-7
	dofile(path .. "/crops/cabbage.lua")----Cabbage-8
	dofile(path .. "/crops/potatoes.lua")----Potatoes-9
	dofile(path .. "/crops/asparagus.lua")----Asparagus-10
	dofile(path .. "/crops/eggplants.lua")----Eggplants-11
	dofile(path .. "/crops/spinach.lua")----Spinach-12
	dofile(path .. "/crops/corn.lua")----Corn-13
	dofile(path .. "/crops/beetroot.lua")----Beetroot-14
	dofile(path .. "/crops/medicinal_plant.lua")----Medicinal Plant-15
	dofile(path .. "/crops/ginger.lua")----Ginger-16
	dofile(path .. "/crops/candy.lua")---Candy-17
	dofile(path .. "/crops/mint.lua")---Mint-18
	dofile(path .. "/crops/agave.lua")---Agave-19
	dofile(path .. "/crops/cassava.lua")---Cassava-20
	dofile(path .. "/crops/cucumber.lua")---Cucumber-21
	dofile(path .. "/crops/kale.lua")---Kale-22
	dofile(path .. "/crops/jute.lua")---Jute-23
	dofile(path .. "/crops/yucca.lua")---Yucca-24
	dofile(path .. "/crops/aloe.lua")---Aloe-25
	dofile(path .. "/crops/millet.lua")---millet-25
	dofile(path .. "/crops/spiceleaf.lua")---Spiceleaf-26
	dofile(path .. "/crops/bokchoy.lua")---Bokchoy-27
	dofile(path .. "/crops/adzuki.lua")---Adzuki-27
	dofile(path .. "/crops/sisal.lua")---Sisal-28

----------------------------------------------------------------
	
    dofile(path .. "/hunger_ng.lua")
    dofile(path .. "/crafting.lua")
    dofile(path .. "/nodes.lua")
    dofile(path .. "/bonemeal.lua")
    dofile(path .. "/awards.lua")
    dofile(path .. "/moreblocks.lua")



