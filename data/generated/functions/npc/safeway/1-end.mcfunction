# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-safeway] remove spoken-to
tag @a[tag=victim-of-dialogue-by-safeway] remove victim-of-dialogue-by-safeway
execute as @e[type=villager,tag=npc-safeway, limit=1] at @s run tp @s ~ ~ ~ 180 0
tag @e[type=villager,tag=npc-safeway, limit=1] remove speaking
