# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-deagol] remove spoken-to
tag @a[tag=victim-of-dialogue-by-deagol] remove victim-of-dialogue-by-deagol
execute as @e[tag=npc-deagol, limit=1] at @s run tp @s ~ ~ ~ 90 10
scoreboard players set @e[tag=npc-deagol, limit=1] dialogue-status -1
tag @e[tag=npc-deagol, limit=1] remove speaking
