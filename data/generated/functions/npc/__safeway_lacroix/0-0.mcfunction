tag @a[tag=victim-of-dialogue-by-__safeway_lacroix, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-__safeway_lacroix, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[type=villager,tag=npc-__safeway_lacroix, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_lacroix, limit=1] minecraft:paper{cost: 999, display: {Name: '{"text":"La Croix Sparkling Water","color":"dark_aqua","italic":true}', Lore: ["{\"text\":\"Water for people\",\"color\":\"aqua\",\"italic\":false}","{\"text\":\"who hate money\",\"color\":\"aqua\"}","{\"text\":\"(and water).\",\"color\":\"aqua\"}","{\"text\":\"\"}","{\"text\":\"Unsold (9.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 2b, Amplifier: 0b, Duration: 200}, {Id: 4b, Amplifier: 1b, Duration: 400}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 17b, Amplifier: 100b, Duration: 80}, {Id: 18b, Amplifier: 9b, Duration: 1200}], Potion: "minecraft:awkward", CustomPotionColor: 2799851, store: "safeway", item: "lacroix", sold: 0b} 1
schedule function generated:npc/__safeway_lacroix/0-end 12t
tag @a remove npc-eavesdropper
