tag @a[tag=victim-of-dialogue-by-__safeway_rabbit, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_rabbit, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__safeway_rabbit, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",[{"text":"Rabbit Meat","bold":false,"color":"#d1816b"},{"text":" (7.49B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__safeway_rabbit, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_rabbit, limit=1] minecraft:paper{cost: 749, display: {Name: '{"text":"Rabbit Meat","bold":false,"color":"#d1816b"}', Lore: ["{\"text\":\"Where's\",\"italic\":true,\"color\":\"blue\"}","{\"text\":\"Big Chungus??\",\"italic\":true,\"color\":\"blue\"}","{\"text\":\"\"}","{\"text\":\"Unsold (7.49B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", sold: 0b} 1
schedule function generated:npc/__safeway_rabbit/0-end 12t
tag @a remove npc-eavesdropper
