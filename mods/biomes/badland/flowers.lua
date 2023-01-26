badland = {}
local mpath = minetest.get_modpath("badland")
local pot = minetest.get_modpath("flowerpot")


    minetest.register_node("badland:toadstool", {
	    description = "Toadstool",
	    drawtype = "plantlike",
	    waving = 1,
	on_use = minetest.item_eat(1),
	visual_scale = 1,
	    tiles = {"toadstool.png"},
	    inventory_image = "toadstool.png",
	    wield_image = "toadstool.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, prairie = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = box or {-0.15, -0.5, -0.15, 0.15, 0.15, 0.15},
	    },
    })
    
    minetest.register_node("badland:brown_mushroom_2", {
	    description = "Brown Mushroom",
	    drawtype = "plantlike",
	    waving = 1,
	on_use = minetest.item_eat(1),
	visual_scale = 1,
	    tiles = {"brown_mushroom_2.png"},
	    inventory_image = "brown_mushroom_2.png",
	    wield_image = "brown_mushroom_2.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, prairie = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = box or {-0.15, -0.5, -0.15, 0.15, 0.15, 0.15},
	    },
    })
   
    minetest.register_node("badland:brown_mushroom_3", {
	    description = "Brown Mushroom",
	    drawtype = "plantlike",
	    waving = 1,
	on_use = minetest.item_eat(1),
	visual_scale = 1,
	    tiles = {"brown_mushroom_3.png"},
	    inventory_image = "brown_mushroom_3.png",
	    wield_image = "brown_mushroom_3.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, prairie = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = box or {-0.15, -0.5, -0.15, 0.15, 0.15, 0.15},
	    },
    })

    minetest.register_node("badland:brown_mushroom_4", {
	    description = "Brown Mushroom",
	    drawtype = "plantlike",
	    waving = 1,
	on_use = minetest.item_eat(1),
	visual_scale = 1,
	    tiles = {"brown_mushroom_4.png"},
	    inventory_image = "brown_mushroom_4.png",
	    wield_image = "brown_mushroom_4.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, prairie = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = box or {-0.15, -0.5, -0.15, 0.15, 0.15, 0.15},
	    },
    })
    




minetest.register_decoration({
	deco_type = "simple",
	place_on = {"badland:badland_grass"},
	sidelen = 16,
	fill_ratio = 0.01,
	biomes = {"badland"},
	decoration = {
        "badland:toadstool", "badland:brown_mushroom_4", "badland:brown_mushroom_3", "badland:brown_mushroom_2",
	}
})
