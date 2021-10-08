# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-clownfish, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Clownfish","bold":false,"color":"#ed8c37"},{"text":" (12.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-clownfish, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-clownfish, limit=1] minecraft:paper{cost: 1299, pos: '902.5 64 -166.3', display: {Name: '{"text":"Clownfish","bold":false,"color":"#ed8c37"}', Lore: ["{\"text\":\"Here Lies\",\"italic\":false,\"color\":\"#ffc59e\"}","{\"text\":\"Nemo (2003-2003)\",\"italic\":false,\"color\":\"#ffc59e\"}","{\"text\":\"Rest in Peace.\",\"italic\":false,\"color\":\"#ffc59e\"}","{\"text\":\"\"}","{\"text\":\"Unsold (12.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/clownfish/0-end -1t
