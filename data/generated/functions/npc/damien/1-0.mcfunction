tag @a[tag=victim-of-dialogue-by-damien, limit=1] add npc-eavesdropper
execute at @e[tag=npc-damien, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #1-1: speak and make noise.
execute at @e[tag=npc-damien, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Damien Herst","bold":true},"> ",{"text":"...Eh?","italic":true}]
execute at @e[tag=npc-damien, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
tp @e[tag=npc-damien, limit=1] 796.50 78 -41.70 -180 0
schedule function generated:npc/damien/1-1 6t
tag @a remove npc-eavesdropper
