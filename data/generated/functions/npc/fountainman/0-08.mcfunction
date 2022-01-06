tag @a[tag=victim-of-dialogue-by-fountainman, limit=1] add npc-eavesdropper
execute at @e[tag=npc-fountainman, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-9: speak and make noise.
execute at @e[tag=npc-fountainman, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Sylvian Bismarck","color":"#9c389c","bold":true},"> ",{"text":"Maybe try taking a look beneath the fountain...","italic":true}]
execute at @e[tag=npc-fountainman, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/fountainman/0-09 90t
tag @a remove npc-eavesdropper
