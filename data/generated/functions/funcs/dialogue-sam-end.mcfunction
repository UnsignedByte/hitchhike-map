# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-sam] remove spoken-to
tag @a[tag=victim-of-dialogue-by-sam] remove victim-of-dialogue-by-sam
tp @e[tag=npc-sam, limit=1] ~ ~ ~ 0 0
tag @e[tag=npc-sam, limit=1] remove speaking
