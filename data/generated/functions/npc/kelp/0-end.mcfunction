# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-kelp] remove spoken-to
tag @a[tag=victim-of-dialogue-by-kelp] remove victim-of-dialogue-by-kelp
execute as @e[tag=npc-kelp, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-kelp, limit=1] remove speaking
