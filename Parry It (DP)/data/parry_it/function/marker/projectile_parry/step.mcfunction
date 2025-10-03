execute as @a at @s anchored eyes run tp @e[tag=parry_shield_marker,limit=1,sort=nearest,distance=..3] ~ ~1 ~

particle dust{color:[1.000,0.000,0.000],scale:0.5} ~ ~ ~ 0 0 0 1 0 normal

execute as @e[type=#parry_it:deflectable,distance=..2.5,limit=1,sort=nearest] if predicate parry_it:entity_on_ground run function parry_it:marker/projectile_parry/deflect
execute as @e[type=#parry_it:absorbable,distance=..2.5,limit=1,sort=nearest] if predicate parry_it:entity_on_ground run function parry_it:marker/projectile_parry/absorb
execute as @e[type=#parry_it:stopable,distance=..2.5,limit=1,sort=nearest] if predicate parry_it:entity_on_ground run function parry_it:marker/projectile_parry/stop
