# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-simon] remove spoken-to
tag @a[tag=victim-of-dialogue-by-simon] remove victim-of-dialogue-by-simon
execute as @e[tag=npc-simon, limit=1] at @s run tp @s ~ ~ ~ 135 -10
execute unless score sdcard quest-status matches -1 run scoreboard players set @e[tag=npc-simon, limit=1] dialogue-status 6
execute if score sdcard quest-status matches -1 run scoreboard players set @e[tag=npc-simon, limit=1] dialogue-status 8
tag @e[tag=npc-simon, limit=1] remove speaking
