scoreboard players set -detect-count npc-interact 0
execute at @s anchored eyes run function generated:npc/_detect_interact
effect give @e[tag=player_facing_npc] glowing 1 0 true
tag @e remove player_facing_npc
execute if entity @e[tag=selected_npc] run tag @s add npc_selector
say @e[tag=selected_npc]
