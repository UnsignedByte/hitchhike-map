# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-beet, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Beet","bold":false,"color":"#7a1f3d"},{"text":" (0.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-beet, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-beet, limit=1] minecraft:paper{cost: 99, pos: '915.52 64.5 -156.5', display: {Name: '{"text":"Beet","bold":false,"color":"#7a1f3d"}', Lore: ["{\"text\":\"Beet red\",\"italic\":false,\"color\":\"#6c1b36\"}","{\"text\":\":flushed:\",\"italic\":false,\"color\":\"#6c1b36\"}","{\"text\":\"\"}","{\"text\":\"Unsold (0.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/beet/0-end 12t
