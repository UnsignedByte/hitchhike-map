# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-potato] remove spoken-to
tag @a[tag=victim-of-dialogue-by-potato] remove victim-of-dialogue-by-potato
execute as @e[tag=npc-potato, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-potato, limit=1] remove speaking
