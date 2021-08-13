# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-marc] remove spoken-to
tag @a[tag=victim-of-dialogue-by-marc] remove victim-of-dialogue-by-marc
tag @e[tag=npc-marc, limit=1] remove speaking
