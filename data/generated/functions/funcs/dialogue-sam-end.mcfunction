# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-sam, limit=1] add former-victim-of-dialogue-by-sam
tag @a[tag=victim-of-dialogue-by-sam] remove spoken-to
tag @a[tag=victim-of-dialogue-by-sam] remove victim-of-dialogue-by-sam
tag @e[tag=npc-sam, limit=1] remove speaking
