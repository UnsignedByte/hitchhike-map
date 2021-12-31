# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-lucky] remove spoken-to
tag @a[tag=victim-of-dialogue-by-lucky] remove victim-of-dialogue-by-lucky
execute as @e[tag=npc-lucky, limit=1] at @s run tp @s ~ ~ ~ -135 45
scoreboard players set @e[tag=npc-lucky, limit=1] dialogue-status -1
tag @e[tag=npc-lucky, limit=1] remove speaking
