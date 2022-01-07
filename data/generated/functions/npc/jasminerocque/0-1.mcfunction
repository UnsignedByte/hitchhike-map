tag @a[tag=victim-of-dialogue-by-jasminerocque, limit=1] add npc-eavesdropper
execute at @e[tag=npc-jasminerocque, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-jasminerocque, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Jasmine Rocque","bold":true},"> ",{"text":"I thought this was the perfect hiding spot!"}]
execute at @e[tag=npc-jasminerocque, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/jasminerocque/0-end 66t
tag @a remove npc-eavesdropper
