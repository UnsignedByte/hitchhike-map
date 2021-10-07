# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-rawmutton] remove spoken-to
tag @a[tag=victim-of-dialogue-by-rawmutton] remove victim-of-dialogue-by-rawmutton
execute as @e[tag=npc-rawmutton, limit=1] at @s run tp @s ~ ~ ~ 0 0
tag @e[tag=npc-rawmutton, limit=1] remove speaking
