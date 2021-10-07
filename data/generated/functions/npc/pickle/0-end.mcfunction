# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-pickle] remove spoken-to
tag @a[tag=victim-of-dialogue-by-pickle] remove victim-of-dialogue-by-pickle
execute as @e[tag=npc-pickle, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-pickle, limit=1] remove speaking
