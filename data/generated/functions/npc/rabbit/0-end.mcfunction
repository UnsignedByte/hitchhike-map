# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-rabbit] remove spoken-to
tag @a[tag=victim-of-dialogue-by-rabbit] remove victim-of-dialogue-by-rabbit
execute as @e[tag=npc-rabbit, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-rabbit, limit=1] remove speaking
