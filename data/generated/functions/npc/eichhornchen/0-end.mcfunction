# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-eichhornchen] remove spoken-to
tag @a[tag=victim-of-dialogue-by-eichhornchen] remove victim-of-dialogue-by-eichhornchen
execute as @e[tag=npc-eichhornchen, limit=1] at @s run tp @s ~ ~ ~ 50 25
scoreboard players set @e[tag=npc-eichhornchen, limit=1] dialogue-status -1
tag @e[tag=npc-eichhornchen, limit=1] remove speaking
