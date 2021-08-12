# NPC dialogue

# Dialogue for billy

# Mark players who have ditched the NPC as viable for re-conversation.
execute at @e[tag=npc-billy, tag=!speaking, limit=1] run tag @a[tag=former-victim-of-dialogue-by-billy, distance=10..] remove former-victim-of-dialogue-by-billy

# Start a conversation if it can and hasn't already.
execute at @e[tag=npc-billy, tag=!speaking, limit=1] run tag @a[tag=!spoken-to, tag=!former-victim-of-dialogue-by-billy, distance=..4, sort=nearest, limit=1] add victim-of-dialogue-by-billy
execute if entity @a[tag=victim-of-dialogue-by-billy, tag=!spoken-to, limit=1] run tag @e[tag=npc-billy, limit=1] add speaking
execute if entity @a[tag=victim-of-dialogue-by-billy, tag=!spoken-to, limit=1] run scoreboard players set billy npc-timers 0
execute if entity @a[tag=victim-of-dialogue-by-billy, tag=!spoken-to, limit=1] run scoreboard players set billy npc-steps 3
tag @a[tag=victim-of-dialogue-by-billy, tag=!spoken-to, limit=1] add spoken-to

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-billy, tag=speaking, limit=1] at @s run tp @s ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-billy, limit=1]

# If the last line of dialogue finished, continue to the next one.
execute if entity @e[tag=npc-billy, tag=speaking, limit=1] if score billy npc-timers matches 0 run scoreboard players remove billy npc-steps 1

# Dialogue line #1
execute if entity @e[tag=npc-billy, tag=speaking, limit=1] if score billy npc-timers matches 0 if score billy npc-steps matches 2 at @e[tag=npc-billy, tag=speaking, limit=1] run tellraw @a[distance=..25] ["<",{"text":"Billy","color":"#ff00ff","bold":true},"> Once upon a time, I stumbled across a hole."]
execute if entity @e[tag=npc-billy, tag=speaking, limit=1] if score billy npc-timers matches 0 if score billy npc-steps matches 2 at @e[tag=npc-billy, tag=speaking, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..25]
execute if entity @e[tag=npc-billy, tag=speaking, limit=1] if score billy npc-timers matches 0 if score billy npc-steps matches 2 run scoreboard players set billy npc-timers 75

# Dialogue line #2
execute if entity @e[tag=npc-billy, tag=speaking, limit=1] if score billy npc-timers matches 0 if score billy npc-steps matches 1 at @e[tag=npc-billy, tag=speaking, limit=1] run tellraw @a[distance=..25] ["<",{"text":"Billy","color":"#ff00ff","bold":true},"> Honestly, I have no idea how I didn't fall in."]
execute if entity @e[tag=npc-billy, tag=speaking, limit=1] if score billy npc-timers matches 0 if score billy npc-steps matches 1 at @e[tag=npc-billy, tag=speaking, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..25]
execute if entity @e[tag=npc-billy, tag=speaking, limit=1] if score billy npc-timers matches 0 if score billy npc-steps matches 1 run scoreboard players set billy npc-timers 70

# Handle the end of the conversation.
execute if entity @e[tag=npc-billy, tag=speaking, limit=1] if score billy npc-timers matches 0 if score billy npc-steps matches 0 run tag @a[tag=victim-of-dialogue-by-billy] remove spoken-to
execute if entity @e[tag=npc-billy, tag=speaking, limit=1] if score billy npc-timers matches 0 if score billy npc-steps matches 0 run tag @a[tag=victim-of-dialogue-by-billy, limit=1] add former-victim-of-dialogue-by-billy
execute if entity @e[tag=npc-billy, tag=speaking, limit=1] if score billy npc-timers matches 0 if score billy npc-steps matches 0 run tag @a[tag=victim-of-dialogue-by-billy] remove victim-of-dialogue-by-billy
execute as @e[tag=npc-billy, tag=speaking, limit=1] if score billy npc-timers matches 0 if score billy npc-steps matches 0 run tag @s remove speaking

# Decrement the timer per tick while speaking.
execute as @e[tag=npc-billy, tag=speaking, limit=1] run scoreboard players remove billy npc-timers 1

