# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-apple_sale] remove spoken-to
tag @a[tag=victim-of-dialogue-by-apple_sale] remove victim-of-dialogue-by-apple_sale
execute as @e[tag=npc-apple_sale, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-apple_sale, limit=1] remove speaking