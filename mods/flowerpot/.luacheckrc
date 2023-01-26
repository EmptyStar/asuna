quiet = 1
codes = true

exclude_files = {
	".luarocks/*",
	"worldeditadditions/utils/bit.lua"
}


ignore = {
	"631", "61[124]",
	"542",
	"412",
	"321/bit",
	"21[123]"
}

-- Read-write globals (i.e. they can be defined)
globals = {
	"flowerpot"
}
-- Read-only globals
read_globals = {
	"minetest",
	"default"
}
std = "max"
