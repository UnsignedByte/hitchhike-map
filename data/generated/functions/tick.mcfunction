# NPC dialogue

# Dialogue for billy

# Mark players who have ditched the NPC as viable for re-conversation.
execute at @e[tag=npc-billy, tag=!speaking, limit=1] run tag @a[tag=former-victim-of-dialogue-by-billy, distance=10..] remove former-victim-of-dialogue-by-billy

# Start a conversation if it can and hasn't already.
execute at @e[tag=npc-billy, tag=!speaking, limit=1] run tag @a[tag=!spoken-to, tag=!former-victim-of-dialogue-by-billy, distance=..4, sort=nearest, limit=1] add victim-of-dialogue-by-billy
execute if entity @a[tag=victim-of-dialogue-by-billy, tag=!spoken-to, limit=1] run tag @e[tag=npc-billy, limit=1] add speaking
execute if entity @a[tag=victim-of-dialogue-by-billy, tag=!spoken-to, limit=1] run schedule function generated:funcs/dialogue-billy-0 1t
tag @a[tag=victim-of-dialogue-by-billy, tag=!spoken-to, limit=1] add spoken-to


# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-billy, tag=speaking, limit=1] at @s run tp @s ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-billy, limit=1]

# Dialogue for sam

# Mark players who have ditched the NPC as viable for re-conversation.
execute at @e[tag=npc-sam, tag=!speaking, limit=1] run tag @a[tag=former-victim-of-dialogue-by-sam, distance=10..] remove former-victim-of-dialogue-by-sam

# Start a conversation if it can and hasn't already.
execute at @e[tag=npc-sam, tag=!speaking, limit=1] run tag @a[tag=!spoken-to, tag=!former-victim-of-dialogue-by-sam, distance=..4, sort=nearest, limit=1] add victim-of-dialogue-by-sam
execute if entity @a[tag=victim-of-dialogue-by-sam, tag=!spoken-to, limit=1] run tag @e[tag=npc-sam, limit=1] add speaking
execute if entity @a[tag=victim-of-dialogue-by-sam, tag=!spoken-to, limit=1] run schedule function generated:funcs/dialogue-sam-0 1t
tag @a[tag=victim-of-dialogue-by-sam, tag=!spoken-to, limit=1] add spoken-to


# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-sam, tag=speaking, limit=1] at @s run tp @s ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-sam, limit=1]
