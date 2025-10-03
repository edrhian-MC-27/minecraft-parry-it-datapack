scoreboard objectives add .parry_shield_projectile_motion_x dummy
scoreboard objectives add .parry_shield_projectile_motion_y dummy
scoreboard objectives add .parry_shield_projectile_motion_z dummy
scoreboard objectives add .parry_shield_damage_resisted minecraft.custom:minecraft.damage_resisted
scoreboard players set @a .parry_shield_damage_resisted 0

scoreboard objectives add .parry_shield_marker_age dummy
kill @e[type=marker,tag=parry_shield_marker]
