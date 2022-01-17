tag @a[tag=victim-of-dialogue-by-__safeway_shiitake, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_shiitake, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[tag=npc-__safeway_shiitake, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_shiitake, limit=1] minecraft:paper{cost: 174, display: {Name: '{"text":"Shiitake Mushrooms","bold":false,"color":"#917250"}', Lore: ["{\"text\":\"Tasty\",\"italic\":true,\"color\":\"#826246\"}","{\"text\":\"\"}","{\"text\":\"Unsold (1.74B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "shiitake", sold: 0b} 1
schedule function generated:npc/__safeway_shiitake/0-end 12t
tag @a remove npc-eavesdropper
