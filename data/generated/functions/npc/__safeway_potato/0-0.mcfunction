tag @a[tag=victim-of-dialogue-by-__safeway_potato, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_potato, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[tag=npc-__safeway_potato, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_potato, limit=1] minecraft:paper{cost: 124, display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Unsold (1.24B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "potato", sold: 0b} 1
schedule function generated:npc/__safeway_potato/0-end 24t
tag @a remove npc-eavesdropper
