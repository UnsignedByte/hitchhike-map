tag @a[tag=victim-of-dialogue-by-ramen, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-ramen, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[type=villager,tag=npc-ramen, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Otori Okawa","color":"#8723a6","bold":true},"> ",{"interpret":true,"nbt":"ramenmenu","storage":"hitchhike:stores"}]
execute at @e[type=villager,tag=npc-ramen, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/ramen/0-end 24t
tag @a remove npc-eavesdropper
