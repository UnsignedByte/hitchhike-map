# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-shiitake, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Shiitake Mushrooms","bold":false,"color":"#917250"},{"text":" (0.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-shiitake, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-shiitake, limit=1] minecraft:paper{cost: 99, pos: '915.51 63.625 -156.5', display: {Name: '{"text":"Shiitake Mushrooms","bold":false,"color":"#917250"}', Lore: ["{\"text\":\"Tasty\",\"italic\":false,\"color\":\"#826246\"}","{\"text\":\"\"}","{\"text\":\"Unsold (0.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/shiitake/0-end 12t
