# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-simon] remove spoken-to
tag @a[tag=victim-of-dialogue-by-simon] remove victim-of-dialogue-by-simon
execute as @e[type=villager,tag=npc-simon, limit=1] at @s run tp @s ~ ~ ~ 135 -10
scoreboard players set @e[type=villager,tag=npc-simon, limit=1] dialogue-status 6
tag @e[type=villager,tag=npc-simon, limit=1] remove speaking
