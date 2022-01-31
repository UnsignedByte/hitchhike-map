tag @a[tag=victim-of-dialogue-by-__safeway_pickle, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-__safeway_pickle, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[type=villager,tag=npc-__safeway_pickle, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_pickle, limit=1] minecraft:paper{cost: 99, display: {Name: '{"text":"Dill Pickle","bold":false,"color":"#538c19"}', Lore: ["{\"text\":\"pickle.dumps(obj)\",\"italic\":true,\"color\":\"dark_green\"}","{\"text\":\"\"}","{\"text\":\"Unsold (0.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "pickle", sold: 0b} 1
schedule function generated:npc/__safeway_pickle/0-end 8t
tag @a remove npc-eavesdropper
