# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__apple] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__apple] remove victim-of-dialogue-by-__apple
execute as @e[tag=npc-__apple, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__apple, limit=1] remove speaking
