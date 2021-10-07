# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-pickle, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Dill Pickle","bold":false,"color":"#538c19"},{"text":" (9b)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-pickle, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-pickle, limit=1] minecraft:paper{cost: 9, pos: '914.5 63.75 -152.8', display: {Name: '{"text":"Dill Pickle","bold":false,"color":"#538c19"}', Lore: ["{\"text\":\"pickle.dumps(obj)\",\"italic\":false,\"color\":\"dark_green\"}","{\"text\":\"\"}","{\"text\":\"Unsold (9b)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/pickle/0-end 12t
