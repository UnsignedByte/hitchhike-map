tag @a[tag=victim-of-dialogue-by-__safeway_berries, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-__safeway_berries, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[type=villager,tag=npc-__safeway_berries, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_berries, limit=1] minecraft:paper{cost: 249, display: {Name: '{"text":"Strawberry","bold":false,"color":"#db324f"}', Lore: ["{\"text\":\"Berry Delicious™\",\"italic\":true,\"color\":\"#d43d7c\"}","{\"text\":\"\"}","{\"text\":\"Unsold (2.49B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "berries", sold: 0b} 1
schedule function generated:npc/__safeway_berries/0-end 12t
tag @a remove npc-eavesdropper
