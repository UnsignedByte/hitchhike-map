# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-erenpan] remove spoken-to
tag @a[tag=victim-of-dialogue-by-erenpan] remove victim-of-dialogue-by-erenpan
execute as @e[tag=npc-erenpan, limit=1] at @s run tp @s ~ ~ ~ 180 60
scoreboard players set @e[tag=npc-erenpan, limit=1] dialogue-status -1
tag @e[tag=npc-erenpan, limit=1] remove speaking
