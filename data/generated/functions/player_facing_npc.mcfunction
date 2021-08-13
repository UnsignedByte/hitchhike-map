execute at @s positioned ^ ^ ^0.13333333333333333 run tag @e[tag=npc,distance=..0.13333333333333333] add player_facing_npc
execute at @s positioned ^ ^ ^0.5333333333333334 run tag @e[tag=npc,distance=..0.26666666666666666] add player_facing_npc
execute at @s positioned ^ ^ ^1.2000000000000002 run tag @e[tag=npc,distance=..0.4] add player_facing_npc
execute at @s positioned ^ ^ ^2.1333333333333337 run tag @e[tag=npc,distance=..0.5333333333333333] add player_facing_npc
execute at @s positioned ^ ^ ^3.3333333333333335 run tag @e[tag=npc,distance=..0.6666666666666666] add player_facing_npc
execute at @s run tag @e[tag=player_facing_npc,sort=nearest,limit=1] add selected_npc
tag @e remove player_facing_npc
execute if entity @e[tag=selected_npc] run tag @s add npc_selector
