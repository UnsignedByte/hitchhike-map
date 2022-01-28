tag @a[tag=victim-of-dialogue-by-nortonhill, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-nortonhill, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[type=villager,tag=npc-nortonhill, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Norton Hill","color":"#ddf013","bold":true},"> ",{"text":"Of course, sire. I will relay the message immediately!"}]
execute at @e[type=villager,tag=npc-nortonhill, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/nortonhill/0-1 114t
tag @a remove npc-eavesdropper
