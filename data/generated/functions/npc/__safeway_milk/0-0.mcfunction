tag @a[tag=victim-of-dialogue-by-__safeway_milk, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_milk, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[tag=npc-__safeway_milk, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_milk, limit=1] minecraft:paper{cost: 599, display: {Name: '{"text":"Whole Milk","bold":false,"color":"#f5f3e6"}', Lore: ["{\"text\":\"Got Milk?\",\"italic\":true,\"color\":\"aqua\"}","{\"text\":\"Homogenized.\",\"italic\":true,\"color\":\"gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (5.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "milk", sold: 0b} 1
schedule function generated:npc/__safeway_milk/0-end 12t
tag @a remove npc-eavesdropper
