# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-berry_sale, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Apple (2.00B)","color":"#ff0000","bold":true},"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-berry_sale, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-berry_sale, limit=1] minecraft:apple{cost: 200, display: {Lore: ["{\"text\":\"A Juicy Red Apple\\n\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"Unsold (2.00B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/berry_sale/0-end 12t
