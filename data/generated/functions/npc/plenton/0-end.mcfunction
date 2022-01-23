# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-plenton] remove spoken-to
tag @a[tag=victim-of-dialogue-by-plenton] remove victim-of-dialogue-by-plenton
execute as @e[type=villager,tag=npc-plenton, limit=1] at @s run tp @s ~ ~ ~ 0 40
scoreboard players set @e[type=villager,tag=npc-plenton, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-plenton, limit=1] remove speaking
