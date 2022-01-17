tag @a[tag=victim-of-dialogue-by-__safeway_pie, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_pie, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[tag=npc-__safeway_pie, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_pie, limit=1] minecraft:paper{cost: 899, display: {Name: '{"text":"Pumpkin Pie","bold":false,"color":"#d66c0f"}', Lore: ["{\"text\":\"Straight from the best winter squash.\",\"italic\":false,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (8.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "pie", sold: 0b} 1
schedule function generated:npc/__safeway_pie/0-end 24t
tag @a remove npc-eavesdropper
