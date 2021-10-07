# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-shiitake] remove spoken-to
tag @a[tag=victim-of-dialogue-by-shiitake] remove victim-of-dialogue-by-shiitake
execute as @e[tag=npc-shiitake, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-shiitake, limit=1] remove speaking
