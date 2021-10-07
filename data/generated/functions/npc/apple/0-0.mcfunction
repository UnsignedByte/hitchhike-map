# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-apple, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Fuji Apple","color":"#FF0000"},{"text":" (1.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-apple, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-apple, limit=1] minecraft:paper{cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Unsold (1.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/apple/0-end 12t
