tag @a[tag=victim-of-dialogue-by-hurm, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-hurm, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-6: speak and make noise.
execute at @e[type=villager,tag=npc-hurm, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Herb Schmitt","color":"#183aab","bold":true},"> ",{"text":"... Young people these days."}]
execute at @e[type=villager,tag=npc-hurm, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/hurm/0-06 48t
tag @a remove npc-eavesdropper
