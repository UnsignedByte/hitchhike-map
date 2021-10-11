tag @a[tag=victim-of-dialogue-by-__mysteryshrooms, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__mysteryshrooms, limit=1] run tag @a[distance=..50 add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__mysteryshrooms, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",[{"text":"Mystery Shrooms","bold":false,"color":"#e64037"},{"text":" (3.49B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__mysteryshrooms, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-__mysteryshrooms, limit=1] minecraft:paper{cost: 349, pos: '915.5 62.75 -156.5', display: {Name: '{"text":"Mystery Shrooms","bold":false,"color":"#e64037"}', Lore: ["{\"text\":\"No Toads were harmed\",\"italic\":true,\"color\":\"#f25e70\"}","{\"text\":\"in the making of\",\"italic\":true,\"color\":\"#f25e70\"}","{\"text\":\"this shroom (probably).\",\"italic\":true,\"color\":\"#f25e70\"}","{\"text\":\"\"}","{\"text\":\"Unsold (3.49B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/__mysteryshrooms/0-end 12t
tag @a remove npc-eavesdropper
