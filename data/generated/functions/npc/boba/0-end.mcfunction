# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-boba] remove spoken-to
tag @a[tag=victim-of-dialogue-by-boba] remove victim-of-dialogue-by-boba
execute as @e[type=villager,tag=npc-boba, limit=1] at @s run tp @s ~ ~ ~ 90 0
tag @e[type=villager,tag=npc-boba, limit=1] remove speaking
