# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-katherine] remove spoken-to
tag @a[tag=victim-of-dialogue-by-katherine] remove victim-of-dialogue-by-katherine
execute as @e[tag=npc-katherine, limit=1] at @s run tp @s ~ ~ ~ 0 10
scoreboard players set @e[tag=npc-katherine, limit=1] dialogue-status -1
tag @e[tag=npc-katherine, limit=1] remove speaking
