# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-bobknutz] remove spoken-to
tag @a[tag=victim-of-dialogue-by-bobknutz] remove victim-of-dialogue-by-bobknutz
execute as @e[type=villager,tag=npc-bobknutz, limit=1] at @s run tp @s ~ ~ ~ 0 28.5
scoreboard players set @e[type=villager,tag=npc-bobknutz, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-bobknutz, limit=1] remove speaking
