# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-carrot, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Carrot","bold":false,"color":"#e6671e"},{"text":" (1.24B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-carrot, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-carrot, limit=1] minecraft:paper{cost: 124, pos: '915.5 63 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":false,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":false,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Unsold (1.24B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/carrot/0-end 12t
