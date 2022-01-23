# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-deagol] remove spoken-to
tag @a[tag=victim-of-dialogue-by-deagol] remove victim-of-dialogue-by-deagol
execute as @e[type=villager,tag=npc-deagol, limit=1] at @s run tp @s ~ ~ ~ 90 10
scoreboard players set @e[type=villager,tag=npc-deagol, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-deagol, limit=1] remove speaking
