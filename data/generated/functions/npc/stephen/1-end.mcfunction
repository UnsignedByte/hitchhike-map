# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-stephen] remove spoken-to
tag @a[tag=victim-of-dialogue-by-stephen] remove victim-of-dialogue-by-stephen
execute as @e[tag=npc-stephen, limit=1] at @s run tp @s ~ ~ ~ -90 40
scoreboard players set npc-matthew dialogue-status 1
scoreboard players set @e[tag=npc-stephen, limit=1] dialogue-status -1
tag @e[tag=npc-stephen, limit=1] remove speaking