# Dialogue for sam

# Mark players who have ditched the NPC as viable for re-conversation.
execute at @e[tag=npc-sam, tag=!speaking, limit=1] run tag @a[tag=former-victim-of-dialogue-by-sam, distance=10..] remove former-victim-of-dialogue-by-sam

# Start a conversation if it can and hasn't already.
execute at @e[tag=npc-sam, tag=!speaking, limit=1] run tag @a[tag=!spoken-to, tag=!former-victim-of-dialogue-by-sam, distance=..4, sort=nearest, limit=1] add victim-of-dialogue-by-sam
execute if entity @a[tag=victim-of-dialogue-by-sam, tag=!spoken-to, limit=1] run tag @e[tag=npc-sam, limit=1] add speaking
execute if entity @a[tag=victim-of-dialogue-by-sam, tag=!spoken-to, limit=1] run scoreboard players set sam npc-timers 0
execute if entity @a[tag=victim-of-dialogue-by-sam, tag=!spoken-to, limit=1] run scoreboard players set sam npc-steps 3
tag @a[tag=victim-of-dialogue-by-sam, tag=!spoken-to, limit=1] add spoken-to

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-sam, tag=speaking, limit=1] at @s run tp @s ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-sam, limit=1]

# If the last line of dialogue finished, continue to the next one.
execute if entity @e[tag=npc-sam, tag=speaking, limit=1] if score sam npc-timers matches 0 run scoreboard players remove sam npc-steps 1

# Dialogue line #1
execute if entity @e[tag=npc-sam, tag=speaking, limit=1] if score sam npc-timers matches 0 if score sam npc-steps matches 2 at @e[tag=npc-sam, tag=speaking, limit=1] run tellraw @a[distance=..25] ["<",{"text":"Sam","color":"#ffff00","bold":true},"> Well, this is a bit unfortunate."]
execute if entity @e[tag=npc-sam, tag=speaking, limit=1] if score sam npc-timers matches 0 if score sam npc-steps matches 2 at @e[tag=npc-sam, tag=speaking, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..25]
execute if entity @e[tag=npc-sam, tag=speaking, limit=1] if score sam npc-timers matches 0 if score sam npc-steps matches 2 run scoreboard players set sam npc-timers 50

# Dialogue line #2
execute if entity @e[tag=npc-sam, tag=speaking, limit=1] if score sam npc-timers matches 0 if score sam npc-steps matches 1 at @e[tag=npc-sam, tag=speaking, limit=1] run tellraw @a[distance=..25] ["<",{"text":"Sam","color":"#ffff00","bold":true},"> Please leave."]
execute if entity @e[tag=npc-sam, tag=speaking, limit=1] if score sam npc-timers matches 0 if score sam npc-steps matches 1 at @e[tag=npc-sam, tag=speaking, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..25]
execute if entity @e[tag=npc-sam, tag=speaking, limit=1] if score sam npc-timers matches 0 if score sam npc-steps matches 1 run scoreboard players set sam npc-timers 30

# Handle the end of the conversation.
execute if entity @e[tag=npc-sam, tag=speaking, limit=1] if score sam npc-timers matches 0 if score sam npc-steps matches 0 run tag @a[tag=victim-of-dialogue-by-sam] remove spoken-to
execute if entity @e[tag=npc-sam, tag=speaking, limit=1] if score sam npc-timers matches 0 if score sam npc-steps matches 0 run tag @a[tag=victim-of-dialogue-by-sam, limit=1] add former-victim-of-dialogue-by-sam
execute if entity @e[tag=npc-sam, tag=speaking, limit=1] if score sam npc-timers matches 0 if score sam npc-steps matches 0 run tag @a[tag=victim-of-dialogue-by-sam] remove victim-of-dialogue-by-sam
execute as @e[tag=npc-sam, tag=speaking, limit=1] if score sam npc-timers matches 0 if score sam npc-steps matches 0 run tag @s remove speaking

# Decrement the timer per tick while speaking.
execute as @e[tag=npc-sam, tag=speaking, limit=1] run scoreboard players remove sam npc-timers 1
