# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-bamboo, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Bamboo Shoots","bold":false,"color":"#16ba2c"},{"text":" (1.19B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-bamboo, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-bamboo, limit=1] minecraft:paper{cost: 119, pos: '915.5 62.75 -153.5', display: {Name: '{"text":"Bamboo Shoots","bold":false,"color":"#16ba2c"}', Lore: ["{\"text\":\"Rich in fiber.\",\"italic\":true,\"color\":\"#0d8c1e\"}","{\"text\":\"\"}","{\"text\":\"Unsold (1.19B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/bamboo/0-end 12t
