creatura = {}

local path = minetest.get_modpath("creatura")

dofile(path.."/api.lua")
dofile(path.."/pathfinder.lua")
dofile(path.."/methods.lua")

-- Optional Files --

-- Optional files can be safely removed
-- by game developers who don't need the
-- extra features

local function load_file(filepath, filename)
    if io.open(filepath .. "/" .. filename, "r") then
        dofile(filepath .. "/" .. filename)
    else
        minetest.log("action", "[Creatura] The file " .. filename .. " could not be loaded.")
    end
end

load_file(path, "boids.lua")
load_file(path, "spawning.lua")