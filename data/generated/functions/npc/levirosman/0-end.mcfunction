# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-levirosman] remove spoken-to
tag @a[tag=victim-of-dialogue-by-levirosman] remove victim-of-dialogue-by-levirosman
execute as @e[type=villager,tag=npc-levirosman, limit=1] at @s run tp @s ~ ~ ~ 90 12.5
scoreboard players set @e[type=villager,tag=npc-levirosman, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-levirosman, limit=1] remove speaking
