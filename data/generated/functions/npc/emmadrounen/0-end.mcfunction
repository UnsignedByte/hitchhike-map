# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-emmadrounen] remove spoken-to
tag @a[tag=victim-of-dialogue-by-emmadrounen] remove victim-of-dialogue-by-emmadrounen
execute as @e[tag=npc-emmadrounen, limit=1] at @s run tp @s ~ ~ ~ -45 -45
scoreboard players set @e[tag=npc-emmadrounen, limit=1] dialogue-status -1
tag @e[tag=npc-emmadrounen, limit=1] remove speaking
