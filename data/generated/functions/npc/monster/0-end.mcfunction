# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-monster] remove spoken-to
tag @a[tag=victim-of-dialogue-by-monster] remove victim-of-dialogue-by-monster
execute as @e[tag=npc-monster, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-monster, limit=1] remove speaking
