tag @a[tag=victim-of-dialogue-by-__safeway_apple, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_apple, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[tag=npc-__safeway_apple, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_apple, limit=1] minecraft:paper{cost: 199, display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Unsold (1.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "apple", sold: 0b} 1
schedule function generated:npc/__safeway_apple/0-end 12t
tag @a remove npc-eavesdropper
