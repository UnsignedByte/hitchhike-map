# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-fishjar] remove spoken-to
tag @a[tag=victim-of-dialogue-by-fishjar] remove victim-of-dialogue-by-fishjar
execute as @e[type=villager,tag=npc-fishjar, limit=1] at @s run tp @s ~ ~ ~ 90 0
scoreboard players set @e[type=villager,tag=npc-fishjar, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-fishjar, limit=1] remove speaking
