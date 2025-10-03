#> Tick Crepper Parry
# Description:
#   - Updates the score of creepers in the creeper_timer scoreboard
# Callers:
#   - minecraft:tick
execute as @e[type=creeper,predicate=parry_it:creeper_is_targeting] \
    at @s if entity @e[type=player,distance=..3] \
    run scoreboard players add @s .parry_shield_creeper_timer 1
