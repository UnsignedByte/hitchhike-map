tag @a[tag=victim-of-dialogue-by-clothescashier, limit=1] add npc-eavesdropper
execute at @e[tag=npc-clothescashier, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-clothescashier, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Jean Skinne","color":"#2387d9","bold":true},"> ",{"text":"Welcome! Looking for fashionable outfits?"}]
execute at @e[tag=npc-clothescashier, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/clothescashier/0-1 90t
tag @a remove npc-eavesdropper
