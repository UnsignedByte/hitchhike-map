# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-milk, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Whole Milk","bold":true,"color":"#f5f3e6"},{"text":" (5.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-milk, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-milk, limit=1] minecraft:paper{cost: 599, pos: '914.5 62.75 -152.9', display: {Name: '{"text":"Whole Milk","bold":true,"color":"#f5f3e6"}', Lore: ["{\"text\":\"Got Milk?\",\"italic\":false,\"color\":\"aqua\"}","{\"text\":\"\"}","{\"text\":\"Unsold (5.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/milk/0-end 12t
