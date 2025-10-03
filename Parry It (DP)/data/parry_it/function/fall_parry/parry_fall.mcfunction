#> Parry Fall
# Description:
#   - Grants resistance effect if the player is falling from a high distance and is about to hit the ground
# Callers:
#   - parry_it:used_parry_shield
execute store result score @s .parry_shield_fall_distance run data get entity @s fall_distance 1

execute if score @s .parry_shield_fall_distance matches 3.. \
    unless block ~ ~-1.5 ~ air run effect give @s resistance 1 255

execute if score @s .parry_shield_fall_distance matches 45.. \
    unless block ~ ~-2.5 ~ air run effect give @s resistance 1 255

execute if score @s .parry_shield_fall_distance matches 100.. \
    unless block ~ ~-3.5 ~ air run effect give @s resistance 1 255
