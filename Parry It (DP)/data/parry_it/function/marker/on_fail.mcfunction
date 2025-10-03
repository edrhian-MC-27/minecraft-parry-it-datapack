playsound minecraft:entity.villager.hurt master @a ~ ~ ~ 1 1
execute positioned ~ ~-1 ~ as @p at @s run function parry_it:player/on_fail
kill @s
