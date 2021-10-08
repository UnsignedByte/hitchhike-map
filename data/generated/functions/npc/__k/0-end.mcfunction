# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__k] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__k] remove victim-of-dialogue-by-__k
execute as @e[tag=npc-__k, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__k, limit=1] remove speaking
