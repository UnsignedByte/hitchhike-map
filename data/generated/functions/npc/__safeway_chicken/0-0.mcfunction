tag @a[tag=victim-of-dialogue-by-__safeway_chicken, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_chicken, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__safeway_chicken, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",[{"text":"Chicken","bold":false,"color":"#e3aa81"},{"text":" (5.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__safeway_chicken, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_chicken, limit=1] minecraft:paper{cost: 599, pos: '911.5 64.5 -166.5', display: {Name: '{"text":"Chicken","bold":false,"color":"#e3aa81"}', Lore: ["{\"text\":\"Kentucky Unfried\",\"italic\":true,\"color\":\"blue\"}","{\"text\":\"\"}","{\"text\":\"Unsold (5.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/__safeway_chicken/0-end 12t
tag @a remove npc-eavesdropper
