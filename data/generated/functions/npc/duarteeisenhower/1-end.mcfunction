# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-duarteeisenhower] remove spoken-to
tag @a[tag=victim-of-dialogue-by-duarteeisenhower] remove victim-of-dialogue-by-duarteeisenhower
execute as @e[type=villager,tag=npc-duarteeisenhower, limit=1] at @s run tp @s ~ ~ ~ 0 30
scoreboard players set @e[type=villager,tag=npc-duarteeisenhower, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-duarteeisenhower, limit=1] remove speaking
