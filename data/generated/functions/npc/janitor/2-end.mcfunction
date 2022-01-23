# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-janitor] remove spoken-to
tag @a[tag=victim-of-dialogue-by-janitor] remove victim-of-dialogue-by-janitor
execute as @e[type=villager,tag=npc-janitor, limit=1] at @s run tp @s ~ ~ ~ -35 20
tag @e[type=villager,tag=npc-janitor, limit=1] remove speaking
