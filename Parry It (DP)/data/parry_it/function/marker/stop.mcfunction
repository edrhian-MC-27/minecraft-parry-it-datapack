data modify entity @s Motion set value [0, 0, 0]
execute positioned ^ ^ ^1 as @p run function parry_it:player/reset_timers
