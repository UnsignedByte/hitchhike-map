tag @a[tag=victim-of-dialogue-by-jasminerocque, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-jasminerocque, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[type=villager,tag=npc-jasminerocque, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Jasmine Rocque","color":"#60437a","bold":true},"> ",{"text":"Don't tell me my dad signed up for the school's companion program like Percy..."}]
execute at @e[type=villager,tag=npc-jasminerocque, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/jasminerocque/0-end 120t
tag @a remove npc-eavesdropper
