execute positioned ^ ^ ^1 as @p run function parry_it:player/reset_timers

function parry_it:marker/modify_motion

playsound block.note_block.chime player @a ~ ~ ~ 1 2
execute as @e[type=marker,tag=parry_shield_marker,distance=..1,sort=nearest,limit=1] run kill @s

