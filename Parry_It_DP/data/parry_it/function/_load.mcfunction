#> Initialize Parry It Shield Constants
# Description:
#   - Sets up a scoreboard for constant values used in calculations
# Callers:
#   - minecraft:load

scoreboard objectives add .parry_it_values dummy
scoreboard players add $first_load .parry_it_values 1
recipe give @a parry_it:parry_shield

execute if score $first_load .parry_it_values matches 1 run function parry_it:_sudo/reset


