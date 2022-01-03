tag @a[tag=victim-of-dialogue-by-subway, limit=1] add npc-eavesdropper
execute at @e[tag=npc-subway, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-subway, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Sili Connesse","color":"#f0d792","bold":true},"> ",{"text":"Hi, welcome to Subway, how can I help you?"}]
execute at @e[tag=npc-subway, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/subway/0-end 78t
tag @a remove npc-eavesdropper
