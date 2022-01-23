# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-sawyer] remove spoken-to
tag @a[tag=victim-of-dialogue-by-sawyer] remove victim-of-dialogue-by-sawyer
execute as @e[type=villager,tag=npc-sawyer, limit=1] at @s run tp @s ~ ~ ~ 0 0
scoreboard players set @e[type=villager,tag=npc-sawyer, limit=1] dialogue-status 1
tag @e[type=villager,tag=npc-sawyer, limit=1] remove speaking
