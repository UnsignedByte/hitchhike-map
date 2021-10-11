tag @a[tag=victim-of-dialogue-by-cashier, limit=1] add npc-eavesdropper
execute at @e[tag=npc-cashier, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-cashier, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Henry","color":"#eb7060","bold":true},"> ",{"text":"If you want to buy anything, just drop it off here on the conveyor."}]
execute at @e[tag=npc-cashier, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/cashier/0-end 114t
tag @a remove npc-eavesdropper
