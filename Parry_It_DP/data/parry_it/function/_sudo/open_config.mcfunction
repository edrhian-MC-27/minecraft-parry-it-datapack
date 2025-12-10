tellraw @s {"text":"Current Config:","color":"gold","bold":true}
tellraw @s ["Parry Window: ",{"score":{"name":"#marker_lifetime","objective":".parry_it_values"}}]
tellraw @s ["Parry Cooldown on Success: ",{"score":{"name":"#use_cooldown_success","objective":".parry_it_values"}}]
tellraw @s ["Parry Cooldown on Fail: ",{"score":{"name":"#use_cooldown_fail","objective":".parry_it_values"}}]
tellraw @s ["Parry Creeper Minimum Fuse Time: ",{"score":{"name":"#creeper_min_fuse_time","objective":".parry_it_values"}}]

dialog show @s parry_it:dialog_list
