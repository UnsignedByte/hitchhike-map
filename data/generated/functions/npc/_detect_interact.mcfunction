say @e[tag=player_facing_npc]
execute positioned ~ ~0 ~ run tag @e[tag=npc,type=villager,distance=..0.3] add player_facing_npc
execute positioned ~ ~0 ~ run particle dust 1 0 0 1 ~ ~ ~
execute positioned ~ ~-0.3 ~ run tag @e[tag=npc,type=villager,distance=..0.3] add player_facing_npc
execute positioned ~ ~-0.3 ~ run particle dust 1 0 0 1 ~ ~ ~
execute positioned ~ ~-0.6 ~ run tag @e[tag=npc,type=villager,distance=..0.3] add player_facing_npc
execute positioned ~ ~-0.6 ~ run particle dust 1 0 0 1 ~ ~ ~
execute positioned ~ ~-0.8999999999999999 ~ run tag @e[tag=npc,type=villager,distance=..0.3] add player_facing_npc
execute positioned ~ ~-0.8999999999999999 ~ run particle dust 1 0 0 1 ~ ~ ~
execute positioned ~ ~-1.2 ~ run tag @e[tag=npc,type=villager,distance=..0.3] add player_facing_npc
execute positioned ~ ~-1.2 ~ run particle dust 1 0 0 1 ~ ~ ~
execute positioned ~ ~-1.5 ~ run tag @e[tag=npc,type=villager,distance=..0.3] add player_facing_npc
execute positioned ~ ~-1.5 ~ run particle dust 1 0 0 1 ~ ~ ~
execute positioned ~ ~-1.7999999999999998 ~ run tag @e[tag=npc,type=villager,distance=..0.3] add player_facing_npc
execute positioned ~ ~-1.7999999999999998 ~ run particle dust 1 0 0 1 ~ ~ ~
execute positioned ~ ~-2.1 ~ run tag @e[tag=npc,type=villager,distance=..0.3] add player_facing_npc
execute positioned ~ ~-2.1 ~ run particle dust 1 0 0 1 ~ ~ ~
scoreboard players add -detect-count npc-interact 1
execute if score -detect-count npc-interact matches ..10 unless entity @e[tag=player_facing_npc] rotated ~ ~ positioned ^ ^ ^0.3 run function generated:npc/_detect_interact
tag @e[tag=player_facing_npc,sort=nearest,limit=1] add selected_npc
