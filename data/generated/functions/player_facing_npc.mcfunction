execute at @s positioned ^ ^ ^1.3333333333333333 run tag @e[tag=npc,distance=..1.3333333333333333] add player_facing_npc
execute at @s positioned ^ ^ ^1.3333333333333333 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..1.3333333333333333] add player_facing_npc
execute at @s positioned ^ ^ ^2.4 run tag @e[tag=npc,distance=..1.0666666666666667] add player_facing_npc
execute at @s positioned ^ ^ ^2.4 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..1.0666666666666667] add player_facing_npc
execute at @s positioned ^ ^ ^3.2 run tag @e[tag=npc,distance=..0.8] add player_facing_npc
execute at @s positioned ^ ^ ^3.2 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.8] add player_facing_npc
execute at @s positioned ^ ^ ^3.7333333333333334 run tag @e[tag=npc,distance=..0.5333333333333333] add player_facing_npc
execute at @s positioned ^ ^ ^3.7333333333333334 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.5333333333333333] add player_facing_npc
execute at @s positioned ^ ^ ^4 run tag @e[tag=npc,distance=..0.26666666666666666] add player_facing_npc
execute at @s positioned ^ ^ ^4 positioned ~ ~1 ~ run tag @e[tag=npc,distance=..0.26666666666666666] add player_facing_npc
execute at @s run tag @e[tag=player_facing_npc,sort=nearest,limit=1] add selected_npc
tag @e remove player_facing_npc
execute if entity @e[tag=selected_npc] run tag @s add npc_selector
