# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__safeway_friedchicken] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__safeway_friedchicken] remove victim-of-dialogue-by-__safeway_friedchicken
execute as @e[tag=npc-__safeway_friedchicken, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__safeway_friedchicken, limit=1] remove speaking
