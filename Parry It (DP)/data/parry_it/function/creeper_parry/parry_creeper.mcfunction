#> Parry Creeper
# Description:
#   - Kills instantly the current creeper
# Callers:
#   - parry_it:used_parry_shield
execute as @p run function parry_it:player/reset_timers

damage @s 1000 player_attack by @p
playsound block.anvil.break player @a ~ ~ ~ 1 1

particle end_rod ~ ~ ~ 0 0 0 0.1 5 normal

kill @e[type=marker,limit=1,sort=nearest,tag=parry_shield_marker]
