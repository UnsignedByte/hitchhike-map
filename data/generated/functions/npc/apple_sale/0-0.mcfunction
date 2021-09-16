# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-apple_sale, limit=1] run tellraw @a[distance=..50] ["<",{"text":"apple ($5)","color":"#ff0000","bold":true},"> ",{"text":"bought."}]
# silent // execute at @e[tag=npc-apple_sale, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
schedule function generated:npc/apple_sale/0-end 10t
