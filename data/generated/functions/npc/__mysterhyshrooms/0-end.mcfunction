# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__mysterhyshrooms] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__mysterhyshrooms] remove victim-of-dialogue-by-__mysterhyshrooms
execute as @e[tag=npc-__mysterhyshrooms, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__mysterhyshrooms, limit=1] remove speaking
