# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-clothescashier] remove spoken-to
tag @a[tag=victim-of-dialogue-by-clothescashier] remove victim-of-dialogue-by-clothescashier
execute as @e[tag=npc-clothescashier, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-clothescashier, limit=1] remove speaking
