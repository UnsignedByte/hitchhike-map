# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__safeway_ramen] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__safeway_ramen] remove victim-of-dialogue-by-__safeway_ramen
execute as @e[tag=npc-__safeway_ramen, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__safeway_ramen, limit=1] remove speaking
