tag @a[tag=victim-of-dialogue-by-samsung, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-samsung, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[type=villager,tag=npc-samsung, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Samantha Sung","color":"#945da1","bold":true},"> ",{"text":"Ah, I thought I heard someone rummaging in my garage."}]
execute at @e[type=villager,tag=npc-samsung, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/samsung/0-1 72t
tag @a remove npc-eavesdropper
