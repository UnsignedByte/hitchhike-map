# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-clownfish] remove spoken-to
tag @a[tag=victim-of-dialogue-by-clownfish] remove victim-of-dialogue-by-clownfish
execute as @e[tag=npc-clownfish, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-clownfish, limit=1] remove speaking
