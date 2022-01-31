tag @a[tag=victim-of-dialogue-by-__safeway_egg, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-__safeway_egg, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[type=villager,tag=npc-__safeway_egg, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_egg, limit=1] minecraft:paper{cost: 9, display: {Name: '{"text":"Egg","bold":false,"color":"#f2e1aa"}', Lore: ["{\"text\":\"A Dollar a Dozen\",\"italic\":true,\"color\":\"#d9ac59\"}","{\"text\":\"\"}","{\"text\":\"Unsold (0.09B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "egg", sold: 0b} 1
schedule function generated:npc/__safeway_egg/0-end 8t
tag @a remove npc-eavesdropper
