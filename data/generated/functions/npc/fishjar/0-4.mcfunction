tag @a[tag=victim-of-dialogue-by-fishjar, limit=1] add npc-eavesdropper
execute at @e[tag=npc-fishjar, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-5: speak and make noise.
execute at @e[tag=npc-fishjar, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Jared Majors","color":"#bdaa77","bold":true},"> ",{"text":"If you are within 2.50 Bck of the real total, you get everything in the jar! That's right, all of it!"}]
execute at @e[tag=npc-fishjar, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/fishjar/0-5 162t
tag @a remove npc-eavesdropper
