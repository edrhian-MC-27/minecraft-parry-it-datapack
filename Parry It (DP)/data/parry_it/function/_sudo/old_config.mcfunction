tellraw @s ["",{"text":"--- Parry It Configuration ---","bold":true}]

tellraw @s [\
    "Parry Window (current: ",\
    {"score":\
        {"name":"#parry_marker_lifetime","objective":".parry_shield_consts"}},\
    ")",\
    {"click_event":\
        {"action":"run_command","command":"function parry_it:config/remove_parry_marker_lifetime"},\
    "color":"red","text":"[-]"},\
    {"click_event":\
        {"action":"run_command","command":"function parry_it:config/add_parry_marker_lifetime"},\
    "color":"green","text":"[+]"}]

tellraw @s [\
    "Success Cooldown (current: ",\
    {"score":\
        {"name":"#parry_shield_use_delay_success","objective":".parry_shield_consts"}},\
    ")",\
    {"click_event":\
        {"action":"run_command","command":"function parry_it:config/remove_parry_shield_use_delay_success"},\
    "color":"red","text":"[-]"},\
    {"click_event":\
        {"action":"run_command","command":"function parry_it:config/add_parry_shield_use_delay_success"},\
    "color":"green","text":"[+]"}]

tellraw @s [\
    "Fail Cooldown (current: ",\
    {"score":\
        {"name":"#parry_shield_use_delay_fail","objective":".parry_shield_consts"}},\
    ")",\
    {"click_event":\
        {"action":"run_command","command":"function parry_it:config/remove_parry_shield_use_delay_fail"},\
    "color":"red","text":"[-]"},\
    {"click_event":\
        {"action":"run_command","command":"function parry_it:config/add_parry_shield_use_delay_fail"},\
    "color":"green","text":"[+]"}]

tellraw @s [\
    "Creeper Minimum Fuse Time (current: ",\
    {"score":\
        {"name":"#parry_shield_creeper_minimum_fuse_time","objective":".parry_shield_consts"}},\
    ")",\
    {"click_event":\
        {"action":"run_command","command":"function parry_it:config/remove_parry_shield_creeper_minimum_fuse_time"},\
    "color":"red","text":"[-]"},\
    {"click_event":\
        {"action":"run_command","command":"function parry_it:config/add_parry_shield_creeper_minimum_fuse_time"},\
    "color":"green","text":"[+]"}]

scoreboard players operation #parry_shield_fail_effects_time .parry_shield_consts = #parry_shield_use_delay_fail .parry_shield_consts 
scoreboard players operation #parry_shield_fail_effects_time .parry_shield_consts -= #one_second .parry_shield_consts

# Put ------
tellraw @s ["",{"text":"------------------------------","strikethrough":true}]
