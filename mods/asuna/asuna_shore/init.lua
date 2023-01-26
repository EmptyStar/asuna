-- Register shore biomes with vertical blend
for _,biome in ipairs(asuna.biome_groups.shore) do
  local def = asuna.biomes[biome].generate_definition()
  def.vertical_blend = 1
  minetest.register_biome(def)
end

-- Register shore decor
minetest.register_decoration(asuna.biome_groups.shore.inject_decoration({
  deco_type = "simple",
  place_on = "default:sand",
  decoration = {"default:marram_grass_1","default:marram_grass_2","default:marram_grass_3"},
  y_min = 1,
  y_max = 2,
  sidelen = 16,
  fill_ratio = 0.024,
}))