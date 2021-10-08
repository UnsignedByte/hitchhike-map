# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__pufferfish] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__pufferfish] remove victim-of-dialogue-by-__pufferfish
execute as @e[tag=npc-__pufferfish, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__pufferfish, limit=1] remove speaking
