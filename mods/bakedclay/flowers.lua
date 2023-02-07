-- 5.x translation
S = minetest.get_translator("bakedclay")

local flowers = {
	{"delphinium", "Blue Delphinium",
	{-0.15, -0.5, -0.15, 0.15, 0.3, 0.15}, {color_blue = 1}},

	{"thistle", "Thistle",
	{-0.15, -0.5, -0.15, 0.15, 0.2, 0.15}, {color_magenta = 1}},

	{"lazarus", "Lazarus Bell",
	{-0.15, -0.5, -0.15, 0.15, 0.2, 0.15}, {color_pink = 1}},

	{"mannagrass", "Reed Mannagrass",
	{-0.15, -0.5, -0.15, 0.15, 0.2, 0.15}, {color_dark_green = 1}}
}

-- register some new flowers to fill in missing dye colours
-- flower registration (borrowed from default game)
local function add_simple_flower(name, desc, box, f_groups)

	f_groups.snappy = 3
	f_groups.flower = 1
	f_groups.flora = 1
	f_groups.attached_node = 1

	minetest.register_node("bakedclay:" .. name, {
		description = S(desc),
		drawtype = "plantlike",
		waving = 1,
		tiles = {"baked_clay_" .. name .. ".png"},
		inventory_image = "baked_clay_" .. name .. ".png",
		wield_image = "baked_clay_" .. name .. ".png",
		sunlight_propagates = true,
		paramtype = "light",
		walkable = false,
		buildable_to = true,
		stack_max = 99,
		groups = f_groups,
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {type = "fixed", fixed = box}
	})
end

for _,item in pairs(flowers) do
	add_simple_flower(unpack(item))
end

-- flowerpot mod
if minetest.get_modpath("flowerpot") then
	flowerpot.register_node("bakedclay:delphinium")
	flowerpot.register_node("bakedclay:thistle")
	flowerpot.register_node("bakedclay:lazarus")
	flowerpot.register_node("bakedclay:mannagrass")
end
