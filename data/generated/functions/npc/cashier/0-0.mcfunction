# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-cashier, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Henry","color":"#eb7060","bold":true},"> ",{"text":"Hi, welcome to Safeway!"}]
execute at @e[tag=npc-cashier, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
schedule function generated:npc/cashier/0-1 56t
