# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-ericrosman] remove spoken-to
tag @a[tag=victim-of-dialogue-by-ericrosman] remove victim-of-dialogue-by-ericrosman
execute as @e[tag=npc-ericrosman, limit=1] at @s run tp @s ~ ~ ~ -90 12.5
scoreboard players set @e[tag=npc-ericrosman, limit=1] dialogue-status -1
tag @e[tag=npc-ericrosman, limit=1] remove speaking
