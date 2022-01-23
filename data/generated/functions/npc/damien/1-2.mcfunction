tag @a[tag=victim-of-dialogue-by-damien, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-damien, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #1-3: speak and make noise.
execute at @e[type=villager,tag=npc-damien, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Damien Herst","bold":true},"> ",{"text":"Why don't both of you do some more research and get back to me with your findings?"}]
execute at @e[type=villager,tag=npc-damien, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/damien/1-end 138t
tag @a remove npc-eavesdropper
