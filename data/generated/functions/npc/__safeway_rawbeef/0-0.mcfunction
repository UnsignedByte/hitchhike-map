tag @a[tag=victim-of-dialogue-by-__safeway_rawbeef, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_rawbeef, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[tag=npc-__safeway_rawbeef, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_rawbeef, limit=1] minecraft:paper{cost: 899, display: {Name: '{"text":"Raw Beef","bold":false,"color":"#a8180d"}', Lore: ["{\"text\":\"Basically Rare\",\"italic\":true,\"color\":\"blue\"}","{\"text\":\"Steak...\",\"italic\":true,\"color\":\"blue\"}","{\"text\":\"\"}","{\"text\":\"Unsold (8.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "rawbeef", sold: 0b} 1
schedule function generated:npc/__safeway_rawbeef/0-end 24t
tag @a remove npc-eavesdropper
