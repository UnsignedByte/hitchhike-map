tag @a[tag=victim-of-dialogue-by-__safeway_carrot, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_carrot, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__safeway_carrot, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",[{"text":"Carrot","bold":false,"color":"#e6671e"},{"text":" (1.24B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__safeway_carrot, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_carrot, limit=1] minecraft:paper{cost: 124, pos: '915.5 63.625 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Unsold (1.24B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/__safeway_carrot/0-end 12t
tag @a remove npc-eavesdropper
