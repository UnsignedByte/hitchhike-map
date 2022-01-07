tag @e[tag=npc-epthonbovat] add selected_npc
execute at @e[tag=npc-epthonbovat,limit=1] run tag @p add npc_selector
scoreboard players set epthon-talking vars 1