# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-leonarddinkle] remove spoken-to
tag @a[tag=victim-of-dialogue-by-leonarddinkle] remove victim-of-dialogue-by-leonarddinkle
execute as @e[type=villager,tag=npc-leonarddinkle, limit=1] at @s run tp @s ~ ~ ~ 0 20
scoreboard players set @e[type=villager,tag=npc-leonarddinkle, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-leonarddinkle, limit=1] remove speaking
