# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-sean] remove spoken-to
tag @a[tag=victim-of-dialogue-by-sean] remove victim-of-dialogue-by-sean
execute as @e[tag=npc-sean, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-sean, limit=1] remove speaking
