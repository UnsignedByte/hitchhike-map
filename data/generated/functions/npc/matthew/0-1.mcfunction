tag @a[tag=victim-of-dialogue-by-matthew, limit=1] add npc-eavesdropper
execute at @e[tag=npc-matthew, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-matthew, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Matthew Sciento","bold":true},"> ",{"text":"The adoption of revolutionary new approaches toward marketing and design can definitely lead to an unequivocally positive effect on earnings."}]
execute at @e[tag=npc-matthew, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/matthew/0-end 300t
tag @a remove npc-eavesdropper
