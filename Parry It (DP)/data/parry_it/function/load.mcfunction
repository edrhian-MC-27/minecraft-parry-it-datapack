scoreboard objectives add .parry_shield_use_delay dummy
scoreboard objectives add .parry_shield_protection_time_left dummy

scoreboard objectives add .parry_shield_marker_age dummy

scoreboard objectives add .parry_shield_projectile_motion_x dummy
scoreboard objectives add .parry_shield_projectile_motion_y dummy
scoreboard objectives add .parry_shield_projectile_motion_z dummy

scoreboard objectives add .parry_shield_creeper_timer dummy

scoreboard objectives add .parry_shield_fall_distance dummy
scoreboard objectives add .parry_shield_fall_protection_time_left dummy

scoreboard objectives add .parry_shield_consts dummy

scoreboard players set #minus_1 .parry_shield_consts -1
scoreboard players set @a .parry_shield_use_delay -1
scoreboard players set @a .parry_shield_protection_time_left -1
scoreboard players reset @a .parry_shield_creeper_timer


kill @e[type=marker,tag=parry_shield_marker]
