local modname = herbs.modname
local hb = herbs

if(minetest.get_modpath("hunger_ng")) then
    local add = hunger_ng.add_hunger_data

    for key, value in pairs(hb.mushroomdatas) do
            add(modname .. ":" .. value[1], {satiates = value[4], heal = value[5]})
            minetest.log("action",hb.modname .. " registers " .. modname.. ":" .. value[1] .. " @hunger_ng.")
    end -- for key

end -- if(minetest.get_modname("hunger_ng

if(minetest.get_modpath("techage")) then
    local reg = techage.register_flower

    for key, value in pairs(hb.mushroomdatas) do
        reg(modname .. ":" .. value[1])
        minetest.log("action",hb.modname .. " registers " .. modname.. ":" .. value[1] .. " @techage.")

    end

    for key, value in pairs(hb.flowerdatas) do
        reg(modname .. ":" .. value[1])
        minetest.log("action",hb.modname .. " registers " .. modname..":" .. value[1] .. " @techage.")
    end

end


