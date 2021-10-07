scoreboard players set -detect-count npc-interact 0
execute at @s run function generated:npc/_detect_interact
tag @e remove player_facing_npc
execute if entity @e[tag=selected_npc] run tag @s add npc_selector
