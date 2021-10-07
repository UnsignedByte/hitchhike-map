# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-egg, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Egg","bold":false,"color":"#f2e1aa"},{"text":" (9b)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-egg, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-egg, limit=1] minecraft:paper{cost: 9, pos: '914.5 63.5 -152.8', display: {Name: '{"text":"Egg","bold":false,"color":"#f2e1aa"}', Lore: ["{\"text\":\"A Dollar a Dozen\",\"italic\":false,\"color\":\"#d9ac59\"}","{\"text\":\"\"}","{\"text\":\"Unsold (9b)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/egg/0-end 12t
