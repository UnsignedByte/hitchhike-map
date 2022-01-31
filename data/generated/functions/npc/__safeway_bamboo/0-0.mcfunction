tag @a[tag=victim-of-dialogue-by-__safeway_bamboo, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-__safeway_bamboo, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[type=villager,tag=npc-__safeway_bamboo, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_bamboo, limit=1] minecraft:paper{cost: 119, display: {Name: '{"text":"Bamboo Shoots","bold":false,"color":"#16ba2c"}', Lore: ["{\"text\":\"Rich in fiber.\",\"italic\":true,\"color\":\"#0d8c1e\"}","{\"text\":\"\"}","{\"text\":\"Unsold (1.19B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "bamboo", sold: 0b} 1
schedule function generated:npc/__safeway_bamboo/0-end 8t
tag @a remove npc-eavesdropper
