# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-egg] remove spoken-to
tag @a[tag=victim-of-dialogue-by-egg] remove victim-of-dialogue-by-egg
execute as @e[tag=npc-egg, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-egg, limit=1] remove speaking
