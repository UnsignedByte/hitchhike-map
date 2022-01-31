tag @a[tag=victim-of-dialogue-by-__safeway_cane, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-__safeway_cane, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[type=villager,tag=npc-__safeway_cane, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_cane, limit=1] minecraft:paper{cost: 89, display: {Name: '{"text":"Sugarcane","bold":false,"color":"#009903"}', Lore: ["{\"text\":\"Not candy,\",\"italic\":true,\"color\":\"#d1261d\"}","{\"text\":\"sadly.\",\"italic\":true,\"color\":\"#d1261d\"}","{\"text\":\"\"}","{\"text\":\"Unsold (0.89B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "cane", sold: 0b} 1
schedule function generated:npc/__safeway_cane/0-end 8t
tag @a remove npc-eavesdropper
