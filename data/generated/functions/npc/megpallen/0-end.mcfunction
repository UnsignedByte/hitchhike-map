# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-megpallen] remove spoken-to
tag @a[tag=victim-of-dialogue-by-megpallen] remove victim-of-dialogue-by-megpallen
execute as @e[type=villager,tag=npc-megpallen, limit=1] at @s run tp @s ~ ~ ~ -180 16
scoreboard players set @e[type=villager,tag=npc-megpallen, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-megpallen, limit=1] remove speaking
