# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__safeway_pickle] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__safeway_pickle] remove victim-of-dialogue-by-__safeway_pickle
execute as @e[tag=npc-__safeway_pickle, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__safeway_pickle, limit=1] remove speaking
