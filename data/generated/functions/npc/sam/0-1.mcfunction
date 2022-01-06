tag @a[tag=victim-of-dialogue-by-sam, limit=1] add npc-eavesdropper
execute at @e[tag=npc-sam, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-sam, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Sam","color":"#ffff00","bold":true},"> ",{"text":"Please leave."}]
execute at @e[tag=npc-sam, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/sam/0-end 36t
tag @a remove npc-eavesdropper
