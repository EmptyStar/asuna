-- Get movement speed from settings if defined
local resistance = tonumber(minetest.settings:get("leafstride_move_resistance") or 2)

-- Apply movement attributes to leaves after all mods have been loaded
minetest.register_on_mods_loaded(function()
	for node,def in pairs(minetest.registered_nodes) do
		if def.groups and def.groups.leaves and def.groups.leaves > 0 then
			minetest.override_item(node,{
				walkable = false,
				climbable = true,
				move_resistance = resistance,
			})
		end
	end
end)