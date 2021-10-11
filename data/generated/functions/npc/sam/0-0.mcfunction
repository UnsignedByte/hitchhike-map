tag @a[tag=victim-of-dialogue-by-sam, limit=1] add npc-eavesdropper
execute at @e[tag=npc-sam, limit=1] run tag @a[distance=..50 add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-sam, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Sam","color":"#ffff00","bold":true},"> ",{"text":"Well, this is a bit unfortunate."}]
execute at @e[tag=npc-sam, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 100
schedule function generated:npc/sam/0-1 60t
tag @a remove npc-eavesdropper
