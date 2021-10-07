# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-pickle, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Dill Pickle","bold":false,"color":"#538c19"},{"text":" (0.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-pickle, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-pickle, limit=1] minecraft:paper{cost: 99, pos: '914 64.5 -152.5', display: {Name: '{"text":"Dill Pickle","bold":false,"color":"#538c19"}', Lore: ["{\"text\":\"pickle.dumps(obj)\",\"italic\":true,\"color\":\"dark_green\"}","{\"text\":\"\"}","{\"text\":\"Unsold (0.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/pickle/0-end 12t
