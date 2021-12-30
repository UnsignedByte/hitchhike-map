# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-hurm] remove spoken-to
tag @a[tag=victim-of-dialogue-by-hurm] remove victim-of-dialogue-by-hurm
execute as @e[tag=npc-hurm, limit=1] at @s run tp @s ~ ~ ~ -90 30
tag @e[tag=npc-hurm, limit=1] remove speaking
