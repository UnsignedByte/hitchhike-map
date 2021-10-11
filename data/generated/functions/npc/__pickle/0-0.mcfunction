tag @a[tag=victim-of-dialogue-by-__pickle, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__pickle, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__pickle, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",[{"text":"Dill Pickle","bold":false,"color":"#538c19"},{"text":" (0.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__pickle, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__pickle, limit=1] minecraft:paper{cost: 99, pos: '914 64.5 -152.5', display: {Name: '{"text":"Dill Pickle","bold":false,"color":"#538c19"}', Lore: ["{\"text\":\"pickle.dumps(obj)\",\"italic\":true,\"color\":\"dark_green\"}","{\"text\":\"\"}","{\"text\":\"Unsold (0.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/__pickle/0-end 12t
tag @a remove npc-eavesdropper
