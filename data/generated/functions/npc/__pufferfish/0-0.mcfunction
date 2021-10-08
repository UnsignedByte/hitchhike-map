# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__pufferfish, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Pufferfish","bold":false,"color":"#f0e143"},{"text":" (9.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__pufferfish, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-__pufferfish, limit=1] minecraft:paper{cost: 999, pos: '907.0 64 -166.3', display: {Name: '{"text":"Pufferfish","bold":false,"color":"#f0e143"}', Lore: ["{\"text\":\"Food for\",\"italic\":false,\"color\":\"#e4ed2d\"}","{\"text\":\"Masochists\",\"italic\":false,\"color\":\"#e4ed2d\"}","{\"text\":\"\"}","{\"text\":\"Unsold (9.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/__pufferfish/0-end -1t
