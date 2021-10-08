# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__beet] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__beet] remove victim-of-dialogue-by-__beet
execute as @e[tag=npc-__beet, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__beet, limit=1] remove speaking
