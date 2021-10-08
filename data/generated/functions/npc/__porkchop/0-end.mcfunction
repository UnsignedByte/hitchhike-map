# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__porkchop] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__porkchop] remove victim-of-dialogue-by-__porkchop
execute as @e[tag=npc-__porkchop, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__porkchop, limit=1] remove speaking
