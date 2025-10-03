#> Initialize Parry It Shield Constants
# Description:
#   - Sets up a scoreboard for constant values used in calculations
# Callers:
#   - minecraft:load

scoreboard objectives add .parry_shield_consts dummy
scoreboard players set #minus_1 .parry_shield_consts -1
