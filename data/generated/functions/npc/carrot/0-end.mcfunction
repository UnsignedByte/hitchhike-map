# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-carrot] remove spoken-to
tag @a[tag=victim-of-dialogue-by-carrot] remove victim-of-dialogue-by-carrot
execute as @e[tag=npc-carrot, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-carrot, limit=1] remove speaking
