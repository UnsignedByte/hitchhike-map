tag @a[tag=victim-of-dialogue-by-deagol, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-deagol, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-4: speak and make noise.
execute at @e[type=villager,tag=npc-deagol, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Dobby","bold":true},"> ",{"text":"No breaks for Dobby!"}]
execute at @e[type=villager,tag=npc-deagol, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/deagol/0-end 30t
tag @a remove npc-eavesdropper
