#> Parry It Player Tick
# Description:
#   - Ticks down the parry shield use delay for players each game tick
# Callers:
#   - minecraft:tick

execute as @a if predicate parry_it:player_eating_or_drinking run scoreboard players set @s .parry_it_eating_safe_timer 2
execute as @a if score @s .parry_it_eating_safe_timer matches 0.. run scoreboard players remove @s .parry_it_eating_safe_timer 1

execute as @a if score @s .parry_it_shield_use_delay matches 0.. run scoreboard players remove @s .parry_it_shield_use_delay 1

execute as @a if score @s .parry_it_shield_use_delay matches 0 run title @s actionbar {"text":"Parry Shield Ready!","color":"green","bold":true}

execute as @a if score @s .parry_it_fail_effects_timer matches 0.. at @s run function parry_it:player/fail/effects
