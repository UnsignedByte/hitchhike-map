tag @a[tag=victim-of-dialogue-by-__safeway_clownfish, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-__safeway_clownfish, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[type=villager,tag=npc-__safeway_clownfish, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_clownfish, limit=1] minecraft:paper{cost: 1299, display: {Name: '{"text":"Clownfish","bold":false,"color":"#ed8c37"}', Lore: ["{\"text\":\"Here Lies\",\"italic\":false,\"color\":\"#ffc59e\"}","{\"text\":\"Nemo (2003-2003)\",\"italic\":false,\"color\":\"#ffc59e\"}","{\"text\":\"Rest in Peace.\",\"italic\":false,\"color\":\"#ffc59e\"}","{\"text\":\"\"}","{\"text\":\"Unsold (12.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, HideFlags: 127, store: "safeway", item: "clownfish", sold: 0b} 1
schedule function generated:npc/__safeway_clownfish/0-end 8t
tag @a remove npc-eavesdropper
