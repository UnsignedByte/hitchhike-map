tag @a[tag=victim-of-dialogue-by-__safeway_pufferfish, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_pufferfish, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[tag=npc-__safeway_pufferfish, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_pufferfish, limit=1] minecraft:paper{cost: 999, display: {Name: '{"text":"Pufferfish","bold":false,"color":"#f0e143"}', Lore: ["{\"text\":\"Food for\",\"italic\":false,\"color\":\"#e4ed2d\"}","{\"text\":\"Masochists\",\"italic\":false,\"color\":\"#e4ed2d\"}","{\"text\":\"\"}","{\"text\":\"Unsold (9.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, HideFlags: 127, store: "safeway", item: "pufferfish", sold: 0b} 1
schedule function generated:npc/__safeway_pufferfish/0-end 12t
tag @a remove npc-eavesdropper
