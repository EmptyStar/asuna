-- Queue up ores for later registration after all mods are loaded
-- Kindly provided by EmptyStar
local oreq = {}
local function register_ore_by_climate(ore)
	-- Queue up ore for processing after all mods are loaded
	table.insert(oreq,ore)
end

-- Do actual ore registration based on provided climate data after all mods are loaded
minetest.register_on_mods_loaded(function()
	for _,ore in ipairs(oreq) do
		-- Initialize any missing biome or climate values
		ore.biomes = ore.biomes or {}

		local checksum = 0
		if not ore.heat_min then
			ore.heat_min = -100
			checksum = checksum + 1
		end

		if not ore.heat_max then
			ore.heat_max = 200
			checksum = checksum + 1
		end

		if not ore.humidity_min then
			ore.humidity_min = -100
			checksum = checksum + 1
		end

		if not ore.humidity_max then
			ore.humidity_max = 200
			checksum = checksum + 1
		end

		-- Add matching biomes to ore biome list if any climate data was specified
		if checksum ~= 4 then
			checksum = #ore.biomes
			for name,biome in pairs(minetest.registered_biomes) do
				-- Increment biome checksum
				checksum = checksum + 1

				-- Ensure climate values
				local heat = biome.heat_point or 50
				local humidity = biome.humidity_point or 50

				-- Add biome if climate values match
				if (
					heat >= ore.heat_min and
					heat <= ore.heat_max and
					humidity >= ore.humidity_min and
					humidity <= ore.humidity_max
				) then
					table.insert(ore.biomes,name)
				end
			end
		else
			checksum = #ore.biomes + 1
		end

		-- Don't use an empty biome list or a biome list that contains all biomes
		ore.biomes = #ore.biomes > 0 and #ore.biomes < checksum and ore.biomes or nil

		-- Register ore with Minetest one source node at a time due to an engine timing bug
		local sources = ore.wherein
		for i = 1, #sources do
			ore.wherein = sources[i]
			minetest.register_ore(ore)
		end
	end
end)

-- Generate unique seeds for each stone
local _seed = 12345
local function seed()
	_seed = _seed + 97
	return _seed
end

-- Replace some naturally generated lapis lazuli with pyrite
minetest.register_lbm({
	label = "Replace a fraction of lapis lazuli with pyrite",
	name = "too_many_stones:lapis2pyrite",
	nodenames = {"too_many_stones:lapis_lazuli"},
	run_at_every_load = true,
	action = function(pos,node)
		local coordinate_sum = pos.x ^ 2 + pos.y * 2 + pos.z
		local newnode = "too_many_stones:lapis_lazuli"
		if coordinate_sum % 17 == 4 and node.param2 == 1 then
			newnode = "too_many_stones:pyrite"
		end
		minetest.set_node(pos,{ name = newnode , param2 = 0 })
	end,
})

-- Minetest Game, Mesecraft, and Others

if minetest.get_modpath("default") ~= nil then

-- Blue Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_blue",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Gray Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_gray",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Green Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_green",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Moss Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_moss",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Orange Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_orange",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Purple Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_purple",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Red Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_red",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Amazonite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:amazonite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Amber

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:amber",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:amber",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Amethyst

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:amethyst",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:amethyst",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Andesite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:andesite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 10,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Basalt

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:basalt",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Columnar Basalt

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:basalt_columnar",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Black Moonstone

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:black_moonstone",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:black_moonstone",
		wherein         = {"mapgen_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})
-- Calcite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:calcite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 43,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:calcite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 68 * 68 * 68,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 43,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:calcite",
		wherein         = {"default:sand", "default:silver_sand"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 10,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 0,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 43,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Carnotite

		register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:carnotite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = -300,
		y_min           = -1000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Celestine

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:celestine",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Citrine

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:citrine",
		wherein         = {"default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Chrysoprase

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:chrysoprase",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -1000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:chrysoprase",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -1000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Covellite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:covellite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Crocoite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:crocoite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone","default:desert_stone","everness:forsaken_desert_stone","default:sandstone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0
		},
	})

-- Erythrite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:erythrite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone","default:desert_stone","everness:forsaken_desert_stone","default:sandstone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0
		},
	})

