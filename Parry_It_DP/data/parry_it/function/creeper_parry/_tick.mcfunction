#> Tick Crepper Parry
# Description:
#   - Updates the score of creepers in the creeper_timer scoreboard
# Callers:
#   - minecraft:tick
execute as @e[type=creeper,predicate=parry_it:creeper_is_targeting] \
    at @s if entity @e[type=player,distance=..3] \
    run return run scoreboard players add @s .parry_it_creeper_timer 1

execute as @e[type=creeper,predicate=parry_it:creeper_is_targeting] \
    at @s if entity @e[type=player,distance=5..] \
    run scoreboard players reset @s .parry_it_creeper_timer
