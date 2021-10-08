# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__melon_slice] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__melon_slice] remove victim-of-dialogue-by-__melon_slice
execute as @e[tag=npc-__melon_slice, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__melon_slice, limit=1] remove speaking
