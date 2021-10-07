# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-mysterhyshrooms] remove spoken-to
tag @a[tag=victim-of-dialogue-by-mysterhyshrooms] remove victim-of-dialogue-by-mysterhyshrooms
execute as @e[tag=npc-mysterhyshrooms, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-mysterhyshrooms, limit=1] remove speaking
