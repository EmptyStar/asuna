
mobs:spawn({
	name = "mobs_monster:dungeon_master",
	nodes = {"caverealms:hot_cobble"},
	max_light = 12,
	min_light = 0,
	chance = 7000,
	active_object_count = 2,
	max_height = -8000,
	on_spawn = function(self, pos)
		self.hp_max = 70
		self.health = 70
		self.damage = 5
		self.shoot_interval = 1.5
		self.dogshoot_switch = 0
	end
})


