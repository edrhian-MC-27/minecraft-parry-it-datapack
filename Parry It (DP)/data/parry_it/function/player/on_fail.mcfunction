#> Parry It Player On Fail
# Description:
#   - Handles the consequences for a player who fails to parry an attack
# Callers:
#   - parry_it:marker/on_fail; as the player associated with the failed parry marker

scoreboard players set @s .parry_shield_damage_resisted 0
scoreboard players set @s .parry_shield_use_delay 20

effect clear @s minecraft:resistance
effect clear @s minecraft:strength
effect give @s minecraft:weakness 5 1 false
effect give @s minecraft:slowness 5 1 false
title @s actionbar {"text":"Parry Failed!","color":"red","bold":true}
