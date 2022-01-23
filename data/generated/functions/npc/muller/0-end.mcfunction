# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-muller] remove spoken-to
tag @a[tag=victim-of-dialogue-by-muller] remove victim-of-dialogue-by-muller
execute as @e[type=villager,tag=npc-muller, limit=1] at @s run tp @s ~ ~ ~ 180 20
scoreboard players set @e[type=villager,tag=npc-muller, limit=1] dialogue-status 2
tag @e[type=villager,tag=npc-muller, limit=1] remove speaking
