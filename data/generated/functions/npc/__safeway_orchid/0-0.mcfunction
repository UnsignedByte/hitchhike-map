tag @a[tag=victim-of-dialogue-by-__safeway_orchid, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-__safeway_orchid, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[type=villager,tag=npc-__safeway_orchid, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_orchid, limit=1] minecraft:paper{cost: 349, display: {Name: '{"text":"Blue Orchid","bold":false,"color":"#46c3cf"}', Lore: ["{\"text\":\"Fresh Flowers.\",\"italic\":false,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (3.49B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, HideFlags: 127, store: "safeway", item: "orchid", sold: 0b} 1
schedule function generated:npc/__safeway_orchid/0-end 8t
tag @a remove npc-eavesdropper
