# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-fronkobognole] remove spoken-to
tag @a[tag=victim-of-dialogue-by-fronkobognole] remove victim-of-dialogue-by-fronkobognole
execute as @e[tag=npc-fronkobognole, limit=1] at @s run tp @s ~ ~ ~ -180 30
scoreboard players set @e[tag=npc-fronkobognole, limit=1] dialogue-status -1
tag @e[tag=npc-fronkobognole, limit=1] remove speaking
