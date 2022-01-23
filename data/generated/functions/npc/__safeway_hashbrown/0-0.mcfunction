tag @a[tag=victim-of-dialogue-by-__safeway_hashbrown, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-__safeway_hashbrown, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[type=villager,tag=npc-__safeway_hashbrown, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_hashbrown, limit=1] minecraft:paper{cost: 499, display: {Name: '{"text":"Hash Brown","bold":false,"color":"#bd7d2a"}', Lore: ["{\"text\":\"Freshly Fried Potatoes.\",\"italic\":false,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (4.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "hashbrown", sold: 0b} 1
schedule function generated:npc/__safeway_hashbrown/0-end 12t
tag @a remove npc-eavesdropper
