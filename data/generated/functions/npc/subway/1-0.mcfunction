tag @a[tag=victim-of-dialogue-by-subway, limit=1] add npc-eavesdropper
execute at @e[tag=npc-subway, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #1-1: speak and make noise.
execute at @e[tag=npc-subway, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Sili Connesse","color":"#f0d792","bold":true},"> ",{"interpret":true,"nbt":"welcome.subway","storage":"hitchhike:stores"}]
execute at @e[tag=npc-subway, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
function generated:story/stores/subway/pay
schedule function generated:npc/subway/1-1 24t
tag @a remove npc-eavesdropper
