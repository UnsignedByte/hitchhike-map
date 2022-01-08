# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-marthaaimsworth] remove spoken-to
tag @a[tag=victim-of-dialogue-by-marthaaimsworth] remove victim-of-dialogue-by-marthaaimsworth
execute as @e[tag=npc-marthaaimsworth, limit=1] at @s run tp @s ~ ~ ~ 115 0
scoreboard players set @e[tag=npc-marthaaimsworth, limit=1] dialogue-status -1
tag @e[tag=npc-marthaaimsworth, limit=1] remove speaking
