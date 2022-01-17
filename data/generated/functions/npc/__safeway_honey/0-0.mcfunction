tag @a[tag=victim-of-dialogue-by-__safeway_honey, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_honey, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[tag=npc-__safeway_honey, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_honey, limit=1] minecraft:paper{cost: 899, display: {Name: '{"text":"Honey","bold":false,"color":"#e8c733"}', Lore: ["{\"text\":\"Winnie the Pooh's\",\"italic\":false,\"color\":\"#ebd93f\"}","{\"text\":\"favorite snack.\",\"italic\":false,\"color\":\"#ebd93f\"}","{\"text\":\"\"}","{\"text\":\"Unsold (8.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, HideFlags: 127, store: "safeway", item: "honey", sold: 0b} 1
schedule function generated:npc/__safeway_honey/0-end 12t
tag @a remove npc-eavesdropper
