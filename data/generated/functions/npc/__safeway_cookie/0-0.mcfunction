tag @a[tag=victim-of-dialogue-by-__safeway_cookie, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_cookie, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__safeway_cookie, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",[{"text":"Chocolate-Chip Cookie","bold":false,"color":"#916e3c"},{"text":" (14.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__safeway_cookie, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_cookie, limit=1] minecraft:paper{cost: 1499, display: {Name: '{"text":"Chocolate-Chip Cookie","bold":false,"color":"#916e3c"}', Lore: ["{\"text\":\"Sugary goodness.\",\"italic\":false,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (14.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "cookie", sold: 0b} 1
schedule function generated:npc/__safeway_cookie/0-end 12t
tag @a remove npc-eavesdropper
