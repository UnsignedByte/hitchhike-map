# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__safeway_seaweed] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__safeway_seaweed] remove victim-of-dialogue-by-__safeway_seaweed
execute as @e[tag=npc-__safeway_seaweed, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__safeway_seaweed, limit=1] remove speaking
