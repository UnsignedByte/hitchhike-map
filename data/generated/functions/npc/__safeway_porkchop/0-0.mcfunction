tag @a[tag=victim-of-dialogue-by-__safeway_porkchop, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_porkchop, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__safeway_porkchop, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",[{"text":"Porkchops","bold":false,"color":"#e36d6d"},{"text":" (7.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__safeway_porkchop, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_porkchop, limit=1] minecraft:paper{cost: 799, pos: '914.25 63.25 -166.5', display: {Name: '{"text":"Porkchops","bold":false,"color":"#e36d6d"}', Lore: ["{\"text\":\"Only 1 Peppa Pig was\",\"italic\":true,\"color\":\"blue\"}","{\"text\":\"harmed in its creation.\",\"italic\":true,\"color\":\"blue\"}","{\"text\":\"\"}","{\"text\":\"Unsold (7.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", sold: 0b} 1
schedule function generated:npc/__safeway_porkchop/0-end 12t
tag @a remove npc-eavesdropper
