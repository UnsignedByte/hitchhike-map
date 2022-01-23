# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__safeway_pufferfish] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__safeway_pufferfish] remove victim-of-dialogue-by-__safeway_pufferfish
execute as @e[type=villager,tag=npc-__safeway_pufferfish, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[type=villager,tag=npc-__safeway_pufferfish, limit=1] remove speaking
