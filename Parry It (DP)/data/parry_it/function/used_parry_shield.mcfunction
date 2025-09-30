tag @s add parry_shield_current_execution
advancement revoke @s only parry_it:used_parry_shield
execute if score @s .parry_shield_use_delay matches 0.. run return fail

# tellraw @s used_parry_shield

scoreboard players set @s .parry_shield_protection_time_left 7
scoreboard players set @s .parry_shield_use_delay 10

execute at @s run summon marker ~ ~ ~ {Tags:["parry_shield_marker"]}
tag @s remove parry_shield_current_execution
