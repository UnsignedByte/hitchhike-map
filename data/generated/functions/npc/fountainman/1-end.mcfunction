# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-fountainman] remove spoken-to
tag @a[tag=victim-of-dialogue-by-fountainman] remove victim-of-dialogue-by-fountainman
execute as @e[type=villager,tag=npc-fountainman, limit=1] at @s run tp @s ~ ~ ~ 0 0
scoreboard players set @e[type=villager,tag=npc-fountainman, limit=1] dialogue-status 2
tag @e[type=villager,tag=npc-fountainman, limit=1] remove speaking
