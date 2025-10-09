scoreboard players remove @s .parry_it_fail_effects_timer 1

effect give @s minecraft:weakness 1 1 false
effect give @s minecraft:slowness 1 1 false

execute as @s at @s anchored eyes positioned ^ ^1.5 ^ run function parry_it:player/fail/particle

execute if score @s .parry_it_fail_effects_timer matches -1 run effect clear @s minecraft:weakness
execute if score @s .parry_it_fail_effects_timer matches -1 run effect clear @s minecraft:slowness
