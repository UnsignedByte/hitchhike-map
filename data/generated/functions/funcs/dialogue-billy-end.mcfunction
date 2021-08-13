# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-billy] remove spoken-to
tag @a[tag=victim-of-dialogue-by-billy] remove victim-of-dialogue-by-billy
tp @e[tag=npc-billy, limit=1] ~ ~ ~ 0 0
tag @e[tag=npc-billy, limit=1] remove speaking
