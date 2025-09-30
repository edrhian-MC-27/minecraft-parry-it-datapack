execute store result score @s .parry_shield_projectile_motion_x run data get entity @s Motion[0] 1000
execute store result score @s .parry_shield_projectile_motion_y run data get entity @s Motion[1] 1000
execute store result score @s .parry_shield_projectile_motion_z run data get entity @s Motion[2] 1000

scoreboard players operation @s .parry_shield_projectile_motion_x *= #minus_1 .parry_shield_consts
scoreboard players operation @s .parry_shield_projectile_motion_y *= #minus_1 .parry_shield_consts
scoreboard players operation @s .parry_shield_projectile_motion_z *= #minus_1 .parry_shield_consts

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s .parry_shield_projectile_motion_x
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s .parry_shield_projectile_motion_y
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s .parry_shield_projectile_motion_z
