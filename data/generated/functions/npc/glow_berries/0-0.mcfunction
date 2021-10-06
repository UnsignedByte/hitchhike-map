# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-glow_berries, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Rainier Cherry","color":"#f2b91d"},{"text":" (2.00B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-glow_berries, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-glow_berries, limit=1] minecraft:glow_berries{cost: 200, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","","{\"text\":\"Unsold (2.00B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/glow_berries/0-end 12t
