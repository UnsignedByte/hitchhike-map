tag @a[tag=victim-of-dialogue-by-sawyer, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-sawyer, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #10-4: speak and make noise.
execute at @e[type=villager,tag=npc-sawyer, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Chris Sawyer","color":"#8de359","bold":true},"> ",{"text":"Give me a minute and I'll get you that SD card."}]
execute at @e[type=villager,tag=npc-sawyer, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/sawyer/10-4 100t
tag @a remove npc-eavesdropper
