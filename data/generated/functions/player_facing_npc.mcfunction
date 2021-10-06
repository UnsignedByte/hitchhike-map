execute at @s positioned ^ ^ ^0.3 run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^0.3 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^0.3 positioned ~ ~-1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^0.6 run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^0.6 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^0.6 positioned ~ ~-1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^0.8999999999999999 run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^0.8999999999999999 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^0.8999999999999999 positioned ~ ~-1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^1.2 run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^1.2 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^1.2 positioned ~ ~-1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^1.5 run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^1.5 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^1.5 positioned ~ ~-1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^1.8 run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^1.8 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^1.8 positioned ~ ~-1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^2.1 run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^2.1 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^2.1 positioned ~ ~-1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^2.4 run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^2.4 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^2.4 positioned ~ ~-1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^2.6999999999999997 run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^2.6999999999999997 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^2.6999999999999997 positioned ~ ~-1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^2.9999999999999996 run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^2.9999999999999996 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s positioned ^ ^ ^2.9999999999999996 positioned ~ ~-1 ~ run tag @e[tag=npc,distance=..0.3] add player_facing_npc
execute at @s run tag @e[tag=player_facing_npc,sort=nearest,limit=1] add selected_npc
tag @e remove player_facing_npc
execute if entity @e[tag=selected_npc] run tag @s add npc_selector
