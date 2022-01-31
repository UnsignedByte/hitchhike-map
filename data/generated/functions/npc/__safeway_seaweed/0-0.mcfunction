tag @a[tag=victim-of-dialogue-by-__safeway_seaweed, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-__safeway_seaweed, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[type=villager,tag=npc-__safeway_seaweed, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_seaweed, limit=1] minecraft:paper{cost: 199, display: {Name: '{"text":"Dried Seaweed","bold":false,"color":"#19691c"}', Lore: ["{\"text\":\"Crunchy.\",\"italic\":false,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (1.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, HideFlags: 127, store: "safeway", item: "seaweed", sold: 0b} 1
schedule function generated:npc/__safeway_seaweed/0-end 8t
tag @a remove npc-eavesdropper