-- Eudialite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:eudialite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone","default:desert_stone","everness:forsaken_desert_stone","default:sandstone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Fluorite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:fluorite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone","default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Gabbro

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:gabbro",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone","default:desert_stone","everness:forsaken_desert_stone","default:sandstone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 20,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Galena

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:galena",
		ore_param2 = 1,
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:sandstone", "default:desert_sandstone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:galena",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:sandstone", "default:desert_sandstone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Black Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_black",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Blue Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_blue",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 30,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Gray Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_gray",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_gray",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Green Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_green",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 56,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Pink Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_pink",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 10,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Red Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_red",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -500,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 55,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- White Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_white",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -300,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_white",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -300,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Yellow Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_yellow",
		wherein         = {"mapgen_stone", "default:desert_stone","everness:forsaken_desert_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 10,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Heliodor

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:heliodor",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = -30,
		y_min           = -500,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:heliodor",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = -30,
		y_min           = -500,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Howlite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:howlite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:silver_sandstone", "default:desert_sandstone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 1000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Ilvaite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:ilvaite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone", "default:permafrost"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -100,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Jade

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:jade",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:jade",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Kyanite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:kyanite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 300,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:kyanite",
		wherein         = {"default:silver_sand"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		y_max           = -300,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Lapis Lazuli

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:lapis_lazuli",
		wherein         = {"default:sandstone", "default:desert_stone","everness:forsaken_desert_stone", "default:silver_sandstone"},
		clust_scarcity  = 80 * 48 * 80,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		ore_param2 = 1,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Blue Limestone

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:limestone_blue",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:sand", "default:desert_sand"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 300,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- White Limestone

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:limestone_white",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:silver_sand"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -300,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Marble

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:marble",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:sandstone", "default:silver_sandstone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -500,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 50,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Morion Quartz

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:morion_quartz",
		wherein         = {"mapgen_stone", "default:desert_stone","everness:forsaken_desert_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = -300,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:morion_quartz",
		wherein         = {"default:sand", "default:silver_sand", "default:desert_sand"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		y_max           = -2,
		y_min           = -50,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Mudstone

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:mudstone",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 10,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -100,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Black Opal

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:black_opal",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 80 * 80 * 80,
		clust_size      = 4,
		y_max           = -1000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0
		},
	})

-- Fire Opal

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:fire_opal",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 80 * 80 * 80,
		clust_size      = 4,
		y_max           = -1000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0
		},
	})

-- Opal

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:opal",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 80 * 80 * 80,
		clust_size      = 4,
		y_max           = -1000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0
		},
	})

