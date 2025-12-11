#> Initialize Parry It Marker Scoreboards
# Description:
#   - Sets up necessary scoreboards for managing projectile motion, hit detection, and marker age
# Callers:
#   - minecraft:load

scoreboard objectives add .parry_it_projectile_motion_x dummy
scoreboard objectives add .parry_it_projectile_motion_y dummy
scoreboard objectives add .parry_it_projectile_motion_z dummy

scoreboard objectives add .parry_it_dmg_resisted minecraft.custom:minecraft.damage_resisted
scoreboard players set @a .parry_it_dmg_resisted 0

scoreboard objectives add .parry_it_marker_age dummy
kill @e[type=marker,tag=parry_shield_marker]
