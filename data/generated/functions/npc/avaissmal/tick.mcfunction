tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-avaissmal
tag @a[tag=victim-of-dialogue-by-avaissmal, limit=1] remove npc_selector
tag @s add speaking
scoreboard players set dialogue-begun dialogue-status 0
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-avaissmal, tag=!spoken-to, limit=1] add spoken-to
tag @a[tag=victim-of-dialogue-by-avaissmal, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-avaissmal
execute unless score dialogue-begun dialogue-status matches 1 run tag @s remove speaking
