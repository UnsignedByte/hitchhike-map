# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-duanerocque] remove spoken-to
tag @a[tag=victim-of-dialogue-by-duanerocque] remove victim-of-dialogue-by-duanerocque
execute as @e[tag=npc-duanerocque, limit=1] at @s run tp @s ~ ~ ~ 90 50
scoreboard players set @e[tag=npc-duanerocque, limit=1] dialogue-status -1
tag @e[tag=npc-duanerocque, limit=1] remove speaking
