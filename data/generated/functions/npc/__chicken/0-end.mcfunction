# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__chicken] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__chicken] remove victim-of-dialogue-by-__chicken
execute as @e[tag=npc-__chicken, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__chicken, limit=1] remove speaking
