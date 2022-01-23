tag @a[tag=victim-of-dialogue-by-erenpan, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-erenpan, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[type=villager,tag=npc-erenpan, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Erin Pan","color":"#e0dfde","bold":true},"> ",{"text":"I must have dozed off..."}]
execute at @e[type=villager,tag=npc-erenpan, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/erenpan/0-end 160t
tag @a remove npc-eavesdropper
