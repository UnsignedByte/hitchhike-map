# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-apple_sale, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Glow Berry (2.00B)","color":"#fad352","bold":true},"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-apple_sale, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-apple_sale, limit=1] minecraft:glow_berries{cost: 200, display: {Lore: ["{\"text\":\"Unsold (2.00B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/apple_sale/0-end 14t
