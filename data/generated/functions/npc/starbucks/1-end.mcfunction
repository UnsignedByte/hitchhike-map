# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-starbucks] remove spoken-to
tag @a[tag=victim-of-dialogue-by-starbucks] remove victim-of-dialogue-by-starbucks
execute as @e[tag=npc-starbucks, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-starbucks, limit=1] remove speaking
