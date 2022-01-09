# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-pennyisses] remove spoken-to
tag @a[tag=victim-of-dialogue-by-pennyisses] remove victim-of-dialogue-by-pennyisses
execute as @e[tag=npc-pennyisses, limit=1] at @s run tp @s ~ ~ ~ 0 40
scoreboard players set @e[tag=npc-pennyisses, limit=1] dialogue-status -1
tag @e[tag=npc-pennyisses, limit=1] remove speaking
