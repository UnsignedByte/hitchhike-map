# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__egg] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__egg] remove victim-of-dialogue-by-__egg
execute as @e[tag=npc-__egg, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__egg, limit=1] remove speaking
