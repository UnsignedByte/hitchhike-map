tag @a[tag=victim-of-dialogue-by-__safeway_rawmutton, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_rawmutton, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__safeway_rawmutton, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",[{"text":"Mutton","bold":false,"color":"#a30b2c"},{"text":" (6.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__safeway_rawmutton, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_rawmutton, limit=1] minecraft:paper{cost: 699, pos: '915.5 64.5 -165.25', display: {Name: '{"text":"Mutton","bold":false,"color":"#a30b2c"}', Lore: ["{\"text\":\"Wool not included.\",\"italic\":true,\"color\":\"blue\"}","{\"text\":\"\"}","{\"text\":\"Unsold (6.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/__safeway_rawmutton/0-end 12t
tag @a remove npc-eavesdropper
