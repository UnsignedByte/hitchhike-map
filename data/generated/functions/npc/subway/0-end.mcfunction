# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-subway] remove spoken-to
tag @a[tag=victim-of-dialogue-by-subway] remove victim-of-dialogue-by-subway
execute as @e[tag=npc-subway, limit=1] at @s run tp @s ~ ~ ~ 45 0
tag @e[tag=npc-subway, limit=1] remove speaking
