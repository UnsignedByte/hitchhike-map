# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-rabbit, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Rabbit Meat","bold":false,"color":"#d1816b"},{"text":" (6.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-rabbit, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-rabbit, limit=1] minecraft:paper{cost: 699, pos: '914.25 64.5 -166.5', display: {Name: '{"text":"Rabbit Meat","bold":false,"color":"#d1816b"}', Lore: ["{\"text\":\"Where's\",\"italic\":true,\"color\":\"blue\"}","{\"text\":\"Big Chungus??\",\"italic\":true,\"color\":\"blue\"}","{\"text\":\"\"}","{\"text\":\"Unsold (6.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/rabbit/0-end 12t
