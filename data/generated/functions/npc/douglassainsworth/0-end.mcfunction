# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-douglassainsworth] remove spoken-to
tag @a[tag=victim-of-dialogue-by-douglassainsworth] remove victim-of-dialogue-by-douglassainsworth
execute as @e[type=villager,tag=npc-douglassainsworth, limit=1] at @s run tp @s ~ ~ ~ 0 10
scoreboard players set @e[type=villager,tag=npc-douglassainsworth, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-douglassainsworth, limit=1] remove speaking
