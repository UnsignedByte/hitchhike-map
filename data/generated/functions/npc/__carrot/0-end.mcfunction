# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__carrot] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__carrot] remove victim-of-dialogue-by-__carrot
execute as @e[tag=npc-__carrot, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__carrot, limit=1] remove speaking
