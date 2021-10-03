# Dialogue line #1-2: speak and make noise.
execute at @e[tag=npc-cashier, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Henry","color":"#eb7060","bold":true},"> ",{"interpret":true,"nbt":"success_msg","storage":"hitchhike:safeway"}]
execute at @e[tag=npc-cashier, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
schedule function generated:npc/cashier/1-end 32t
