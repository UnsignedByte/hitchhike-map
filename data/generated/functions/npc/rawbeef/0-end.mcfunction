# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-rawbeef] remove spoken-to
tag @a[tag=victim-of-dialogue-by-rawbeef] remove victim-of-dialogue-by-rawbeef
execute as @e[tag=npc-rawbeef, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-rawbeef, limit=1] remove speaking
