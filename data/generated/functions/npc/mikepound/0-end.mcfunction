# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-mikepound] remove spoken-to
tag @a[tag=victim-of-dialogue-by-mikepound] remove victim-of-dialogue-by-mikepound
execute as @e[type=villager,tag=npc-mikepound, limit=1] at @s run tp @s ~ ~ ~ 180 10
scoreboard players set @e[type=villager,tag=npc-mikepound, limit=1] dialogue-status -1
tag @e[type=villager,tag=npc-mikepound, limit=1] remove speaking
