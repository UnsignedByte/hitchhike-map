# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__safeway_beet] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__safeway_beet] remove victim-of-dialogue-by-__safeway_beet
execute as @e[type=villager,tag=npc-__safeway_beet, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[type=villager,tag=npc-__safeway_beet, limit=1] remove speaking
