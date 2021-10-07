# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-salmon] remove spoken-to
tag @a[tag=victim-of-dialogue-by-salmon] remove victim-of-dialogue-by-salmon
execute as @e[tag=npc-salmon, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-salmon, limit=1] remove speaking
