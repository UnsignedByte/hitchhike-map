tag @a[tag=victim-of-dialogue-by-hurm, limit=1] add npc-eavesdropper
execute at @e[tag=npc-hurm, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-4: speak and make noise.
execute at @e[tag=npc-hurm, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Hurm Etkcraub","color":"#183aab","bold":true},"> ",{"text":"You're telling me you want to get up the mountain?"}]
execute at @e[tag=npc-hurm, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/hurm/0-04 102t
tag @a remove npc-eavesdropper
