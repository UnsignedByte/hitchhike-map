scoreboard players operation #tmp checkpoint-id = @s checkpoint-id
execute positioned ~ ~1.375 ~ align xz run tag @a[dx=0,dy=0,dz=0] add checkpoint-candidate
execute as @a[tag=checkpoint-candidate] if score @s checkpoint-id = #tmp checkpoint-id run tag @s remove checkpoint-candidate
scoreboard players operation @a[tag=checkpoint-candidate] checkpoint-id = #tmp checkpoint-id
playsound minecraft:entity.player.levelup player @a[tag=checkpoint-candidate] ~ ~1.375 ~ 0.3
title @a[tag=checkpoint-candidate] actionbar [{"text":"Checkpoint reached!","color":"green"}]
tag @a remove checkpoint-candidate
