tag @a[tag=victim-of-dialogue-by-__safeway_chicken, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_chicken, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[tag=npc-__safeway_chicken, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_chicken, limit=1] minecraft:paper{cost: 599, display: {Name: '{"text":"Chicken","bold":false,"color":"#e3aa81"}', Lore: ["{\"text\":\"Kentucky Unfried\",\"italic\":true,\"color\":\"blue\"}","{\"text\":\"\"}","{\"text\":\"Unsold (5.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "chicken", sold: 0b} 1
schedule function generated:npc/__safeway_chicken/0-end 12t
tag @a remove npc-eavesdropper
