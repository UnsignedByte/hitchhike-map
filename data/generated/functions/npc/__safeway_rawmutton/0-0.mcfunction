tag @a[tag=victim-of-dialogue-by-__safeway_rawmutton, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_rawmutton, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[tag=npc-__safeway_rawmutton, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_rawmutton, limit=1] minecraft:paper{cost: 699, display: {Name: '{"text":"Mutton","bold":false,"color":"#a30b2c"}', Lore: ["{\"text\":\"Wool not included.\",\"italic\":true,\"color\":\"blue\"}","{\"text\":\"\"}","{\"text\":\"Unsold (6.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "rawmutton", sold: 0b} 1
schedule function generated:npc/__safeway_rawmutton/0-end 24t
tag @a remove npc-eavesdropper
