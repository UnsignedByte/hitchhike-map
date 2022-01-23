tag @a[tag=victim-of-dialogue-by-__safeway_melon_slice, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-__safeway_melon_slice, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[type=villager,tag=npc-__safeway_melon_slice, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_melon_slice, limit=1] minecraft:paper{cost: 249, display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (2.49B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "melon_slice", sold: 0b} 1
schedule function generated:npc/__safeway_melon_slice/0-end 12t
tag @a remove npc-eavesdropper
