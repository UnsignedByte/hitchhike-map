# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-stephen] remove spoken-to
tag @a[tag=victim-of-dialogue-by-stephen] remove victim-of-dialogue-by-stephen
execute as @e[type=villager,tag=npc-stephen, limit=1] at @s run tp @s ~ ~ ~ -135 0
scoreboard players set @e[type=villager,tag=npc-matthew, limit=1] dialogue-status 1
scoreboard players set @e[type=villager,tag=npc-stephen, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-stephen, limit=1] remove speaking
