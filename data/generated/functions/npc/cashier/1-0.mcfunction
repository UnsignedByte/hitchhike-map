tag @a[tag=victim-of-dialogue-by-cashier, limit=1] add npc-eavesdropper
execute at @e[tag=npc-cashier, limit=1] run tag @a[distance=..50 add npc-eavesdropper
# Dialogue line #1-1: speak and make noise.
execute at @e[tag=npc-cashier, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Henry","color":"#eb7060","bold":true},"> ",{"interpret":true,"nbt":"welcome_message","storage":"hitchhike:safeway"}]
execute at @e[tag=npc-cashier, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 100
function hitchhike:safeway/pay
schedule function generated:npc/cashier/1-1 24t
tag @a remove npc-eavesdropper
