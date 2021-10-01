# Dialogue line #1-1: speak and make noise.
execute at @e[tag=npc-cashier, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Henry","color":"#eb7060","bold":true},"> ",{"text":"Hey, I hope you had a great time shopping!"}]
execute at @e[tag=npc-cashier, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
function hitchhike:safeway/pay
schedule function generated:npc/cashier/1-1 70t
