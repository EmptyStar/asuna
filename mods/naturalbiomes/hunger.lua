if minetest.get_modpath("hunger_ng") ~= nil then
	hunger_ng.add_hunger_data('naturalbiomes:alpine_mushroom', {
		satiates = 1.0,
	})

	hunger_ng.add_hunger_data('naturalbiomes:olives', {
		satiates = 1.0,
	})

	hunger_ng.add_hunger_data('naturalbiomes:coconut', {
		satiates = 3.0,
	})

	hunger_ng.add_hunger_data('naturalbiomes:coconut_slice', {
		satiates = 1.0,
	})

	hunger_ng.add_hunger_data('naturalbiomes:banana', {
		satiates = 1.0,
	})

	hunger_ng.add_hunger_data('naturalbiomes:banana_bunch', {
		satiates = 5.0,
	})

end
