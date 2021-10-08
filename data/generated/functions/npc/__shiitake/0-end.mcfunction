# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__shiitake] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__shiitake] remove victim-of-dialogue-by-__shiitake
execute as @e[tag=npc-__shiitake, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__shiitake, limit=1] remove speaking
