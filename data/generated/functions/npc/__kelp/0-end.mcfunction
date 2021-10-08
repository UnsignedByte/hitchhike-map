# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__kelp] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__kelp] remove victim-of-dialogue-by-__kelp
execute as @e[tag=npc-__kelp, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__kelp, limit=1] remove speaking
