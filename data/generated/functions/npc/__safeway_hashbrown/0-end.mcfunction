# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__safeway_hashbrown] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__safeway_hashbrown] remove victim-of-dialogue-by-__safeway_hashbrown
execute as @e[type=villager,tag=npc-__safeway_hashbrown, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[type=villager,tag=npc-__safeway_hashbrown, limit=1] remove speaking
