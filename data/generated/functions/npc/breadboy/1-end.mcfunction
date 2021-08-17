# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-breadboy] remove spoken-to
tag @a[tag=victim-of-dialogue-by-breadboy] remove victim-of-dialogue-by-breadboy
execute as @e[tag=npc-breadboy, limit=1] at @s run tp @s ~ ~ ~ 180 0
# no scoreboard change here
tag @e[tag=npc-breadboy, limit=1] remove speaking
