execute as @e[type=marker,tag=parry_shield_marker] at @s run function parry_it:marker/_step
execute as @e[type=marker,tag=parry_shield_marker] at @s run function parry_it:marker/projectile_parry/_step
execute as @e[type=marker,tag=parry_shield_marker] at @s positioned ~ ~-1 ~ as @p run function parry_it:marker/damage_parry/_step


