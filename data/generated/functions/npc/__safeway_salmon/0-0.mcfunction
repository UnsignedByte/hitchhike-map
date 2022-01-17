tag @a[tag=victim-of-dialogue-by-__safeway_salmon, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_salmon, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[tag=npc-__safeway_salmon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_salmon, limit=1] minecraft:paper{cost: 1499, display: {Name: '{"text":"Fresh Salmon","bold":false,"color":"#FFC3B5"}', Lore: ["{\"text\":\"Watch out for\",\"italic\":false,\"color\":\"#FA8072\"}","{\"text\":\"samonella...\",\"italic\":false,\"color\":\"#FA8072\"}","{\"text\":\"\"}","{\"text\":\"Unsold (14.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, HideFlags: 127, store: "safeway", item: "salmon", sold: 0b} 1
schedule function generated:npc/__safeway_salmon/0-end 12t
tag @a remove npc-eavesdropper
