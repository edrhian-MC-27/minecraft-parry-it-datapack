#> Used Parry Shield
# Description:
#   - Handles the effects when the parry shield is used
# Callers:
#   - parry_it:advancement/used_parry_shield.json

tag @s add parry_shield_current_execution
advancement revoke @s only parry_it:used_parry_shield

execute if score @s .parry_shield_use_delay matches 0.. run return run function parry_it:player/on_use_cooldown

playsound block.note_block.bit player @s ~ ~ ~ 1 2

# This use delay only prevents the player from double clicking by accident
scoreboard players set @s .parry_shield_use_delay 1000

execute at @s run summon marker ~ ~ ~ {Tags:["parry_shield_marker"]}

# Executes parry creeper on a near creeper that is near to explode
execute as @e[type=creeper,scores={.parry_shield_creeper_timer=0..},limit=1,sort=nearest] at @s \
    if score @s .parry_shield_creeper_timer >= #parry_shield_creeper_minimum_fuse_time .parry_shield_consts \
    run function parry_it:creeper_parry/parry_creeper

tag @s remove parry_shield_current_execution
