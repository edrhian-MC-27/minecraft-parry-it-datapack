#> Parry It Player On Fail
# Description:
#   - Handles the consequences for a player who fails to parry an attack
# Callers:
#   - parry_it:marker/on_fail; as the player associated with the failed parry marker

scoreboard players set @s .parry_shield_damage_resisted 0
scoreboard players operation @s .parry_shield_use_delay = #parry_shield_use_delay_fail .parry_shield_consts

playsound minecraft:entity.villager.hurt master @s ~ ~ ~ 1 1.5
effect clear @s minecraft:resistance
effect clear @s minecraft:strength

scoreboard players operation @s .parry_shield_fail_effects_timer = #parry_shield_fail_effects_time .parry_shield_consts

title @s actionbar {"text":"Parry Failed!","color":"red","bold":true}
