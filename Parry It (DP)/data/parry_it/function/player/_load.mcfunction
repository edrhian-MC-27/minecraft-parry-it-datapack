#> Initialize Parry It Player Scoreboards
# Description:
#   - Sets up necessary scoreboards for managing player use frequency
# Callers:
#   - minecraft:load

scoreboard objectives add .parry_shield_use_delay dummy

scoreboard players set @a .parry_shield_use_delay -1
