# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-cameron] remove spoken-to
tag @a[tag=victim-of-dialogue-by-cameron] remove victim-of-dialogue-by-cameron
execute as @e[tag=npc-cameron, limit=1] at @s run tp @s ~ ~ ~ 180 0
scoreboard players set @e[tag=npc-cameron, limit=1] dialogue-status -1
tag @e[tag=npc-cameron, limit=1] remove speaking
