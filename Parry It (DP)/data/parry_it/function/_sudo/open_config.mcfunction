tellraw @s {"text":"Current Config:","color":"gold","bold":true}
tellraw @s ["Parry Window: ",{"score":{"name":"#parry_marker_lifetime","objective":".parry_shield_consts"}}]
tellraw @s ["Parry Cooldown on Success: ",{"score":{"name":"#parry_shield_use_delay_success","objective":".parry_shield_consts"}}]
tellraw @s ["Parry Cooldown on Fail: ",{"score":{"name":"#parry_shield_use_delay_fail","objective":".parry_shield_consts"}}]
tellraw @s ["Parry Creeper Minimum Fuse Time: ",{"score":{"name":"#parry_shield_creeper_minimum_fuse_time","objective":".parry_shield_consts"}}]

dialog show @s parry_it:dialog_list
