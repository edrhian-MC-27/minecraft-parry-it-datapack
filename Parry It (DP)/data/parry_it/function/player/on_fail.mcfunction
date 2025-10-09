#> Parry It Player On Fail
# Description:
#   - Handles the consequences for a player who fails to parry an attack
# Callers:
#   - parry_it:marker/on_fail; as the player associated with the failed parry marker

scoreboard players set @s .parry_it_dmg_resisted 0
scoreboard players operation @s .parry_it_shield_use_delay = #use_cooldown_fail .parry_it_values

playsound minecraft:entity.villager.hurt master @s ~ ~ ~ 1 1.5
effect clear @s minecraft:resistance
effect clear @s minecraft:strength

scoreboard players operation @s .parry_it_fail_effects_timer = #fail_effects_duration .parry_it_values

title @s actionbar {"text":"Parry Failed!","color":"red","bold":true}
