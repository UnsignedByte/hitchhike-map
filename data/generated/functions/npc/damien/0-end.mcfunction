# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-damien] remove spoken-to
tag @a[tag=victim-of-dialogue-by-damien] remove victim-of-dialogue-by-damien
execute as @e[type=villager,tag=npc-damien, limit=1] at @s run tp @s ~ ~ ~ -180 80
scoreboard players set @e[type=villager,tag=npc-damien, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-damien, limit=1] remove speaking
