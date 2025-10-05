#> Parry It Marker Tick
# Description:
#   - Increments the age of parry markers and handles expiration/parry_failure
# Callers:
#   - parry_it:marker/_tick; as each parry marker

scoreboard players add @s .parry_shield_marker_age 1
execute if score @s .parry_shield_marker_age matches 20.. run function parry_it:marker/on_fail
