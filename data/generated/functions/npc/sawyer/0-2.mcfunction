tag @a[tag=victim-of-dialogue-by-sawyer, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-sawyer, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[type=villager,tag=npc-sawyer, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Chris Sawyer","color":"#8de359","bold":true},"> ",{"text":"... Anyways, what's up?"}]
execute at @e[type=villager,tag=npc-sawyer, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/sawyer/0-3 60t
tag @a remove npc-eavesdropper
