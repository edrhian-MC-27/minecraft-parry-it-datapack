#> Damage parry step
# Description:
#   - Grants resistance effect for a short duration and detects when someone hits the player during the parry window
# Callers:
#   - parry_it:marker/_tick; as nearest player

effect give @s minecraft:resistance 1 5 false

execute if score @s .parry_shield_damage_resisted matches 1.. run function parry_it:marker/damage_parry/parry_damage
