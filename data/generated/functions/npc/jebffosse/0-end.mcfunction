# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-jebffosse] remove spoken-to
tag @a[tag=victim-of-dialogue-by-jebffosse] remove victim-of-dialogue-by-jebffosse
execute as @e[type=villager,tag=npc-jebffosse, limit=1] at @s run tp @s ~ ~ ~ -25 0
scoreboard players set @e[type=villager,tag=npc-nortonhill, limit=1] dialogue-status 1
scoreboard players set @e[type=villager,tag=npc-jebffosse, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-jebffosse, limit=1] remove speaking
