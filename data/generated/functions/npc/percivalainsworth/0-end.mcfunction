# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-percivalainsworth] remove spoken-to
tag @a[tag=victim-of-dialogue-by-percivalainsworth] remove victim-of-dialogue-by-percivalainsworth
execute as @e[type=villager,tag=npc-percivalainsworth, limit=1] at @s run tp @s ~ ~ ~ 90 40
scoreboard players set @e[type=villager,tag=npc-percivalainsworth, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-percivalainsworth, limit=1] remove speaking
