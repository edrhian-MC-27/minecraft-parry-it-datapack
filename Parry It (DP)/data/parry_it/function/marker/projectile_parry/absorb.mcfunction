#> Absorb Projectile
# Description:
#   - Absorbs (kills) a projectile that is near the parry marker, granting temporary buffs to the player
# Callers:
#   - parry_it:marker/projectile_parry/_step; as the projectile

execute positioned ^ ^ ^ as @p run effect give @s speed 2 1 true
execute positioned ^ ^ ^ as @p run effect give @s strength 2 2 true
execute positioned ^ ^ ^ as @p run function parry_it:player/reset_timers

execute as @s at @s facing entity @p eyes run function parry_it:marker/projectile_parry/particle

playsound entity.enderman.teleport player @a ~ ~ ~ 1 2
execute as @e[type=marker,tag=parry_shield_marker,distance=..3,sort=nearest,limit=1] run kill @s
kill @s
