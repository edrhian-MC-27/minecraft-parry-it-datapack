#> Initialize Parry It Shield Constants
# Description:
#   - Sets up a scoreboard for constant values used in calculations
# Callers:
#   - minecraft:load

scoreboard objectives add .parry_shield_consts dummy
scoreboard players set #minus_1 .parry_shield_consts -1
scoreboard players set #one_second .parry_shield_consts 20
scoreboard players set #parry_marker_lifetime .parry_shield_consts 7
scoreboard players set #parry_shield_use_delay_fail .parry_shield_consts 40
scoreboard players operation #parry_shield_fail_effects_time .parry_shield_consts = #parry_shield_use_delay_fail .parry_shield_consts 
scoreboard players operation #parry_shield_fail_effects_time .parry_shield_consts -= #one_second .parry_shield_consts

scoreboard players set #parry_shield_use_delay_success .parry_shield_consts 2

recipe give @a parry_it:parry_shield
