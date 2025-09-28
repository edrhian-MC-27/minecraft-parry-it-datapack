scoreboard players remove @s .parry_shield_protection_time_left 1

execute as @e[type=creeper,scores={.parry_shield_creeper_timer=20..30},limit=1,sort=nearest] at @s run function parry_it:player/parry_creeper
