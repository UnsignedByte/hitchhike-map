# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-cane] remove spoken-to
tag @a[tag=victim-of-dialogue-by-cane] remove victim-of-dialogue-by-cane
execute as @e[tag=npc-cane, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-cane, limit=1] remove speaking
