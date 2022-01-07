# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-epthonbovat] remove spoken-to
tag @a[tag=victim-of-dialogue-by-epthonbovat] remove victim-of-dialogue-by-epthonbovat
execute as @e[tag=npc-epthonbovat, limit=1] at @s run tp @s ~ ~ ~ 160 10
scoreboard players set @e[tag=npc-epthonbovat, limit=1] dialogue-status 1
tag @e[tag=npc-epthonbovat, limit=1] remove speaking
