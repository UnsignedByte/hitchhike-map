tag @a[tag=victim-of-dialogue-by-__safeway_glow_berries, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_glow_berries, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__safeway_glow_berries, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",[{"text":"Rainier Cherry","color":"#f2b91d"},{"text":" (1.49B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__safeway_glow_berries, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_glow_berries, limit=1] minecraft:paper{cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Unsold (1.49B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/__safeway_glow_berries/0-end 12t
tag @a remove npc-eavesdropper
