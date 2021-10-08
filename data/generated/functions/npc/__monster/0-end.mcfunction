# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__monster] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__monster] remove victim-of-dialogue-by-__monster
execute as @e[tag=npc-__monster, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__monster, limit=1] remove speaking
