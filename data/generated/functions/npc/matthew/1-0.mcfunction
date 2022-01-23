tag @a[tag=victim-of-dialogue-by-matthew, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-matthew, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #1-1: speak and make noise.
execute at @e[type=villager,tag=npc-matthew, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Matthew Sciento","bold":true},"> ",{"text":"Uhh... so what now?"}]
execute at @e[type=villager,tag=npc-matthew, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
tp @e[type=villager,tag=npc-matthew, limit=1] 796.50 78 -48.30 45 0
schedule function generated:npc/matthew/1-end 24t
tag @a remove npc-eavesdropper
