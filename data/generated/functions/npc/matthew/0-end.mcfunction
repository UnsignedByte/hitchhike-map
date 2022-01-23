# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-matthew] remove spoken-to
tag @a[tag=victim-of-dialogue-by-matthew] remove victim-of-dialogue-by-matthew
execute as @e[type=villager,tag=npc-matthew, limit=1] at @s run tp @s ~ ~ ~ 0 0
scoreboard players set @e[type=villager,tag=npc-stephen, limit=1] dialogue-status 1
scoreboard players set @e[type=villager,tag=npc-matthew, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-matthew, limit=1] remove speaking
