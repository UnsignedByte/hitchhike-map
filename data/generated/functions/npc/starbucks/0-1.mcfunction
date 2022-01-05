tag @a[tag=victim-of-dialogue-by-starbucks, limit=1] add npc-eavesdropper
execute at @e[tag=npc-starbucks, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-starbucks, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Bethany Norma","color":"#00704a","bold":true},"> ",{"text":"What would you like to drink?"}]
execute at @e[tag=npc-starbucks, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/starbucks/0-end 54t
tag @a remove npc-eavesdropper
