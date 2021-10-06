# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-lacroix] remove spoken-to
tag @a[tag=victim-of-dialogue-by-lacroix] remove victim-of-dialogue-by-lacroix
execute as @e[tag=npc-lacroix, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-lacroix, limit=1] remove speaking
