tag @a[tag=victim-of-dialogue-by-fishjar, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-fishjar, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-6: speak and make noise.
execute at @e[type=villager,tag=npc-fishjar, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Jared Majors","color":"#bdaa77","bold":true},"> ",{"text":"When you're ready to play, come talk to me and I'll fill that jar up for you."}]
execute at @e[type=villager,tag=npc-fishjar, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/fishjar/0-end 88t
tag @a remove npc-eavesdropper
