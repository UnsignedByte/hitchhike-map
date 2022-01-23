tag @a[tag=victim-of-dialogue-by-plenton, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-plenton, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[type=villager,tag=npc-plenton, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Mrs. Plenton","color":"#96a2ab","bold":true},"> ",{"text":"What are you doing, barging in on an old lady in the bath!"}]
execute at @e[type=villager,tag=npc-plenton, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/plenton/0-2 102t
tag @a remove npc-eavesdropper
