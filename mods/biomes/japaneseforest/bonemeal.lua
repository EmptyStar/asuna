if minetest.get_modpath("bonemeal") then

bonemeal:add_crop({
	{"japaneseforest:sashimi_", 8, "japaneseforest:seed_sashimi"},
})
bonemeal:add_sapling({
		{"japaneseforest:japanese_sapling", grow_new_japanese_tree_2, "soil"},
})
	bonemeal:add_deco({
		{"japaneseforest:japanese_dirt_with_grass", {"default:grass_1", "default:grass_2", "default:grass_3", "default:grass_4", "default:grass_5"}, {}}
	})
end
