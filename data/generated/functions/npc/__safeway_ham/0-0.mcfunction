tag @a[tag=victim-of-dialogue-by-__safeway_ham, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_ham, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[tag=npc-__safeway_ham, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_ham, limit=1] minecraft:paper{cost: 949, display: {Name: '{"text":"Ham","bold":false,"color":"#b33d15"}', Lore: ["{\"text\":\"Just steamed.\",\"italic\":false,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (9.49B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, store: "safeway", item: "ham", sold: 0b} 1
schedule function generated:npc/__safeway_ham/0-end 24t
tag @a remove npc-eavesdropper
