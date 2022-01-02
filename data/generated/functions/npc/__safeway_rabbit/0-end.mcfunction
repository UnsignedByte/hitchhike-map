# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__safeway_rabbit] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__safeway_rabbit] remove victim-of-dialogue-by-__safeway_rabbit
execute as @e[tag=npc-__safeway_rabbit, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__safeway_rabbit, limit=1] remove speaking
