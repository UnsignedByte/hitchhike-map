# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-billy] remove spoken-to
tag @a[tag=victim-of-dialogue-by-billy] remove victim-of-dialogue-by-billy
execute as @e[tag=npc-billy, limit=1] at @s run tp @s ~ ~ ~ 0 0
# no scoreboard change here
tag @e[tag=npc-billy, limit=1] remove speaking
