scoreboard objectives add .parry_shield_use_delay dummy
scoreboard objectives add .parry_shield_protection_time_left dummy

scoreboard objectives add .parry_shield_consts dummy
scoreboard players set #minus_1 .parry_shield_consts -1

scoreboard players set @a .parry_shield_use_delay -1
scoreboard players set @a .parry_shield_protection_time_left -1
