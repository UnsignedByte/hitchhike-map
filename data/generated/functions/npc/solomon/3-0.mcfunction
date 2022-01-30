tag @a[tag=victim-of-dialogue-by-solomon, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-solomon, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #3-1: speak and make noise.
execute at @e[type=villager,tag=npc-solomon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Solomon Quint","color":"#732424","bold":true},"> ",{"text":"Back already? The internet just started working again!"}]
execute at @e[type=villager,tag=npc-solomon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/solomon/3-1 96t
tag @a remove npc-eavesdropper
