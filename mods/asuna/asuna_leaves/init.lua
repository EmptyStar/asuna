-- Make all leaves non-walkable
for node,def in pairs(minetest.registered_nodes) do
	if def.groups and def.groups.leaves then
		minetest.override_item(node,{
			walkable = false,
		})
	end
end