mobs:register_mob("mobs_yeti:yeti", {
	stepheight = 3,
	type = "animal",
	passive = false,
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 3, -- shoot for 10 seconds
	dogshoot_count2_max = 5, -- dogfight for 3 seconds
	shoot_interval = 1,
	arrow = "default:snow",
	shoot_offset = 0.8,
	group_attack = true,
	owner_loyal = true,
	attack_npcs = false,
	attack_monsters = true,
	reach = 2,
	damage = 6,
	hp_min = 65,
	hp_max = 95,
	armor = 100,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.5, 0.4},
	visual = "mesh",
	mesh = "Yeti.b3d",
	visual_size = {x = 3.0, y = 3.0},
	textures = {
		{"textureyeti.png"},
		{"textureyeti2.png"},
	},
	child_texture = {
		{"textureyetibaby.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random = "livingcavesmobs_yeti2",
		attack = "livingcavesmobs_yeti3",
                damage = "livingcavesmobs_yeti",

	},
	walk_velocity = 2,
	run_velocity = 3,
        knock_back = false,
	jump = true,
	jump_height = 2,
	pushable = true,
	follow = {"default:apple", "farming:potato", "farming:carrot", "farming:seed_rice", "farming:corn", "farming:beans", "mobs:cheese", "farming:bread", "farming:cabbage", "farming:lettuce", "farming:melon_slice"},
	view_range = 10,
	replace_rate = 10,
--	replace_what = {"livingcaves:icestalagmite", "livingcaves:icestalagmiteend", "livingcaves:icestalagtite", "livingcaves:icestalagtiteend", "livingcaves:icestalagmitelarge", "livingcaves:icestalagmitelargeend", "livingcaves:icestalagtitelarge", "livingcaves:icestalagtitelargeend"},
--	replace_with = "air",
	drops = {
		{name = "wool:white", chance = 1, min = 1, max = 3},
		{name = "wool:grey", chance = 1, min = 1, max = 3},
		{name = "mobs:meat_raw", chance = 1, min = 1, max = 1},
	},
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	fear_height = 4,
	animation = {
		speed_normal = 100,
		stand_speed = 75,
		stand_start = 0,
		stand_end = 100,
		stand2_start = 100,
		stand2_end = 200,
		stand3_start = 200,
		stand3_end = 300,
		walk_start = 300,
		walk_end = 400,
		punch_start = 400,
		punch_end = 500,
                shoot_start = 400,
		shoot_end = 500,
		die_start = 400,
		die_end = 500,
		die_speed = 50,
		die_loop = false,
		die_rotate = true,
	},
	on_rightclick = function(self, clicker)

		if mobs:feed_tame(self, clicker, 8, true, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 0, 25, 0, false, nil) then return end
	end,
})


if not mobs.custom_spawn_livingcavesmobs then
mobs:spawn({
	name = "mobs_yeti:yeti",
	nodes = {"default:ice", "caverealm:thin_ice"},
	min_light = 0,
	interval = 60,
	chance = 2, -- 15000
	active_object_count = 2,
	min_height = -30000,
	max_height = -10,
})
end

mobs:register_egg("mobs_yeti:yeti", ("Yeti"), "ayeti.png")


