execute as @a if score @s .parry_shield_use_delay matches 0.. run scoreboard players remove @s .parry_shield_use_delay 1

execute as @a at @s if score @s .parry_shield_protection_time_left matches 0.. run function parry_it:player/step
