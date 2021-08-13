# NPC dialogue
# Detect right clicks
execute as @a[scores={npc-interact=1..},tag=!spoken-to] run function generated:player_facing_npc
scoreboard players set @a npc-interact 0


# Start a conversation if it was selected
execute at @e[tag=npc-billy, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-billy
tag @a[tag=victim-of-dialogue-by-billy, limit=1] remove npc_selector
tag @e[tag=npc-billy, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute if entity @a[tag=victim-of-dialogue-by-billy, tag=!spoken-to, limit=1] run schedule function generated:funcs/dialogue-billy-0 1t
tag @a[tag=victim-of-dialogue-by-billy, tag=!spoken-to, limit=1] add spoken-to


# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-billy, tag=speaking, limit=1] at @s run tp @s ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-billy, limit=1]


# Start a conversation if it was selected
execute at @e[tag=npc-sam, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-sam
tag @a[tag=victim-of-dialogue-by-sam, limit=1] remove npc_selector
tag @e[tag=npc-sam, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute if entity @a[tag=victim-of-dialogue-by-sam, tag=!spoken-to, limit=1] run schedule function generated:funcs/dialogue-sam-0 1t
tag @a[tag=victim-of-dialogue-by-sam, tag=!spoken-to, limit=1] add spoken-to


# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-sam, tag=speaking, limit=1] at @s run tp @s ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-sam, limit=1]
tag @a remove npc_selector
tag @e[tag=npc] remove selected_npc
