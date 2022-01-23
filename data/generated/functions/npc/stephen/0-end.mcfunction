# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-stephen] remove spoken-to
tag @a[tag=victim-of-dialogue-by-stephen] remove victim-of-dialogue-by-stephen
execute as @e[type=villager,tag=npc-stephen, limit=1] at @s run tp @s ~ ~ ~ -135 0
scoreboard players set @e[type=villager,tag=npc-stephen, limit=1] dialogue-status 2
tp @e[type=villager,tag=npc-stephen, limit=1] 794.70 78 -46.50 -14 0
tag @e[type=villager,tag=npc-stephen, limit=1] remove speaking
