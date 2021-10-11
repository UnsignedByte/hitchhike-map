tag @a[tag=victim-of-dialogue-by-__milk, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__milk, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__milk, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",[{"text":"Whole Milk","bold":false,"color":"#f5f3e6"},{"text":" (5.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__milk, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-__milk, limit=1] minecraft:paper{cost: 599, pos: '914 62.75 -152.5', display: {Name: '{"text":"Whole Milk","bold":false,"color":"#f5f3e6"}', Lore: ["{\"text\":\"Got Milk?\",\"italic\":true,\"color\":\"aqua\"}","{\"text\":\"Homogenized.\",\"italic\":true,\"color\":\"gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (5.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/__milk/0-end 12t
tag @a remove npc-eavesdropper
