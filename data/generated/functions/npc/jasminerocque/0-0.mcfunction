tag @a[tag=victim-of-dialogue-by-jasminerocque, limit=1] add npc-eavesdropper
execute at @e[tag=npc-jasminerocque, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-jasminerocque, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Jasmine Rocque","color":"#60437a","bold":true},"> ",{"text":"Hey, I don't know you! What are you doing here?"}]
execute at @e[tag=npc-jasminerocque, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/jasminerocque/0-1 90t
tag @a remove npc-eavesdropper
