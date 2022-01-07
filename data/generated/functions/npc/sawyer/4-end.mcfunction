# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-sawyer] remove spoken-to
tag @a[tag=victim-of-dialogue-by-sawyer] remove victim-of-dialogue-by-sawyer
execute as @e[tag=npc-sawyer, limit=1] at @s run tp @s ~ ~ ~ 0 0
execute if score mouse quest-status matches -1 run scoreboard players set @e[tag=npc-sawyer, limit=1] dialogue-status 3
execute unless score mouse quest-status matches -1 run scoreboard players set @e[tag=npc-sawyer, limit=1] dialogue-status 11
tag @e[tag=npc-sawyer, limit=1] remove speaking
