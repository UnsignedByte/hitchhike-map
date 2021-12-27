tag @a[tag=victim-of-dialogue-by-fishjar, limit=1] add npc-eavesdropper
execute at @e[tag=npc-fishjar, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #3-3: speak and make noise.
execute at @e[tag=npc-fishjar, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Cullus Major","color":"#bdaa77","bold":true},"> ",{"text":"Feel free to try again, though! Just speak to me when you want to."}]
execute at @e[tag=npc-fishjar, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/fishjar/3-end 120t
tag @a remove npc-eavesdropper
