tag @a[tag=victim-of-dialogue-by-fishjar, limit=1] add npc-eavesdropper
execute at @e[tag=npc-fishjar, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #1-1: speak and make noise.
execute at @e[tag=npc-fishjar, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Cullus Major","color":"#bdaa77","bold":true},"> ",{"text":"Alright, here come the coins!"}]
execute at @e[tag=npc-fishjar, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:story/fountain/jar/fill 20t
schedule function generated:npc/fishjar/1-1 54t
tag @a remove npc-eavesdropper
