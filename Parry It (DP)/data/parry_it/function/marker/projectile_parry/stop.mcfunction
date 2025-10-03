#> Stop Projectile
# Description:
#   - Stops a projectile that is near the parry marker, nullifying its motion
# Callers:
#   - parry_it:marker/projectile_parry/_step; as the projectile

data modify entity @s Motion set value [0, 0, 0]
playsound block.amethyst_block.chime master @a ~ ~ ~ 1 1
execute positioned ^ ^ ^ as @p run function parry_it:player/reset_timers
execute as @e[type=marker,tag=parry_shield_marker,distance=..3,sort=nearest,limit=1] run kill @s
