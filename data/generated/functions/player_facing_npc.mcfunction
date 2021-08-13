execute at @s positioned ^ ^ ^1 run tag @e[tag=npc,distance=..1] add player_facing_npc
execute at @s positioned ^ ^ ^1 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..1] add player_facing_npc
execute at @s positioned ^ ^ ^1.8571428571428572 run tag @e[tag=npc,distance=..0.8571428571428571] add player_facing_npc
execute at @s positioned ^ ^ ^1.8571428571428572 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.8571428571428571] add player_facing_npc
execute at @s positioned ^ ^ ^2.571428571428571 run tag @e[tag=npc,distance=..0.7142857142857142] add player_facing_npc
execute at @s positioned ^ ^ ^2.571428571428571 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.7142857142857142] add player_facing_npc
execute at @s positioned ^ ^ ^3.1428571428571423 run tag @e[tag=npc,distance=..0.5714285714285714] add player_facing_npc
execute at @s positioned ^ ^ ^3.1428571428571423 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.5714285714285714] add player_facing_npc
execute at @s positioned ^ ^ ^3.5714285714285707 run tag @e[tag=npc,distance=..0.42857142857142855] add player_facing_npc
execute at @s positioned ^ ^ ^3.5714285714285707 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.42857142857142855] add player_facing_npc
execute at @s positioned ^ ^ ^3.8571428571428563 run tag @e[tag=npc,distance=..0.2857142857142857] add player_facing_npc
execute at @s positioned ^ ^ ^3.8571428571428563 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.2857142857142857] add player_facing_npc
execute at @s positioned ^ ^ ^3.999999999999999 run tag @e[tag=npc,distance=..0.14285714285714285] add player_facing_npc
execute at @s positioned ^ ^ ^3.999999999999999 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.14285714285714285] add player_facing_npc
execute at @s run tag @e[tag=player_facing_npc,sort=nearest,limit=1] add selected_npc
tag @e remove player_facing_npc
execute if entity @e[tag=selected_npc] run tag @s add npc_selector
