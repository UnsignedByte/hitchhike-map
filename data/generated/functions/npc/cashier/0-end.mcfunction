# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-cashier] remove spoken-to
tag @a[tag=victim-of-dialogue-by-cashier] remove victim-of-dialogue-by-cashier
execute as @e[tag=npc-cashier, limit=1] at @s run tp @s ~ ~ ~ 180 0
tag @e[tag=npc-cashier, limit=1] remove speaking
