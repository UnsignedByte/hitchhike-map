# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-cashier, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Henry","color":"#eb7060","bold":true},"> ",{"text":"If you want to buy anything, just drop it off here on the conveyor."}]
execute at @e[tag=npc-cashier, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
schedule function generated:npc/cashier/0-end 133t
