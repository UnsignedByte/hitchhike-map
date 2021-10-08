# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__kelp, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Seaweed","bold":false,"color":"#3bbd17"},{"text":" (1.19B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__kelp, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-__kelp, limit=1] minecraft:paper{cost: 119, pos: '915.5 63.625 -153.5', display: {Name: '{"text":"Seaweed","bold":false,"color":"#3bbd17"}', Lore: ["{\"text\":\"Fresh and Undried\",\"italic\":true,\"color\":\"#2fa315\"}","{\"text\":\"\"}","{\"text\":\"Unsold (1.19B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/__kelp/0-end 12t
