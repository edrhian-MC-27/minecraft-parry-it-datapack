#> Load Creeper parry
# Description:
#   - Creates a scoreboard for managing when creepers are near a targeting player
# Callers:
#   - minecraft:load
scoreboard objectives add .parry_shield_creeper_timer dummy
scoreboard players reset @a .parry_shield_creeper_timer
