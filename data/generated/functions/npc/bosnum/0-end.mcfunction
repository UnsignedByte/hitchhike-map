# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-bosnum] remove spoken-to
tag @a[tag=victim-of-dialogue-by-bosnum] remove victim-of-dialogue-by-bosnum
execute as @e[type=villager,tag=npc-bosnum, limit=1] at @s run tp @s ~ ~ ~ -90 20
scoreboard players set @e[type=villager,tag=npc-bosnum, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-bosnum, limit=1] remove speaking
