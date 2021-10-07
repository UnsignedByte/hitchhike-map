# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-beet] remove spoken-to
tag @a[tag=victim-of-dialogue-by-beet] remove victim-of-dialogue-by-beet
execute as @e[tag=npc-beet, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-beet, limit=1] remove speaking
