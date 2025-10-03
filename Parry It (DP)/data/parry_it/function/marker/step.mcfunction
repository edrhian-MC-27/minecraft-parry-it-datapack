scoreboard players add @s .parry_shield_marker_age 1
execute if score @s .parry_shield_marker_age matches 7.. run function parry_it:marker/on_fail
