tag @a[tag=victim-of-dialogue-by-boba, limit=1] add npc-eavesdropper
execute at @e[tag=npc-boba, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-boba, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Blets Chun","color":"#d65454","bold":true},"> ",{"text":"Welcome to SiTea, the best boba shop in town!"}]
execute at @e[tag=npc-boba, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/boba/0-end 84t
tag @a remove npc-eavesdropper
