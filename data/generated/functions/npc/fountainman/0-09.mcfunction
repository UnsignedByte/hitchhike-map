tag @a[tag=victim-of-dialogue-by-fountainman, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-fountainman, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-10: speak and make noise.
execute at @e[type=villager,tag=npc-fountainman, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Sylvian Bismarck","color":"#9c389c","bold":true},"> ",{"text":"Anyways, pay no mind, these are just the ramblings of an old man."}]
execute at @e[type=villager,tag=npc-fountainman, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/fountainman/0-10 68t
tag @a remove npc-eavesdropper
