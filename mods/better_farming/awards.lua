



if minetest.get_modpath("awards") then

	awards.register_award("the_month_of_harvest",{
		title = "The month of harvest",
		description = "Harvest 500 Corn Plant",
		icon = "awards_the_month_of_harvest.png",
		trigger = {
			type = "dig",
			node = "better_farming:corn_8",
			target = 500
		}
	})

	awards.register_award("the_month_of_harvest_2",{
		title = "The month of harvest_2",
		description = "Harvest 500 Tomato Plant",
		icon = "awards_the_month_of_harvest_2.png",
		trigger = {
			type = "dig",
			node = "better_farming:tomatoes_5",
			target = 500
		}
	})

	awards.register_award("storing_crops",{
		title = "Storing crops",
		description = "Craft 50 Onion Crate",
		icon = "awards_storing_crops.png",
		difficulty = 0.2,
		trigger = {
			type = "craft",
			item = "better_farming:onion_crate",
			target = 50
		}
	})

	awards.register_award("tomatoes_are_good",{
		title = "Tomatoes are good",
		description = "Craft 50 Jar Of Tomato",
		icon = "awards_tomatoes_are_good.png",
		difficulty = 0.2,
		trigger = {
			type = "craft",
			item = "better_farming:tomato_juice",
			target = 50
		}
	})

	awards.register_award("gingerbread_man",{
		title = "Army of GingerBread Man",
		description = "Craft 50 GingerBread Man",
		icon = "gingerbread_man_1.png",
		difficulty = 0.2,
		trigger = {
			type = "craft",
			item = "better_farming:gingerbread_man",
			target = 50
		}
	})

	awards.register_award("candy_cane_block",{
		title = "Candy House ?",
		description = "Place 200 Candy Cane Block",
		icon = "candy_cane_block.png",
		trigger = {
			type = "place",
			item = "better_farming:candy_cane_block",
			target = 200
		}
	})

	awards.register_award("sugar",{
		title = "Sugar is delicious!",
		description = "Craft 150 sugar",
		icon = "sugar.png",
		difficulty = 0.2,
		trigger = {
			type = "craft",
			item = "better_farming:sugar",
			target = 150
		}
	})

	awards.register_award("secure_a_bright_future",{
		title = "Secure a bright future",
		description = "Plant in soil 250 chilie",
		icon = "awards_secure_a_bright_future.png",
		trigger = {
			type = "place",
			item = "better_farming:seed_pepper",
			target = 250
		}
	})
end
