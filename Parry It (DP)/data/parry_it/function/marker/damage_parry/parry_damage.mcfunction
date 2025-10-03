function parry_it:player/reset_timers
execute as @e[tag=parry_shield_marker,limit=1,sort=nearest] at @s run kill @s

effect clear @s minecraft:resistance
effect give @s minecraft:strength 3 1 false
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

tellraw @s {"text":"You parried the attack!","color":"gold","bold":true}
