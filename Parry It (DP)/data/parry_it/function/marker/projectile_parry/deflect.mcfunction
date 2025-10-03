#> Deflect Projectile
# Description:
#   - Deflects a projectile that is near the parry marker
# Callers:
#   - parry_it:marker/projectile_parry/_step; as the projectile

execute positioned ^ ^ ^ as @p run function parry_it:player/reset_timers

function parry_it:marker/projectile_parry/modify_motion

playsound block.note_block.chime player @a ~ ~ ~ 1 2
execute as @e[type=marker,tag=parry_shield_marker,distance=..3,sort=nearest,limit=1] run kill @s