-- Prasiolite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:prasiolite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:silver_sandstone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 50,
		y_min           = -1000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:prasiolite",
		wherein         = {"default:sand", "default:silver_sand", "default:desert_sand"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		y_max           = -2,
		y_min           = -50,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Pumice

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:pumice",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:gravel", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 10,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:pumice",
		wherein         = {"mapgen_water_source"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 10,
		y_max           = 31000,
		y_min           = -1,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Pyrite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:pyrite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 48 * 48 * 48,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = -40,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:pyrite",
		wherein         = {"default:sandstone", "default:desert_stone","everness:forsaken_desert_stone", "default:silver_sandstone"},
		clust_scarcity  = 80 * 48 * 80,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Quartz

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:quartz",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = -300,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:quartz",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 68 * 68 * 68,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = -300,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:quartz",
		wherein         = {"default:sand", "default:silver_sand", "default:desert_sand"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		y_max           = -2,
		y_min           = -50,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Rose Quartz

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:rose_quartz",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = -300,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:rose_quartz",
		wherein         = {"default:sand", "default:silver_sand", "default:desert_sand"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		y_max           = -2,
		y_min           = -50,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Scoria

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:scoria",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Serpentine

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:serpentine",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Slate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:slate",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 300,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:slate",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 300,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Smokey Quartz

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:smokey_quartz",
		wherein         = {"default:sandstone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Soapstone

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:soapstone",
		wherein         = {"default:sandstone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:soapstone",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 0,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Sodalite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:sodalite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Sugilite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:sugilite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 30,
		y_min           = -2000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:sugilite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 68 * 68 * 68,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 30,
		y_min           = -2000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Travertine

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:travertine",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:travertine",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:travertine",
		wherein         = {"default:sandstone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 30,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Yellow Travertine

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:travertine_yellow",
		wherein         = {"mapgen_stone", "default:desert_stone","everness:forsaken_desert_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Beige Tuff

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:tuff_beige",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Grey Tuff

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:tuff_grey",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Red Tuff

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:tuff_red",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:desert_stone","everness:forsaken_desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Turquoise

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:sandstone_with_turquoise",
		wherein         = {"default:sandstone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 15,
--		heat_min		= 20,
--		heat_max		= 60,
--		humidity_min	= 20,
--		humidity_max	= 60,
		y_max           = 300,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 61,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:desert_sandstone_with_turquoise",
		wherein         = {"default:desert_sandstone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 15,
--		heat_min		= 20,
--		heat_max		= 60,
--		humidity_min	= 20,
--		humidity_max	= 60,
		y_max           = 300,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 61,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:silver_sandstone_with_turquoise",
		wherein         = {"default:silver_sandstone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 15,
--		heat_min		= 20,
--		heat_max		= 60,
--		humidity_min	= 20,
--		humidity_max	= 60,
		y_max           = 300,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 61,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Vivianite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:vivianite",
		wherein         = {"mapgen_stone","naturalbiomes:mediterran_rock","naturalbiomes:alpine_rock","naturalbiomes:outback_ground","dorwinion:dorwinion","everness:coral_desert_stone","everness:crystal_stone","everness:cursed_stone_carved","everness:forsaken_tundra_stone", "default:silver_sandstone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Minebase Version

elseif minetest.get_modpath("base_earth") ~= nil then

-- Blue Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_blue",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Gray Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_gray",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Green Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_green",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Moss Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_moss",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Orange Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_orange",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Purple Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_purple",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Red Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_red",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Amazonite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:amazonite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Amber

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:amber",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:amber",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Amethyst

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:amethyst",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:amethyst",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Andesite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:andesite",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 10,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Basalt

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:basalt",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Columnar Basalt

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:basalt_columnar",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Black Moonstone

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:black_moonstone",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:black_moonstone",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Calcite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:calcite",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 43,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:calcite",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 68 * 68 * 68,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 43,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:calcite",
		wherein         = {"base_earth:sand", "base_earth:silver_sand"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 10,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 0,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 43,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Carnotite

		register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:carnotite",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = -300,
		y_min           = -1000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Celestine

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:celestine",
		wherein         = {"base_earth:silver_sandstone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Citrine

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:citrine",
		wherein         = {"base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Chrysoprase

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:chrysoprase",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -1000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:chrysoprase",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -1000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Covellite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:covellite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Crocoite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:crocoite",
		wherein         = {"mapgen_stone","base_earth:desert_stone","base_earth:sandstone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0
		},
	})

-- Erythrite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:erythrite",
		wherein         = {"mapgen_stone","base_earth:desert_stone","base_earth:sandstone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0
		},
	})

-- Eudialite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:eudialite",
		wherein         = {"mapgen_stone","base_earth:desert_stone","base_earth:sandstone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Fluorite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:fluorite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Gabbro

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:gabbro",
		wherein         = {"mapgen_stone","base_earth:desert_stone","base_earth:sandstone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 20,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Galena

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:galena",
		ore_param2 = 1,
		wherein         = {"mapgen_stone", "base_earth:sandstone", "base_earth:desert_sandstone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:galena",
		wherein         = {"mapgen_stone", "base_earth:sandstone", "base_earth:desert_sandstone", "base_earth:desert_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Black Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_black",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Blue Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_blue",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 30,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Gray Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_gray",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_gray",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Green Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_green",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 56,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Pink Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_pink",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 10,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Red Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_red",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -500,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 55,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- White Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_white",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -300,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_white",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -300,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Yellow Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_yellow",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 10,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Heliodor

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:heliodor",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = -30,
		y_min           = -500,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:heliodor",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = -30,
		y_min           = -500,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Howlite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:howlite",
		wherein         = {"mapgen_stone", "base_earth:silver_sandstone", "base_earth:desert_sandstone", "base_earth:desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 1000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Ilvaite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:ilvaite",
		wherein         = {"mapgen_stone", "base_earth:desert_stone", "base_earth:permafrost"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -100,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Jade

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:jade",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:jade",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Kyanite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:kyanite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 300,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:kyanite",
		wherein         = {"base_earth:silver_sand"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		y_max           = -300,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Lapis Lazuli

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:lapis_lazuli",
		wherein         = {"base_earth:sandstone", "base_earth:desert_stone", "base_earth:silver_sandstone"},
		clust_scarcity  = 80 * 48 * 80,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		ore_param2 = 1,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Blue Limestone

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:limestone_blue",
		wherein         = {"mapgen_stone", "base_earth:sand", "base_earth:desert_sand"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 300,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- White Limestone

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:limestone_white",
		wherein         = {"mapgen_stone", "base_earth:silver_sand"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -300,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Marble

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:marble",
		wherein         = {"mapgen_stone", "base_earth:sandstone", "base_earth:silver_sandstone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -500,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 50,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Morion Quartz

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:morion_quartz",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = -300,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:morion_quartz",
		wherein         = {"base_earth:sand", "base_earth:silver_sand", "base_earth:desert_sand"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		y_max           = -2,
		y_min           = -50,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Mudstone

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:mudstone",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 10,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -100,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Black Opal

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:black_opal",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 80 * 80 * 80,
		clust_size      = 4,
		y_max           = -1000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0
		},
	})

-- Fire Opal

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:fire_opal",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 80 * 80 * 80,
		clust_size      = 4,
		y_max           = -1000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0
		},
	})

-- Opal

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:opal",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 80 * 80 * 80,
		clust_size      = 4,
		y_max           = -1000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0
		},
	})

-- Prasiolite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:prasiolite",
		wherein         = {"mapgen_stone", "base_earth:silver_sandstone", "base_earth:desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 50,
		y_min           = -1000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:prasiolite",
		wherein         = {"base_earth:sand", "base_earth:silver_sand", "base_earth:desert_sand"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		y_max           = -2,
		y_min           = -50,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Pumice

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:pumice",
		wherein         = {"mapgen_stone", "base_earth:gravel", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 10,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:pumice",
		wherein         = {"mapgen_water_source"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 10,
		y_max           = 31000,
		y_min           = -1,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Pyrite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:pyrite",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 48 * 48 * 48,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = -40,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:pyrite",
		wherein         = {"base_earth:sandstone", "base_earth:desert_stone", "base_earth:silver_sandstone"},
		clust_scarcity  = 80 * 48 * 80,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Quartz

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:quartz",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = -300,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:quartz",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 68 * 68 * 68,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = -300,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:quartz",
		wherein         = {"base_earth:sand", "base_earth:silver_sand", "base_earth:desert_sand"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		y_max           = -2,
		y_min           = -50,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Rose Quartz

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:rose_quartz",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = -300,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:rose_quartz",
		wherein         = {"base_earth:sand", "base_earth:silver_sand", "base_earth:desert_sand"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		y_max           = -2,
		y_min           = -50,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Scoria

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:scoria",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Serpentine

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:serpentine",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Slate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:slate",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 300,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:slate",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 300,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Smokey Quartz

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:smokey_quartz",
		wherein         = {"base_earth:sandstone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Soapstone

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:soapstone",
		wherein         = {"base_earth:sandstone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:soapstone",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 0,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Sodalite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:sodalite",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Sugilite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:sugilite",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 30,
		y_min           = -2000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:sugilite",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 68 * 68 * 68,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 30,
		y_min           = -2000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Travertine

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:travertine",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:travertine",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:travertine",
		wherein         = {"base_earth:sandstone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 30,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Yellow Travertine

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:travertine_yellow",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Beige Tuff

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:tuff_beige",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Grey Tuff

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:tuff_grey",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Red Tuff

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:tuff_red",
		wherein         = {"mapgen_stone", "base_earth:desert_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Turquoise

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:sandstone_with_turquoise",
		wherein         = {"base_earth:sandstone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 15,
--		heat_min		= 20,
--		heat_max		= 60,
--		humidity_min	= 20,
--		humidity_max	= 60,
		y_max           = 300,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 61,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:desert_sandstone_with_turquoise",
		wherein         = {"base_earth:desert_sandstone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 15,
--		heat_min		= 20,
--		heat_max		= 60,
--		humidity_min	= 20,
--		humidity_max	= 60,
		y_max           = 300,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 61,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:silver_sandstone_with_turquoise",
		wherein         = {"base_earth:silver_sandstone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 15,
--		heat_min		= 20,
--		heat_max		= 60,
--		humidity_min	= 20,
--		humidity_max	= 60,
		y_max           = 300,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 61,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Vivianite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:vivianite",
		wherein         = {"mapgen_stone", "base_earth:silver_sandstone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Universal

else

-- Blue Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_blue",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Gray Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_gray",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Green Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_green",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Moss Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_moss",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Orange Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_orange",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Purple Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_purple",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Red Agate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:agate_red",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Amazonite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:amazonite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Amber

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:amber",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:amber",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Amethyst

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:amethyst",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:amethyst",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Andesite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:andesite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 10,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Basalt

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:basalt",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Columnar Basalt

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:basalt_columnar",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Black Moonstone

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:black_moonstone",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:black_moonstone",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Calcite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:calcite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 43,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:calcite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 68 * 68 * 68,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 43,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Carnotite

		register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:carnotite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = -300,
		y_min           = -1000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Celestine

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:celestine",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Citrine

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:citrine",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Chrysoprase

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:chrysoprase",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -1000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:chrysoprase",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -1000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Covellite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:covellite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Crocoite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:crocoite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0
		},
	})

-- Erythrite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:erythrite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0
		},
	})

-- Eudialite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:eudialite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Fluorite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:fluorite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Gabbro

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:gabbro",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 20,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Galena

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:galena",
		ore_param2 = 1,
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:galena",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Black Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_black",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Blue Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_blue",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 30,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Gray Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_gray",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_gray",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Green Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_green",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 56,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Pink Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_pink",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 10,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Red Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_red",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -500,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 55,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- White Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_white",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -300,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_white",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -300,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Yellow Granite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:granite_yellow",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 10,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Heliodor

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:heliodor",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = -30,
		y_min           = -500,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:heliodor",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = -30,
		y_min           = -500,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Howlite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:howlite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 1000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Ilvaite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:ilvaite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -100,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Jade

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:jade",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:jade",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Kyanite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:kyanite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 300,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Lapis Lazuli

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:lapis_lazuli",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 80 * 48 * 80,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		ore_param2 = 1,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Blue Limestone

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:limestone_blue",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 300,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- White Limestone

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:limestone_white",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -300,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Marble

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:marble",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -500,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 50,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Morion Quartz

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:morion_quartz",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = -300,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Mudstone

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:mudstone",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 10,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -100,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Black Opal

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:black_opal",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 80 * 80 * 80,
		clust_size      = 4,
		y_max           = -1000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0
		},
	})

-- Fire Opal

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:fire_opal",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 80 * 80 * 80,
		clust_size      = 4,
		y_max           = -1000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0
		},
	})

-- Opal

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:opal",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 80 * 80 * 80,
		clust_size      = 4,
		y_max           = -1000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0
		},
	})

-- Prasiolite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:prasiolite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 50,
		y_min           = -1000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Pumice

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:pumice",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 10,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:pumice",
		wherein         = {"mapgen_water_source"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 10,
		y_max           = 31000,
		y_min           = -1,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Pyrite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:pyrite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 48 * 48 * 48,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = -40,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0
		},
	})

-- Quartz

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:quartz",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = -300,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:quartz",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 68 * 68 * 68,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = -300,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Rose Quartz

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:rose_quartz",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = -300,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Scoria

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:scoria",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Serpentine

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:serpentine",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Slate

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:slate",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 300,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:slate",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 300,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Smokey Quartz

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:smokey_quartz",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 40,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Soapstone

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:soapstone",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 0,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Sodalite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:sodalite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 40,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Sugilite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:sugilite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 30,
		y_min           = -2000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:sugilite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 68 * 68 * 68,
		clust_size      = 7,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 30,
		y_min           = -2000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Travertine

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:travertine",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:travertine",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 70 * 70 * 70,
		clust_size      = 14,
		heat_min		= 41,
		heat_max		= 59,
		humidity_min	= 41,
		humidity_max	= 59,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Yellow Travertine

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:travertine_yellow",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Beige Tuff

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:tuff_beige",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Grey Tuff

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:tuff_grey",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Red Tuff

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:tuff_red",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 14,
		heat_min		= 60,
		heat_max		= 100,
		humidity_min	= 0,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Turquoise

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:turquoise",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 56 * 56 * 56,
		clust_size      = 15,
		heat_min		= 20,
		heat_max		= 60,
		humidity_min	= 20,
		humidity_max	= 60,
		y_max           = 300,
		y_min           = -60,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 61,
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

-- Vivianite

	register_ore_by_climate({
		ore_type        = "blob",
		ore             = "too_many_stones:vivianite",
		wherein         = {"mapgen_stone"},
		clust_scarcity  = 72 * 72 * 72,
		clust_size      = 7,
		heat_min		= 0,
		heat_max		= 100,
		humidity_min	= 60,
		humidity_max	= 100,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			octaves = 1,
			persist = 0.0,
			seed = seed(),
		},
	})

end
