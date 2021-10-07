# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-bamboo] remove spoken-to
tag @a[tag=victim-of-dialogue-by-bamboo] remove victim-of-dialogue-by-bamboo
execute as @e[tag=npc-bamboo, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-bamboo, limit=1] remove speaking
