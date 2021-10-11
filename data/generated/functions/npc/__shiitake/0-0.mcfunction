tag @a[tag=victim-of-dialogue-by-__shiitake, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__shiitake, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__shiitake, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",[{"text":"Shiitake Mushrooms","bold":false,"color":"#917250"},{"text":" (1.74B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__shiitake, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__shiitake, limit=1] minecraft:paper{cost: 174, pos: '915.5 63.625 -156.5', display: {Name: '{"text":"Shiitake Mushrooms","bold":false,"color":"#917250"}', Lore: ["{\"text\":\"Tasty\",\"italic\":true,\"color\":\"#826246\"}","{\"text\":\"\"}","{\"text\":\"Unsold (1.74B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/__shiitake/0-end 12t
tag @a remove npc-eavesdropper
