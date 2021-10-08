# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__lacroix] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__lacroix] remove victim-of-dialogue-by-__lacroix
execute as @e[tag=npc-__lacroix, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__lacroix, limit=1] remove speaking
