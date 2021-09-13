# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-marc] remove spoken-to
tag @a[tag=victim-of-dialogue-by-marc] remove victim-of-dialogue-by-marc
execute as @e[tag=npc-marc, limit=1] at @s run tp @s ~ ~ ~ 180 0
scoreboard players set @e[tag=npc-marc, limit=1] dialogue-status 0
tag @e[tag=npc-marc, limit=1] remove speaking
