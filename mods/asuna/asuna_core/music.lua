--[[
  Day or night
]]

music.register_track({
  name = "reparateur",
  length = 200,
  gain = 1.1,
  day = true,
  night = true,
  ymin = -8,
  ymax = 31000,
})

--[[
  Daytime only
]]

for track,length in pairs({
  castlesinthesky = 107,
  firefly = 152,
  blood = 89,
  bathedinthelight = 166,
  roquefortprolog = 85,
  meditatingbeat = 132,
  pond = 142,
}) do
  music.register_track({
    name = track,
    length = length,
    gain = 1,
    day = true,
    night = false,
    ymin = -8,
    ymax = 31000,
  })
end

--[[
  Nighttime only
]]

for track,length in pairs({
  jul = 204,
  skyward = 149,
  thelongwayhome = 171,
  moonlight = 176,
  walkingstars = 172,
  hymn = 73,
  reverie = 136,
}) do
  music.register_track({
    name = track,
    length = length,
    gain = 1,
    day = false,
    night = true,
    ymin = -8,
    ymax = 31000,
  })
end

--[[
  Underground
]]

for track,length in pairs({
  machina = 192,
  tearsinrain = 172,
  screensaver = 113,
  cobalt = 176,
  infinitepeace = 73,
}) do
  music.register_track({
    name = track,
    length = length,
    gain = 1,
    day = true,
    night = true,
    ymin = -31000,
    ymax = -16,
  })
end

--[[
  Biome-specific
]]

--[[music.register_track({
  name = "utopia",
  length = 107,
  gain = 1,
  day = true,
  night = false,
  ymin = 1,
  ymax = 31000,
  biomes = {
    "desert",
    "sandstone",
    "terracotta",
    "fiery",
  }
})]]