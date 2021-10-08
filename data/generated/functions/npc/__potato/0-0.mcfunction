# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__potato, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Potato","bold":false,"color":"#dbbb70"},{"text":" (1.24B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__potato, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-__potato, limit=1] minecraft:paper{cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Unsold (1.24B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/__potato/0-end 12t
