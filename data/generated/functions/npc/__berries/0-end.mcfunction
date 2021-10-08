# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__berries] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__berries] remove victim-of-dialogue-by-__berries
execute as @e[tag=npc-__berries, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__berries, limit=1] remove speaking
