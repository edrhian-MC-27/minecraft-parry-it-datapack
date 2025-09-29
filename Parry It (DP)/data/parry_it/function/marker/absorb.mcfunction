execute positioned ^ ^ ^1 as @p run effect give @s speed 2 2 true
execute positioned ^ ^ ^1 as @p run effect give @s strength 2 2 true
execute positioned ^ ^ ^1 as @p run function parry_it:player/reset_timers

playsound entity.enderman.teleport player @a ~ ~ ~ 1 2
execute as @e[type=marker,tag=parry_shield_marker,distance=..1,sort=nearest,limit=1] run kill @s
kill @s
