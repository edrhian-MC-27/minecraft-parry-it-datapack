#> Used Parry Shield
# Description:
#   - Handles the effects when the parry shield is used
# Callers:
#   - parry_it:advancement/used_parry_shield.json

tag @s add parry_shield_current_execution
advancement revoke @s only parry_it:used_parry_shield

execute if score @s .parry_it_eating_safe_timer matches 0.. run return run function parry_it:player/on_use_eating
execute if score @s .parry_it_shield_use_delay matches 0.. run return run function parry_it:player/on_use_cooldown

# playsound block.note_block.hat player @s ~ ~ ~ 1 1.5

# This use delay only prevents the player from double clicking by accident
# Should be higher, but there's a delay reset problem when playing in multiplayer, so it will be 20 until the problem is resolved
scoreboard players set @s .parry_it_shield_use_delay 20

execute at @s run summon marker ~ ~ ~ {Tags:["parry_shield_marker"]}

# Executes parry creeper on a near creeper that is near to explode
execute as @e[type=creeper,scores={.parry_it_creeper_timer=0..},limit=1,sort=nearest] at @s \
    if score @s .parry_it_creeper_timer >= #creeper_min_fuse_time .parry_it_values \
    run function parry_it:creeper_parry/parry_creeper

tag @s remove parry_shield_current_execution
