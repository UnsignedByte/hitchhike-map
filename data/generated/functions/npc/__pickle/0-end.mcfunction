# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__pickle] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__pickle] remove victim-of-dialogue-by-__pickle
execute as @e[tag=npc-__pickle, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__pickle, limit=1] remove speaking
