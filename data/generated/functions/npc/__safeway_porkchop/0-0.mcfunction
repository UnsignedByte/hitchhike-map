tag @a[tag=victim-of-dialogue-by-__safeway_porkchop, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-__safeway_porkchop, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[type=villager,tag=npc-__safeway_porkchop, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_porkchop, limit=1] minecraft:paper{cost: 799, display: {Name: '{"text":"Porkchops","bold":false,"color":"#e36d6d"}', Lore: ["{\"text\":\"Only 1 Peppa Pig was\",\"italic\":true,\"color\":\"blue\"}","{\"text\":\"harmed in its creation.\",\"italic\":true,\"color\":\"blue\"}","{\"text\":\"\"}","{\"text\":\"Unsold (7.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "porkchop", sold: 0b} 1
schedule function generated:npc/__safeway_porkchop/0-end 12t
tag @a remove npc-eavesdropper
