# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-simon] remove spoken-to
tag @a[tag=victim-of-dialogue-by-simon] remove victim-of-dialogue-by-simon
execute as @e[tag=npc-simon, limit=1] at @s run tp @s ~ ~ ~ 90 15
tag @e[tag=npc-simon, limit=1] remove speaking
