# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__glow_berries, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Rainier Cherry","color":"#f2b91d"},{"text":" (1.49B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__glow_berries, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-__glow_berries, limit=1] minecraft:paper{cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Unsold (1.49B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/__glow_berries/0-end -1t
