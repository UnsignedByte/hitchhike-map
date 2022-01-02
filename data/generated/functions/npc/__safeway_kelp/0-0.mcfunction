tag @a[tag=victim-of-dialogue-by-__safeway_kelp, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_kelp, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__safeway_kelp, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",[{"text":"Seaweed","bold":false,"color":"#3bbd17"},{"text":" (1.19B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__safeway_kelp, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_kelp, limit=1] minecraft:paper{cost: 119, display: {Name: '{"text":"Seaweed","bold":false,"color":"#3bbd17"}', Lore: ["{\"text\":\"Fresh and Undried\",\"italic\":true,\"color\":\"#2fa315\"}","{\"text\":\"\"}","{\"text\":\"Unsold (1.19B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", sold: 0b} 1
schedule function generated:npc/__safeway_kelp/0-end 12t
tag @a remove npc-eavesdropper
