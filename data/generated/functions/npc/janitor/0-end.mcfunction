# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-janitor] remove spoken-to
tag @a[tag=victim-of-dialogue-by-janitor] remove victim-of-dialogue-by-janitor
execute as @e[tag=npc-janitor, limit=1] at @s run tp @s ~ ~ ~ -35 20
scoreboard players set @e[tag=npc-janitor, limit=1] dialogue-status 1
tag @e[tag=npc-janitor, limit=1] remove speaking
