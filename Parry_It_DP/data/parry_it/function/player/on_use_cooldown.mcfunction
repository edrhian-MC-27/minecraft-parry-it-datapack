#> Parry It Player On Use Cooldown
# Description:
#   - Handles the consequences for a player who tries to parry while on cooldown
# Callers:
#   - parry_it:used_parry_shield

# playsound minecraft:block.note_block.harp player @s ~ ~ ~ 1 0.5
title @s actionbar {"text":"Parry Shield is on cooldown!","color":"red","bold":true}

