# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__bamboo] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__bamboo] remove victim-of-dialogue-by-__bamboo
execute as @e[tag=npc-__bamboo, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__bamboo, limit=1] remove speaking
