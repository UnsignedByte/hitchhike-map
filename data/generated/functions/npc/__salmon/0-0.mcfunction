# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__salmon, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Fresh Salmon","bold":false,"color":"#FFC3B5"},{"text":" (14.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__salmon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-__salmon, limit=1] minecraft:paper{cost: 1499, pos: '898.0 64 -166.3', display: {Name: '{"text":"Fresh Salmon","bold":false,"color":"#FFC3B5"}', Lore: ["{\"text\":\"Watch out for\",\"italic\":false,\"color\":\"#FA8072\"}","{\"text\":\"samonella...\",\"italic\":false,\"color\":\"#FA8072\"}","{\"text\":\"\"}","{\"text\":\"Unsold (14.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/__salmon/0-end -1t
