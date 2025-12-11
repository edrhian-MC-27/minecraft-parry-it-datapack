scoreboard objectives remove .parry_it_values 
scoreboard objectives remove .parry_it_creeper_timer 
scoreboard objectives remove .parry_it_projectile_motion_x 
scoreboard objectives remove .parry_it_projectile_motion_y 
scoreboard objectives remove .parry_it_projectile_motion_z 
scoreboard objectives remove .parry_it_dmg_resisted
scoreboard objectives remove .parry_it_marker_age 
scoreboard objectives remove .parry_it_shield_use_delay 
scoreboard objectives remove .parry_it_fail_effects_timer 
scoreboard objectives remove .parry_it_eating_safe_timer

kill @e[type=marker,tag=parry_shield_marker]

datapack disable "file/Parry_It_DP"

reload
