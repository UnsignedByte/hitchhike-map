tag @a[tag=victim-of-dialogue-by-__safeway_beet, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-__safeway_beet, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[type=villager,tag=npc-__safeway_beet, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_beet, limit=1] minecraft:paper{cost: 149, display: {Name: '{"text":"Beet","bold":false,"color":"#7a1f3d"}', Lore: ["{\"text\":\"Beet red\",\"italic\":true,\"color\":\"#6c1b36\"}","{\"text\":\":flushed:\",\"italic\":true,\"color\":\"#6c1b36\"}","{\"text\":\"\"}","{\"text\":\"Unsold (1.49B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "beet", sold: 0b} 1
schedule function generated:npc/__safeway_beet/0-end 8t
tag @a remove npc-eavesdropper
