# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-ramen] remove spoken-to
tag @a[tag=victim-of-dialogue-by-ramen] remove victim-of-dialogue-by-ramen
execute as @e[type=villager,tag=npc-ramen, limit=1] at @s run tp @s ~ ~ ~ 90 0
tag @e[type=villager,tag=npc-ramen, limit=1] remove speaking
