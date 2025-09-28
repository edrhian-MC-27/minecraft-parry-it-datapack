execute as @a if score @s .parry_shield_use_delay matches 0.. run scoreboard players remove @s .parry_shield_use_delay 1

execute as @a at @s if score @s .parry_shield_protection_time_left matches 0.. run function parry_it:player/step

execute as @e[type=marker,tag=parry_shield_marker] at @s run function parry_it:marker/step

execute as @e[type=creeper,predicate=parry_it:creeper_is_targeting] at @s if entity @e[type=player,distance=..3] run scoreboard players add @s .parry_shield_creeper_timer 1

