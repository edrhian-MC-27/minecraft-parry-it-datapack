#> Parry It Marker On Fail
# Description:
#   - Handles the failure of a parry attempt when the parry marker expires
# Callers:
#   - parry_it:marker/_step; when the marker age exceeds the limit

execute positioned ~ ~-1 ~ as @p at @s run function parry_it:player/on_fail
kill @s
