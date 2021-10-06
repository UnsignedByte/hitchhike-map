execute at @s positioned ^ ^ ^0.75 run tag @e[tag=npc,distance=..0.75] add player_facing_npc
execute at @s positioned ^ ^ ^0.75 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.75] add player_facing_npc
execute at @s positioned ^ ^ ^0.75 positioned ~ ~-1 ~ run tag @e[tag=npc,distance=..0.75] add player_facing_npc
execute at @s positioned ^ ^ ^1.5 run tag @e[tag=npc,distance=..0.75] add player_facing_npc
execute at @s positioned ^ ^ ^1.5 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.75] add player_facing_npc
execute at @s positioned ^ ^ ^1.5 positioned ~ ~-1 ~ run tag @e[tag=npc,distance=..0.75] add player_facing_npc
execute at @s positioned ^ ^ ^2.25 run tag @e[tag=npc,distance=..0.75] add player_facing_npc
execute at @s positioned ^ ^ ^2.25 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.75] add player_facing_npc
execute at @s positioned ^ ^ ^2.25 positioned ~ ~-1 ~ run tag @e[tag=npc,distance=..0.75] add player_facing_npc
execute at @s positioned ^ ^ ^3 run tag @e[tag=npc,distance=..0.75] add player_facing_npc
execute at @s positioned ^ ^ ^3 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.75] add player_facing_npc
execute at @s positioned ^ ^ ^3 positioned ~ ~-1 ~ run tag @e[tag=npc,distance=..0.75] add player_facing_npc
execute at @s run tag @e[tag=player_facing_npc,sort=nearest,limit=1] add selected_npc
tag @e remove player_facing_npc
execute if entity @e[tag=selected_npc] run tag @s add npc_selector
