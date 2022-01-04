tag @a[tag=victim-of-dialogue-by-__safeway_melon_slice, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_melon_slice, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__safeway_melon_slice, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",[{"text":"Watermelon","color":"#cc3968"},{"text":" (2.49B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__safeway_melon_slice, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_melon_slice, limit=1] minecraft:paper{cost: 249, display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (2.49B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "melon_slice", sold: 0b} 1
schedule function generated:npc/__safeway_melon_slice/0-end 12t
tag @a remove npc-eavesdropper
