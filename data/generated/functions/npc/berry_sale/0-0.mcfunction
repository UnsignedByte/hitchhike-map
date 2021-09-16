# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-berry_sale, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Apple (undefinedb)","color":"#ff0000","bold":true},"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-berry_sale, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
give @a[tag=victim-of-dialogue-by-berry_sale, limit=1] minecraft:apple{display: {Lore: ['{"text":"Unsold (2.00B)","italic":true,"color":"dark_gray"}']}} 1
schedule function generated:npc/berry_sale/0-end 10t
