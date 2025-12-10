#> victim_effects
# Description:
#   - Handles the effects when the player is parried by another player
# Callers:
#   - parry_it:marker/damage_parry/parry_damage; as player who was parried/attacker of the parry user

tag @s add curr_parry_shield_victim

title @s actionbar [{"bold":true,"color":"red","text":"You were parried by "},{"color":"dark_red","selector":"@p[distance=..5,limit=1,sort=nearest,tag=!curr_parry_shield_victim]"}]

effect give @s slowness 7 1 false
effect give @s nausea 7 0 false

playsound block.anvil.land player @s ~ ~ ~ 1 1.5

tag @s remove curr_parry_shield_victim
