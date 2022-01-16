tag @a[tag=victim-of-dialogue-by-erenpan, limit=1] add npc-eavesdropper
execute at @e[tag=npc-erenpan, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-erenpan, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Erin Pan","color":"#e0dfde","bold":true},"> ",{"text":"Oh... Uhh, hello there."}]
execute at @e[tag=npc-erenpan, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/erenpan/0-1 36t
tag @a remove npc-eavesdropper
