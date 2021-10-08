# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__rawbeef] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__rawbeef] remove victim-of-dialogue-by-__rawbeef
execute as @e[tag=npc-__rawbeef, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__rawbeef, limit=1] remove speaking
