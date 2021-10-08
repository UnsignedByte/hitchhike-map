# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__porkchop, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Porkchops","bold":false,"color":"#e36d6d"},{"text":" (7.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__porkchop, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-__porkchop, limit=1] minecraft:paper{cost: 799, pos: '914.25 63.25 -166.5', display: {Name: '{"text":"Porkchops","bold":false,"color":"#e36d6d"}', Lore: ["{\"text\":\"Only 1 Peppa Pig was\",\"italic\":true,\"color\":\"blue\"}","{\"text\":\"harmed in its creation.\",\"italic\":true,\"color\":\"blue\"}","{\"text\":\"\"}","{\"text\":\"Unsold (7.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/__porkchop/0-end 12t
