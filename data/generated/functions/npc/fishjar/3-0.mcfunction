tag @a[tag=victim-of-dialogue-by-fishjar, limit=1] add npc-eavesdropper
execute at @e[tag=npc-fishjar, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #3-1: speak and make noise.
execute at @e[tag=npc-fishjar, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Cullus Major","color":"#bdaa77","bold":true},"> ",{"text":"Congratulations on guessing the total!"}]
execute at @e[tag=npc-fishjar, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/fishjar/3-1 78t
tag @a remove npc-eavesdropper
