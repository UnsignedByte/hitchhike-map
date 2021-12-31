# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-samsung] remove spoken-to
tag @a[tag=victim-of-dialogue-by-samsung] remove victim-of-dialogue-by-samsung
execute as @e[tag=npc-samsung, limit=1] at @s run tp @s ~ ~ ~ 90 -15
scoreboard players set @e[tag=npc-samsung, limit=1] dialogue-status -1
tag @e[tag=npc-samsung, limit=1] remove speaking
