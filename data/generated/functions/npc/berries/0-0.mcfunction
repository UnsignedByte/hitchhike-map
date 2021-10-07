# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-berries, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Strawberry","bold":false,"color":"#db324f"},{"text":" (1.49B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-berries, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-berries, limit=1] minecraft:paper{cost: 149, pos: '915.5 64.5 -160.5', display: {Name: '{"text":"Strawberry","bold":false,"color":"#db324f"}', Lore: ["{\"text\":\"Berry Delicious™\",\"italic\":false,\"color\":\"#d43d7c\"}","{\"text\":\"\"}","{\"text\":\"Unsold (1.49B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/berries/0-end 12t
