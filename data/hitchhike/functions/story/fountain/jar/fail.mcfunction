scoreboard players set @e[tag=npc-fishjar] dialogue-status 5
tag @e[tag=npc-fishjar] add selected_npc
execute positioned 914 55 -79 run tag @p add npc_selector

kill @e[tag=jar-coin,type=item]

scoreboard players set door fishjar 1

playsound minecraft:block.lava.extinguish neutral @a 914 56 -85 1

particle minecraft:large_smoke 914 56.25 -85 0.25 0.25 0.25 0 20