#> Reset Parry It Player Timers
# Description:
#   - Resets the parry shield use delay and damage resisted for a player after a successful parry
# Callers:
#   - parry_it:creeper_parry/parry_creeper; as the player
#   - parry_it:marker/projectile_parry/stop; as the player
#   - parry_it:marker/damage_parry/parry_damage; as the player
#   - parry_it:marker/projectile_parry/absorb; as the player
#   - parry_it:marker/projectile_parry/deflect; as the player

scoreboard players operation @s .parry_it_shield_use_delay = #use_cooldown_success .parry_it_values
scoreboard players set @s .parry_it_dmg_resisted 0
