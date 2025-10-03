scoreboard players set @s .parry_shield_damage_resisted 0
scoreboard players set @s .parry_shield_use_delay 20

effect clear @s minecraft:resistance
effect clear @s minecraft:strength
effect give @s minecraft:weakness 5 1 false
effect give @s minecraft:slowness 5 1 false
tellraw @s {"text":"You failed to parry the attack.","color":"red","bold":true}
