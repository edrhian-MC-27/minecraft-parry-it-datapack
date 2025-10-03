#> Parry It Player Tick
# Description:
#   - Ticks down the parry shield use delay for players each game tick
# Callers:
#   - minecraft:tick

execute as @a if score @s .parry_shield_use_delay matches 0.. run scoreboard players remove @s .parry_shield_use_delay 1
