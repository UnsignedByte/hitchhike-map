# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-damien] remove spoken-to
tag @a[tag=victim-of-dialogue-by-damien] remove victim-of-dialogue-by-damien
execute as @e[tag=npc-damien, limit=1] at @s run tp @s ~ ~ ~ -180 0
scoreboard players set @e[tag=npc-stephen, limit=1] dialogue-status 3
scoreboard players set @e[tag=npc-damien, limit=1] dialogue-status 0
tp @e[tag=npc-damien, limit=1] 796.50 78 -41.70 -180 80
tag @e[tag=npc-damien, limit=1] remove speaking
