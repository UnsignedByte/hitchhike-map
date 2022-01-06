tag @a[tag=victim-of-dialogue-by-deagol, limit=1] add npc-eavesdropper
execute at @e[tag=npc-deagol, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-4: speak and make noise.
execute at @e[tag=npc-deagol, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Degol Dobby","bold":true},"> ",{"text":"No breaks for Degol!"}]
execute at @e[tag=npc-deagol, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/deagol/0-end 36t
tag @a remove npc-eavesdropper
