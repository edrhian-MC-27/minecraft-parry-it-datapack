#> Parry It Give Shield
# Description:
#   - Gives the player a parry shield item with custom model and data necessary for parrying
# Callers:
#   - only by chat command

give @p rabbit_hide[item_model="shield",custom_data={parry_shield:1b},consumable={consume_seconds:3600,animation:"block",has_consume_particles:false}] 1
