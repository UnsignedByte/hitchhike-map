# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-__rawmutton] remove spoken-to
tag @a[tag=victim-of-dialogue-by-__rawmutton] remove victim-of-dialogue-by-__rawmutton
execute as @e[tag=npc-__rawmutton, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-__rawmutton, limit=1] remove speaking
