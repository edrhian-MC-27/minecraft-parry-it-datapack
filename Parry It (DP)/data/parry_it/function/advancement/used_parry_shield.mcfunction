tag @s add parry_shield_current_execution
advancement revoke @s only parry_it:used_parry_shield
execute if score @s .parry_shield_use_delay matches 0.. run return fail

scoreboard players set @s .parry_shield_use_delay 10

execute at @s run summon marker ~ ~ ~ {Tags:["parry_shield_marker"]}

execute at @s if predicate parry_it:player_prepare_fall_parry run function parry_it:fall_parry/parry_fall

execute as @e[type=creeper,scores={.parry_shield_creeper_timer=25..35},limit=1,sort=nearest] at @s run function parry_it:creeper_parry/parry_creeper

tag @s remove parry_shield_current_execution
