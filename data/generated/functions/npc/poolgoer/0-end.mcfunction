# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-poolgoer] remove spoken-to
tag @a[tag=victim-of-dialogue-by-poolgoer] remove victim-of-dialogue-by-poolgoer
execute as @e[tag=npc-poolgoer, limit=1] at @s run tp @s ~ ~ ~ -180 20
scoreboard players set @e[tag=npc-poolgoer, limit=1] dialogue-status -1
tag @e[tag=npc-poolgoer, limit=1] remove speaking
