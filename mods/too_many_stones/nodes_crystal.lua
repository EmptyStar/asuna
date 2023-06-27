-- mods/too_many_stones/nodes_crystal.lua

-- support for MT game translation.
local S = minetest.get_translator("too_many_stones")

local all_directions = {
    vector.new(1, 0, 0),
    vector.new(0, 1, 0),
    vector.new(0, 0, 1),
    vector.new(-1, 0, 0),
    vector.new(0, -1, 0),
    vector.new(0, 0, -1),
}

-- Amazonite

minetest.register_abm({
    label = "TMS Amazonite Crystal growth",
    nodenames = "too_many_stones:amazonite_budding",
    interval = 10,
    chance = 1,
    action = function(pos)
        local check_pos = vector.add(all_directions[math.random(1, #all_directions)], pos)
        local check_node = minetest.get_node(check_pos)
        local check_node_name = check_node.name
        local param2 = minetest.dir_to_wallmounted(vector.subtract(pos, check_pos))
        local new_node
        if check_node_name == "air" then
            new_node = "too_many_stones:amazonite_crystal"
        else return end
        minetest.swap_node(check_pos, {name = new_node, param2 = param2})
    end,
})

minetest.register_node("too_many_stones:amazonite_crystal", {
    description = "Amazonite Crystal",
    use_texture_alpha = "blend",
    tiles = {"tms_amazonite_crystal.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 6,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, 4/16, 5/16},
    },
    groups = {cracky = 3, attached_node = 1},
	--drop = "too_many_stones:amazonite_shards",
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("too_many_stones:amazonite_budding", {
	description = S("Budding Amazonite"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	tiles = {"tms_amazonite_budding.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
    paramtype = "light",
})

minetest.register_craftitem("too_many_stones:amazonite_shards", {
    description = "Amazonite Shards",
    inventory_image = "tms_amazonite_shards.png",
})

-- Amber

minetest.register_abm({
    label = "TMS Amber Crystal growth",
    nodenames = "too_many_stones:amber_budding",
    interval = 10,
    chance = 1,
    action = function(pos)
        local check_pos = vector.add(all_directions[math.random(1, #all_directions)], pos)
        local check_node = minetest.get_node(check_pos)
        local check_node_name = check_node.name
        local param2 = minetest.dir_to_wallmounted(vector.subtract(pos, check_pos))
        local new_node
        if check_node_name == "air" then
            new_node = "too_many_stones:amber_crystal"
        else return end
        minetest.swap_node(check_pos, {name = new_node, param2 = param2})
    end,
})

minetest.register_node("too_many_stones:amber_crystal", {
    description = "Amber Crystal",
    use_texture_alpha = "blend",
    tiles = {"tms_amber_crystal.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 6,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, 4/16, 5/16},
    },
    groups = {cracky = 3, attached_node = 1},
	--drop = "too_many_stones:amber_shards",
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("too_many_stones:amber_budding", {
	description = S("Budding Amber"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	tiles = {"tms_amber_budding.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
    paramtype = "light",
})

minetest.register_craftitem("too_many_stones:amber_shards", {
    description = "Amber Shards",
    inventory_image = "tms_amber_shards.png",
})

-- Amethyst

minetest.register_abm({
    label = "TMS Amethyst Crystal growth",
    nodenames = "too_many_stones:amethyst_budding",
    interval = 10,
    chance = 1,
    action = function(pos)
        local check_pos = vector.add(all_directions[math.random(1, #all_directions)], pos)
        local check_node = minetest.get_node(check_pos)
        local check_node_name = check_node.name
        local param2 = minetest.dir_to_wallmounted(vector.subtract(pos, check_pos))
        local new_node
        if check_node_name == "air" then
            new_node = "too_many_stones:amethyst_crystal"
        else return end
        minetest.swap_node(check_pos, {name = new_node, param2 = param2})
    end,
})

minetest.register_node("too_many_stones:amethyst_crystal", {
    description = "Amethyst Crystal",
    use_texture_alpha = "blend",
    tiles = {"tms_amethyst_crystal.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 6,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, 4/16, 5/16},
    },
    groups = {cracky = 3, attached_node = 1},
	--drop = "too_many_stones:amethyst_shards",
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("too_many_stones:amethyst_budding", {
	description = S("Budding Amethyst"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	tiles = {"tms_amethyst_budding.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
    paramtype = "light",
})

minetest.register_craftitem("too_many_stones:amethyst_shards", {
    description = "Amethyst Shards",
    inventory_image = "tms_amethyst_shards.png",
})

-- Celestine

minetest.register_abm({
    label = "TMS Celestine Crystal growth",
    nodenames = "too_many_stones:celestine_budding",
    interval = 10,
    chance = 1,
    action = function(pos)
        local check_pos = vector.add(all_directions[math.random(1, #all_directions)], pos)
        local check_node = minetest.get_node(check_pos)
        local check_node_name = check_node.name
        local param2 = minetest.dir_to_wallmounted(vector.subtract(pos, check_pos))
        local new_node
        if check_node_name == "air" then
            new_node = "too_many_stones:celestine_crystal"
        else return end
        minetest.swap_node(check_pos, {name = new_node, param2 = param2})
    end,
})

minetest.register_node("too_many_stones:celestine_crystal", {
    description = "Celestine Crystal",
    use_texture_alpha = "blend",
    tiles = {"tms_celestine_crystal.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 6,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, 4/16, 5/16},
    },
    groups = {cracky = 3, attached_node = 1},
	--drop = "too_many_stones:celestine_shards",
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("too_many_stones:celestine_budding", {
	description = S("Budding Celestine"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	tiles = {"tms_celestine_budding.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
    paramtype = "light",
})

minetest.register_craftitem("too_many_stones:celestine_shards", {
    description = "Celestine Shards",
    inventory_image = "tms_celestine_shards.png",
})

-- Citrine

minetest.register_abm({
    label = "TMS Citrine Crystal growth",
    nodenames = "too_many_stones:citrine_budding",
    interval = 10,
    chance = 1,
    action = function(pos)
        local check_pos = vector.add(all_directions[math.random(1, #all_directions)], pos)
        local check_node = minetest.get_node(check_pos)
        local check_node_name = check_node.name
        local param2 = minetest.dir_to_wallmounted(vector.subtract(pos, check_pos))
        local new_node
        if check_node_name == "air" then
            new_node = "too_many_stones:citrine_crystal"
        else return end
        minetest.swap_node(check_pos, {name = new_node, param2 = param2})
    end,
})

minetest.register_node("too_many_stones:citrine_crystal", {
    description = "Citrine Crystal",
    use_texture_alpha = "blend",
    tiles = {"tms_citrine_crystal.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 6,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, 4/16, 5/16},
    },
    groups = {cracky = 3, attached_node = 1},
	--drop = "too_many_stones:citrine_shards",
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("too_many_stones:citrine_budding", {
	description = S("Budding Citrine"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	tiles = {"tms_citrine_budding.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
    paramtype = "light",
})

minetest.register_craftitem("too_many_stones:citrine_shards", {
    description = "Citrine Shards",
    inventory_image = "tms_citrine_shards.png",
})

-- Crocoite

minetest.register_abm({
    label = "TMS Crocoite Crystal growth",
    nodenames = "too_many_stones:crocoite_budding",
    interval = 10,
    chance = 1,
    action = function(pos)
        local check_pos = vector.add(all_directions[math.random(1, #all_directions)], pos)
        local check_node = minetest.get_node(check_pos)
        local check_node_name = check_node.name
        local param2 = minetest.dir_to_wallmounted(vector.subtract(pos, check_pos))
        local new_node
        if check_node_name == "air" then
            new_node = "too_many_stones:crocoite_crystal"
        else return end
        minetest.swap_node(check_pos, {name = new_node, param2 = param2})
    end,
})

minetest.register_node("too_many_stones:crocoite_crystal", {
    description = "Crocoite Crystal",
    tiles = {"tms_crocoite_crystal.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 6,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, 4/16, 5/16},
    },
    groups = {cracky = 3, attached_node = 1},
	--drop = "too_many_stones:crocoite_shards",
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("too_many_stones:crocoite_budding", {
	description = S("Budding Crocoite"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	tiles = {"tms_crocoite_budding.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
    paramtype = "light",
})

minetest.register_craftitem("too_many_stones:crocoite_shards", {
    description = "Crocoite Shards",
    inventory_image = "tms_crocoite_shards.png",
})

-- Eudialite

minetest.register_abm({
    label = "TMS Eudialite Crystal growth",
    nodenames = "too_many_stones:eudialite_budding",
    interval = 10,
    chance = 1,
    action = function(pos)
        local check_pos = vector.add(all_directions[math.random(1, #all_directions)], pos)
        local check_node = minetest.get_node(check_pos)
        local check_node_name = check_node.name
        local param2 = minetest.dir_to_wallmounted(vector.subtract(pos, check_pos))
        local new_node
        if check_node_name == "air" then
            new_node = "too_many_stones:eudialite_crystal"
        else return end
        minetest.swap_node(check_pos, {name = new_node, param2 = param2})
    end,
})

minetest.register_node("too_many_stones:eudialite_crystal", {
    description = "Eudialite Crystal",
    tiles = {"tms_eudialite_crystal.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 6,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, 4/16, 5/16},
    },
    groups = {cracky = 3, attached_node = 1},
	--drop = "too_many_stones:eudialite_shards",
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("too_many_stones:eudialite_budding", {
	description = S("Budding Eudialite"),
	drawtype = "glasslike",
	tiles = {"tms_eudialite_budding.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
    paramtype = "light",
})

minetest.register_craftitem("too_many_stones:eudialite_shards", {
    description = "Eudialite Shards",
    inventory_image = "tms_eudialite_shards.png",
})

-- Heliodor

minetest.register_abm({
    label = "TMS Heliodor Crystal growth",
    nodenames = "too_many_stones:heliodor_budding",
    interval = 10,
    chance = 1,
    action = function(pos)
        local check_pos = vector.add(all_directions[math.random(1, #all_directions)], pos)
        local check_node = minetest.get_node(check_pos)
        local check_node_name = check_node.name
        local param2 = minetest.dir_to_wallmounted(vector.subtract(pos, check_pos))
        local new_node
        if check_node_name == "air" then
            new_node = "too_many_stones:heliodor_crystal"
        else return end
        minetest.swap_node(check_pos, {name = new_node, param2 = param2})
    end,
})

minetest.register_node("too_many_stones:heliodor_crystal", {
    description = "Heliodor Crystal",
    use_texture_alpha = "blend",
    tiles = {"tms_heliodor_crystal.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 6,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, 4/16, 5/16},
    },
    groups = {cracky = 3, attached_node = 1},
	--drop = "too_many_stones:heliodor_shards",
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("too_many_stones:heliodor_budding", {
	description = S("Budding Heliodor"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	tiles = {"tms_heliodor_budding.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
    paramtype = "light",
})

minetest.register_craftitem("too_many_stones:heliodor_shards", {
    description = "Heliodor Shards",
    inventory_image = "tms_heliodor_shards.png",
})

-- Kyanite

minetest.register_abm({
    label = "TMS Kyanite Crystal growth",
    nodenames = "too_many_stones:kyanite_budding",
    interval = 10,
    chance = 1,
    action = function(pos)
        local check_pos = vector.add(all_directions[math.random(1, #all_directions)], pos)
        local check_node = minetest.get_node(check_pos)
        local check_node_name = check_node.name
        local param2 = minetest.dir_to_wallmounted(vector.subtract(pos, check_pos))
        local new_node
        if check_node_name == "air" then
            new_node = "too_many_stones:kyanite_crystal"
        else return end
        minetest.swap_node(check_pos, {name = new_node, param2 = param2})
    end,
})

minetest.register_node("too_many_stones:kyanite_crystal", {
    description = "Kyanite Crystal",
    use_texture_alpha = "blend",
    tiles = {"tms_kyanite_crystal.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 6,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, 4/16, 5/16},
    },
    groups = {cracky = 3, attached_node = 1},
	--drop = "too_many_stones:kyanite_shards",
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("too_many_stones:kyanite_budding", {
	description = S("Budding Kyanite"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	tiles = {"tms_kyanite_budding.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
    paramtype = "light",
})

minetest.register_craftitem("too_many_stones:kyanite_shards", {
    description = "Kyanite Shards",
    inventory_image = "tms_kyanite_shards.png",
})

-- Prasiolite

minetest.register_abm({
    label = "TMS Prasiolite Crystal growth",
    nodenames = "too_many_stones:prasiolite_budding",
    interval = 10,
    chance = 1,
    action = function(pos)
        local check_pos = vector.add(all_directions[math.random(1, #all_directions)], pos)
        local check_node = minetest.get_node(check_pos)
        local check_node_name = check_node.name
        local param2 = minetest.dir_to_wallmounted(vector.subtract(pos, check_pos))
        local new_node
        if check_node_name == "air" then
            new_node = "too_many_stones:prasiolite_crystal"
        else return end
        minetest.swap_node(check_pos, {name = new_node, param2 = param2})
    end,
})

minetest.register_node("too_many_stones:prasiolite_crystal", {
    description = "Prasiolite Crystal",
    use_texture_alpha = "blend",
    tiles = {"tms_prasiolite_crystal.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 6,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, 4/16, 5/16},
    },
    groups = {cracky = 3, attached_node = 1},
	--drop = "too_many_stones:prasiolite_shards",
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("too_many_stones:prasiolite_budding", {
	description = S("Budding Prasiolite"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	tiles = {"tms_prasiolite_budding.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
    paramtype = "light",
})

minetest.register_craftitem("too_many_stones:prasiolite_shards", {
    description = "Prasiolite Shards",
    inventory_image = "tms_prasiolite_shards.png",
})

-- Morion Quartz

minetest.register_abm({
    label = "TMS Morion Quartz Crystal growth",
    nodenames = "too_many_stones:morion_quartz_budding",
    interval = 10,
    chance = 1,
    action = function(pos)
        local check_pos = vector.add(all_directions[math.random(1, #all_directions)], pos)
        local check_node = minetest.get_node(check_pos)
        local check_node_name = check_node.name
        local param2 = minetest.dir_to_wallmounted(vector.subtract(pos, check_pos))
        local new_node
        if check_node_name == "air" then
            new_node = "too_many_stones:morion_quartz_crystal"
        else return end
        minetest.swap_node(check_pos, {name = new_node, param2 = param2})
    end,
})

minetest.register_node("too_many_stones:morion_quartz_crystal", {
    description = "Morion Quartz Crystal",
    use_texture_alpha = "blend",
    tiles = {"tms_morion_quartz_crystal.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 6,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, 4/16, 5/16},
    },
    groups = {cracky = 3, attached_node = 1},
	--drop = "too_many_stones:morion_quartz_shards",
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("too_many_stones:morion_quartz_budding", {
	description = S("Budding Morion Quartz"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	tiles = {"tms_morion_quartz_budding.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
    paramtype = "light",
})

minetest.register_craftitem("too_many_stones:morion_quartz_shards", {
    description = "Morion Quartz Shards",
    inventory_image = "tms_morion_quartz_shards.png",
})

-- Quartz

minetest.register_abm({
    label = "TMS Quartz Crystal growth",
    nodenames = "too_many_stones:quartz_budding",
    interval = 10,
    chance = 1,
    action = function(pos)
        local check_pos = vector.add(all_directions[math.random(1, #all_directions)], pos)
        local check_node = minetest.get_node(check_pos)
        local check_node_name = check_node.name
        local param2 = minetest.dir_to_wallmounted(vector.subtract(pos, check_pos))
        local new_node
        if check_node_name == "air" then
            new_node = "too_many_stones:quartz_crystal"
        else return end
        minetest.swap_node(check_pos, {name = new_node, param2 = param2})
    end,
})

minetest.register_node("too_many_stones:quartz_crystal", {
    description = "Quartz Crystal",
    use_texture_alpha = "blend",
    tiles = {"tms_quartz_crystal.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 6,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, 4/16, 5/16},
    },
    groups = {cracky = 3, attached_node = 1},
	--drop = "too_many_stones:quartz_shards",
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("too_many_stones:quartz_budding", {
	description = S("Budding Quartz"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	tiles = {"tms_quartz_budding.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
    paramtype = "light",
})

minetest.register_craftitem("too_many_stones:quartz_shards", {
    description = "Quartz Shards",
    inventory_image = "tms_quartz_shards.png",
})

-- Rose Quartz

minetest.register_abm({
    label = "TMS Rose Quartz Crystal growth",
    nodenames = "too_many_stones:rose_quartz_budding",
    interval = 10,
    chance = 1,
    action = function(pos)
        local check_pos = vector.add(all_directions[math.random(1, #all_directions)], pos)
        local check_node = minetest.get_node(check_pos)
        local check_node_name = check_node.name
        local param2 = minetest.dir_to_wallmounted(vector.subtract(pos, check_pos))
        local new_node
        if check_node_name == "air" then
            new_node = "too_many_stones:rose_quartz_crystal"
        else return end
        minetest.swap_node(check_pos, {name = new_node, param2 = param2})
    end,
})

minetest.register_node("too_many_stones:rose_quartz_crystal", {
    description = "Rose Quartz Crystal",
    use_texture_alpha = "blend",
    tiles = {"tms_rose_quartz_crystal.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 6,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, 4/16, 5/16},
    },
    groups = {cracky = 3, attached_node = 1},
	--drop = "too_many_stones:rose_quartz_shards",
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("too_many_stones:rose_quartz_budding", {
	description = S("Budding Rose Quartz"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	tiles = {"tms_rose_quartz_budding.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
    paramtype = "light",
})

minetest.register_craftitem("too_many_stones:rose_quartz_shards", {
    description = "Rose Quartz Shards",
    inventory_image = "tms_rose_quartz_shards.png",
})

-- Smokey Quartz

minetest.register_abm({
    label = "TMS Smokey Quartz Crystal growth",
    nodenames = "too_many_stones:smokey_quartz_budding",
    interval = 10,
    chance = 1,
    action = function(pos)
        local check_pos = vector.add(all_directions[math.random(1, #all_directions)], pos)
        local check_node = minetest.get_node(check_pos)
        local check_node_name = check_node.name
        local param2 = minetest.dir_to_wallmounted(vector.subtract(pos, check_pos))
        local new_node
        if check_node_name == "air" then
            new_node = "too_many_stones:smokey_quartz_crystal"
        else return end
        minetest.swap_node(check_pos, {name = new_node, param2 = param2})
    end,
})

minetest.register_node("too_many_stones:smokey_quartz_crystal", {
    description = "Smokey Quartz Crystal",
    use_texture_alpha = "blend",
    tiles = {"tms_smokey_quartz_crystal.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 6,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, 4/16, 5/16},
    },
    groups = {cracky = 3, attached_node = 1},
	--drop = "too_many_stones:smokey_quartz_shards",
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("too_many_stones:smokey_quartz_budding", {
	description = S("Budding Smokey Quartz"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	tiles = {"tms_smokey_quartz_budding.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
    paramtype = "light",
})

minetest.register_craftitem("too_many_stones:smokey_quartz_shards", {
    description = "Smokey Quartz Shards",
    inventory_image = "tms_smokey_quartz_shards.png",
})

-- Vivianite

minetest.register_abm({
    label = "TMS Vivianite Crystal growth",
    nodenames = "too_many_stones:vivianite_budding",
    interval = 10,
    chance = 1,
    action = function(pos)
        local check_pos = vector.add(all_directions[math.random(1, #all_directions)], pos)
        local check_node = minetest.get_node(check_pos)
        local check_node_name = check_node.name
        local param2 = minetest.dir_to_wallmounted(vector.subtract(pos, check_pos))
        local new_node
        if check_node_name == "air" then
            new_node = "too_many_stones:vivianite_crystal"
        else return end
        minetest.swap_node(check_pos, {name = new_node, param2 = param2})
    end,
})

minetest.register_node("too_many_stones:vivianite_crystal", {
    description = "Vivianite Crystal",
    use_texture_alpha = "blend",
    tiles = {"tms_vivianite_crystal.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 6,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, 4/16, 5/16},
    },
    groups = {cracky = 3, attached_node = 1},
	--drop = "too_many_stones:vivianite_shards",
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("too_many_stones:vivianite_budding", {
	description = S("Budding Vivianite"),
    use_texture_alpha = "blend",
	drawtype = "glasslike",
	tiles = {"tms_vivianite_budding.png"},
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_glass_defaults(),
    paramtype = "light",
})

minetest.register_craftitem("too_many_stones:vivianite_shards", {
    description = "Vivianite Shards",
    inventory_image = "tms_vivianite_shards.png",
})
