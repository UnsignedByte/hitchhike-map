tag @a[tag=victim-of-dialogue-by-__safeway_friedchicken, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_friedchicken, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__safeway_friedchicken, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",[{"text":"Fried Chicken","bold":false,"color":"#b55b00"},{"text":" (7.49B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__safeway_friedchicken, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_friedchicken, limit=1] minecraft:paper{cost: 749, display: {Name: '{"text":"Fried Chicken","bold":false,"color":"#b55b00"}', Lore: ["{\"text\":\"Straight from Kentucky.\",\"italic\":false,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (7.49B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "friedchicken", sold: 0b} 1
schedule function generated:npc/__safeway_friedchicken/0-end 12t
tag @a remove npc-eavesdropper
