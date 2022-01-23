# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-matthew] remove spoken-to
tag @a[tag=victim-of-dialogue-by-matthew] remove victim-of-dialogue-by-matthew
execute as @e[tag=npc-matthew, limit=1] at @s run tp @s ~ ~ ~ 0 0
scoreboard players set @e[tag=npc-stephen, limit=1] dialogue-status 1
scoreboard players set @e[tag=npc-matthew, limit=1] dialogue-status -1
tag @e[tag=npc-matthew, limit=1] remove speaking
