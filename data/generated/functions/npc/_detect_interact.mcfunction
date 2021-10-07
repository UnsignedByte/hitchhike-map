execute positioned ~ ~-2.1 ~ run tag @e[tag=npc,type=villager,distance=..0.3] add player_facing_npc
execute positioned ~ ~-1.7999999999999998 ~ run tag @e[tag=npc,type=villager,distance=..0.3] add player_facing_npc
execute positioned ~ ~-1.5 ~ run tag @e[tag=npc,type=villager,distance=..0.3] add player_facing_npc
execute positioned ~ ~-1.2 ~ run tag @e[tag=npc,type=villager,distance=..0.3] add player_facing_npc
execute positioned ~ ~-0.8999999999999999 ~ run tag @e[tag=npc,type=villager,distance=..0.3] add player_facing_npc
execute positioned ~ ~-0.6 ~ run tag @e[tag=npc,type=villager,distance=..0.3] add player_facing_npc
execute positioned ~ ~-0.3 ~ run tag @e[tag=npc,type=villager,distance=..0.3] add player_facing_npc
execute positioned ~ ~0 ~ run tag @e[tag=npc,type=villager,distance=..0.3] add player_facing_npc
scoreboard players add -detect-count npc-interact 1
tag @e[tag=player_facing_npc,sort=nearest,limit=1] add selected_npc
execute if score -detect-count npc-interact matches ..10 unless entity @e[tag=player_facing_npc] rotated ~ ~ positioned ^ ^ ^0.3 run function generated:npc/_detect_interact
