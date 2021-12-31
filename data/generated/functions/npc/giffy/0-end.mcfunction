# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-giffy] remove spoken-to
tag @a[tag=victim-of-dialogue-by-giffy] remove victim-of-dialogue-by-giffy
execute as @e[tag=npc-giffy, limit=1] at @s run tp @s ~ ~ ~ 27 5
scoreboard players set @e[tag=npc-giffy, limit=1] dialogue-status -1
tag @e[tag=npc-giffy, limit=1] remove speaking
