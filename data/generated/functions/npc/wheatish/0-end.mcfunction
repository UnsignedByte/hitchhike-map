# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-wheatish] remove spoken-to
tag @a[tag=victim-of-dialogue-by-wheatish] remove victim-of-dialogue-by-wheatish
execute as @e[tag=npc-wheatish, limit=1] at @s run tp @s ~ ~ ~ 180 0
[object Object]
tag @e[tag=npc-wheatish, limit=1] remove speaking
