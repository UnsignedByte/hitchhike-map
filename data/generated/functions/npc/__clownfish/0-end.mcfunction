# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__clownfish] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__clownfish] remove victim-of-dialogue-by-__clownfish
execute as @e[tag=npc-__clownfish, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__clownfish, limit=1] remove speaking
