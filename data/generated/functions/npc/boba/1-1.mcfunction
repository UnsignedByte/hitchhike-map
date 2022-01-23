tag @a[tag=victim-of-dialogue-by-boba, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-boba, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #1-2: speak and make noise.
execute at @e[type=villager,tag=npc-boba, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Brett Chen","color":"#d65454","bold":true},"> ",{"interpret":true,"nbt":"success.boba","storage":"hitchhike:stores"}]
execute at @e[type=villager,tag=npc-boba, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/boba/1-end 24t
tag @a remove npc-eavesdropper
