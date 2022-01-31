tag @a[tag=victim-of-dialogue-by-__safeway_mysteryshrooms, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-__safeway_mysteryshrooms, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[type=villager,tag=npc-__safeway_mysteryshrooms, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_mysteryshrooms, limit=1] minecraft:paper{cost: 349, display: {Name: '{"text":"Mystery Shrooms","bold":false,"color":"#e64037"}', Lore: ["{\"text\":\"No Toads were harmed\",\"italic\":true,\"color\":\"#f25e70\"}","{\"text\":\"in the making of\",\"italic\":true,\"color\":\"#f25e70\"}","{\"text\":\"this shroom (probably).\",\"italic\":true,\"color\":\"#f25e70\"}","{\"text\":\"\"}","{\"text\":\"Unsold (3.49B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "mysteryshrooms", sold: 0b} 1
schedule function generated:npc/__safeway_mysteryshrooms/0-end 8t
tag @a remove npc-eavesdropper
