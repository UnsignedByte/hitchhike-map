# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-clothes] remove spoken-to
tag @a[tag=victim-of-dialogue-by-clothes] remove victim-of-dialogue-by-clothes
execute as @e[type=villager,tag=npc-clothes, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[type=villager,tag=npc-clothes, limit=1] remove speaking
