# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-marthaainsworth] remove spoken-to
tag @a[tag=victim-of-dialogue-by-marthaainsworth] remove victim-of-dialogue-by-marthaainsworth
execute as @e[type=villager,tag=npc-marthaainsworth, limit=1] at @s run tp @s ~ ~ ~ 115 0
scoreboard players set @e[type=villager,tag=npc-marthaainsworth, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-marthaainsworth, limit=1] remove speaking
