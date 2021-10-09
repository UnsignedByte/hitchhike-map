# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__mysteryshrooms] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__mysteryshrooms] remove victim-of-dialogue-by-__mysteryshrooms
execute as @e[tag=npc-__mysteryshrooms, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__mysteryshrooms, limit=1] remove speaking
