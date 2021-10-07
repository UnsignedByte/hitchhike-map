# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-pufferfish] remove spoken-to
tag @a[tag=victim-of-dialogue-by-pufferfish] remove victim-of-dialogue-by-pufferfish
execute as @e[tag=npc-pufferfish, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-pufferfish, limit=1] remove speaking
