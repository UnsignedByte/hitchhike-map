# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__rawbeef, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Raw Beef","bold":false,"color":"#a8180d"},{"text":" (8.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__rawbeef, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-__rawbeef, limit=1] minecraft:paper{cost: 899, pos: '915.5 63.25 -165.25', display: {Name: '{"text":"Raw Beef","bold":false,"color":"#a8180d"}', Lore: ["{\"text\":\"Basically Rare\",\"italic\":true,\"color\":\"blue\"}","{\"text\":\"Steak...\",\"italic\":true,\"color\":\"blue\"}","{\"text\":\"\"}","{\"text\":\"Unsold (8.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/__rawbeef/0-end 12t
