# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__salmon] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__salmon] remove victim-of-dialogue-by-__salmon
execute as @e[tag=npc-__salmon, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__salmon, limit=1] remove speaking
