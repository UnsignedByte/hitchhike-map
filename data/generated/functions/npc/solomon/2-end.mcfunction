# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-solomon] remove spoken-to
tag @a[tag=victim-of-dialogue-by-solomon] remove victim-of-dialogue-by-solomon
execute as @e[type=villager,tag=npc-solomon, limit=1] at @s run tp @s ~ ~ ~ -180 0
scoreboard players set @e[type=villager,tag=npc-solomon, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-solomon, limit=1] remove speaking
