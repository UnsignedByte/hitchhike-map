tag @a[tag=victim-of-dialogue-by-__safeway_cane, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_cane, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__safeway_cane, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",[{"text":"Sugarcane","bold":false,"color":"#009903"},{"text":" (0.89B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__safeway_cane, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_cane, limit=1] minecraft:paper{cost: 89, display: {Name: '{"text":"Sugarcane","bold":false,"color":"#009903"}', Lore: ["{\"text\":\"Not candy,\",\"italic\":true,\"color\":\"#d1261d\"}","{\"text\":\"sadly.\",\"italic\":true,\"color\":\"#d1261d\"}","{\"text\":\"\"}","{\"text\":\"Unsold (0.89B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", sold: 0b} 1
schedule function generated:npc/__safeway_cane/0-end 12t
tag @a remove npc-eavesdropper
