# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__milk] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__milk] remove victim-of-dialogue-by-__milk
execute as @e[tag=npc-__milk, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__milk, limit=1] remove speaking
