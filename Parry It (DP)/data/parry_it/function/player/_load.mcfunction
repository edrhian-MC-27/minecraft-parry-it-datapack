#> Initialize Parry It Player Scoreboards
# Description:
#   - Sets up necessary scoreboards for managing player use frequency
# Callers:
#   - minecraft:load

scoreboard objectives add .parry_it_shield_use_delay dummy
scoreboard objectives add .parry_it_fail_effects_timer dummy

scoreboard players set @a .parry_it_shield_use_delay -1
scoreboard players set @a .parry_it_fail_effects_timer -1
