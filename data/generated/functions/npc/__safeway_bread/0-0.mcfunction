tag @a[tag=victim-of-dialogue-by-__safeway_bread, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_bread, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__safeway_bread, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",[{"text":"Whole Wheat Bread","bold":false,"color":"#d1a96b"},{"text":" (3.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__safeway_bread, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_bread, limit=1] minecraft:paper{cost: 399, display: {Name: '{"text":"Whole Wheat Bread","bold":false,"color":"#d1a96b"}', Lore: ["{\"text\":\"Crunchy.\",\"italic\":false,\"color\":\"#9c7d4c\"}","{\"text\":\"\"}","{\"text\":\"Unsold (3.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "bread", sold: 0b} 1
schedule function generated:npc/__safeway_bread/0-end 12t
tag @a remove npc-eavesdropper