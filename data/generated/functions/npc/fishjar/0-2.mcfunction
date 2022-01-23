tag @a[tag=victim-of-dialogue-by-fishjar, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-fishjar, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[type=villager,tag=npc-fishjar, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Jared Majors","color":"#bdaa77","bold":true},"> ",{"text":"Only 10b (0.10 Bck) a token!"}]
execute at @e[type=villager,tag=npc-fishjar, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/fishjar/0-3 24t
tag @a remove npc-eavesdropper
