# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-sam] remove spoken-to
tag @a[tag=victim-of-dialogue-by-sam] remove victim-of-dialogue-by-sam
execute as @e[tag=npc-sam, limit=1] at @s run tp @s ~ ~ ~ 0 0
scoreboard players set @e[tag=npc-sam, limit=1] dialogue-status 1
tag @e[tag=npc-sam, limit=1] remove speaking
