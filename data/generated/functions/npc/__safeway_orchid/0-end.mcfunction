# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__safeway_orchid] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__safeway_orchid] remove victim-of-dialogue-by-__safeway_orchid
execute as @e[tag=npc-__safeway_orchid, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__safeway_orchid, limit=1] remove speaking
