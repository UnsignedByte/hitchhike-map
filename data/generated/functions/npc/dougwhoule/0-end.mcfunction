# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-dougwhoule] remove spoken-to
tag @a[tag=victim-of-dialogue-by-dougwhoule] remove victim-of-dialogue-by-dougwhoule
execute as @e[type=villager,tag=npc-dougwhoule, limit=1] at @s run tp @s ~ ~ ~ 50 25
scoreboard players set @e[type=villager,tag=npc-dougwhoule, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-dougwhoule, limit=1] remove speaking
