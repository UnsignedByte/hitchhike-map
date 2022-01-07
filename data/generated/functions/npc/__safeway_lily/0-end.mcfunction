# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__safeway_lily] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__safeway_lily] remove victim-of-dialogue-by-__safeway_lily
execute as @e[tag=npc-__safeway_lily, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__safeway_lily, limit=1] remove speaking
