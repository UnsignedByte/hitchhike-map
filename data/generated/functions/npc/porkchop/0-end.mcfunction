# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-porkchop] remove spoken-to
tag @a[tag=victim-of-dialogue-by-porkchop] remove victim-of-dialogue-by-porkchop
execute as @e[tag=npc-porkchop, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-porkchop, limit=1] remove speaking
