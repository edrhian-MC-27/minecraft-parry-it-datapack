execute store result score @s .parry_shield_fall_distance run data get entity @s fall_distance 1

execute if score @s .parry_shield_fall_distance matches 3.. unless score @s .parry_shield_fall_protection_time_left matches 0.. run scoreboard players set @s .parry_shield_fall_protection_time_left 1
