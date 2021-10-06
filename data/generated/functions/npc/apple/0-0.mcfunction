# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-apple, limit=1] run tellraw @a[distance=..50] ["<",{"text":"[\"apple\",'{\"text\":\"(2.00B)\",\"bold\":false,\"italic\":false,\"strikethrough\":false,\"obfuscated\":false,\"underlined\":false}']","color":"null","bold":true},"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-apple, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-apple, limit=1] minecraft:apple{cost: 200, pos: '905.5 64 -152.5', display: {Lore: ["{\"text\":\"A Juicy Red Apple\\n\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"Unsold (2.00B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/apple/0-end 12t
