execute at @s positioned ^ ^ ^0.25 run tag @e[tag=npc,distance=..0.25] add player_facing_npc
execute at @s positioned ^ ^ ^1 run tag @e[tag=npc,distance=..0.5] add player_facing_npc
execute at @s positioned ^ ^ ^2.25 run tag @e[tag=npc,distance=..0.75] add player_facing_npc
execute at @s run tag @e[tag=player_facing_npc,sort=nearest,limit=1] add selected_npc
tag @e remove player_facing_npc
