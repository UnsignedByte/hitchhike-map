execute at @s positioned ^ ^ ^0.8888888888888888 run tag @e[tag=npc,distance=..0.8888888888888888] add player_facing_npc
execute at @s positioned ^ ^ ^0.8888888888888888 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.8888888888888888] add player_facing_npc
execute at @s positioned ^ ^ ^1.6666666666666665 run tag @e[tag=npc,distance=..0.7777777777777777] add player_facing_npc
execute at @s positioned ^ ^ ^1.6666666666666665 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.7777777777777777] add player_facing_npc
execute at @s positioned ^ ^ ^2.333333333333333 run tag @e[tag=npc,distance=..0.6666666666666666] add player_facing_npc
execute at @s positioned ^ ^ ^2.333333333333333 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.6666666666666666] add player_facing_npc
execute at @s positioned ^ ^ ^2.8888888888888884 run tag @e[tag=npc,distance=..0.5555555555555556] add player_facing_npc
execute at @s positioned ^ ^ ^2.8888888888888884 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.5555555555555556] add player_facing_npc
execute at @s positioned ^ ^ ^3.333333333333333 run tag @e[tag=npc,distance=..0.4444444444444444] add player_facing_npc
execute at @s positioned ^ ^ ^3.333333333333333 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.4444444444444444] add player_facing_npc
execute at @s positioned ^ ^ ^3.6666666666666665 run tag @e[tag=npc,distance=..0.3333333333333333] add player_facing_npc
execute at @s positioned ^ ^ ^3.6666666666666665 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.3333333333333333] add player_facing_npc
execute at @s positioned ^ ^ ^3.888888888888889 run tag @e[tag=npc,distance=..0.2222222222222222] add player_facing_npc
execute at @s positioned ^ ^ ^3.888888888888889 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.2222222222222222] add player_facing_npc
execute at @s positioned ^ ^ ^4 run tag @e[tag=npc,distance=..0.1111111111111111] add player_facing_npc
execute at @s positioned ^ ^ ^4 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.1111111111111111] add player_facing_npc
execute at @s run tag @e[tag=player_facing_npc,sort=nearest,limit=1] add selected_npc
tag @e remove player_facing_npc
execute if entity @e[tag=selected_npc] run tag @s add npc_selector
