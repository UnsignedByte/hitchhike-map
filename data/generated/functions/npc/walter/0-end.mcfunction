# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-walter] remove spoken-to
tag @a[tag=victim-of-dialogue-by-walter] remove victim-of-dialogue-by-walter
execute as @e[tag=npc-walter, limit=1] at @s run tp @s ~ ~ ~ 90 10
scoreboard players set @e[tag=npc-walter, limit=1] dialogue-status -1
tag @e[tag=npc-walter, limit=1] remove speaking
