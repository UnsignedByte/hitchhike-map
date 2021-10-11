tag @a[tag=victim-of-dialogue-by-__berries, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__berries, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__berries, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",[{"text":"Strawberry","bold":false,"color":"#db324f"},{"text":" (2.49B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__berries, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-__berries, limit=1] minecraft:paper{cost: 249, pos: '915.5 64.5 -160.5', display: {Name: '{"text":"Strawberry","bold":false,"color":"#db324f"}', Lore: ["{\"text\":\"Berry Delicious™\",\"italic\":true,\"color\":\"#d43d7c\"}","{\"text\":\"\"}","{\"text\":\"Unsold (2.49B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/__berries/0-end 12t
tag @a remove npc-eavesdropper
