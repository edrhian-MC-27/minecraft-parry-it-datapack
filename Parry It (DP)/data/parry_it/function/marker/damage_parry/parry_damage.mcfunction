#> Parry Damage
# Description:
#   - Handles the effects when the player successfully parries an attack
# Callers:
#   - parry_it:marker/damage_parry/_step; as nearest player

function parry_it:player/reset_timers
execute as @e[tag=parry_shield_marker,limit=1,sort=nearest] at @s run kill @s

execute as @s at @s anchored eyes positioned ^ ^0.75 ^0.75 run function parry_it:marker/damage_parry/particle

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

effect clear @s minecraft:resistance
effect give @s minecraft:strength 3 1 false

title @s actionbar {"text":"Parry Successful!","color":"gold","bold":true}
