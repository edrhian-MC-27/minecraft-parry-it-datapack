#> Used Parry Shield
# Description:
#   - Handles the effects when the parry shield is used
# Callers:
#   - parry_it:advancement/used_parry_shield.json

tag @s add parry_shield_current_execution
advancement revoke @s only parry_it:used_parry_shield

execute if score @s .parry_shield_use_delay matches 0.. run return run function parry_it:player/on_use_cooldown

playsound block.note_block.bit player @a ~ ~ ~ 1 1.5

# This use delay only prevents the player from double clicking by accident
scoreboard players set @s .parry_shield_use_delay 20

execute at @s run summon marker ~ ~ ~ {Tags:["parry_shield_marker"]}

# Executes parry creeper on a near creeper that is near to explode
execute as @e[type=creeper,scores={.parry_shield_creeper_timer=25..35},limit=1,sort=nearest] at @s \
    run function parry_it:creeper_parry/parry_creeper

tag @s remove parry_shield_current_execution
