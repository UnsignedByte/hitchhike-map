tag @a[tag=victim-of-dialogue-by-ramen, limit=1] add npc-eavesdropper
execute at @e[tag=npc-ramen, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #1-1: speak and make noise.
execute at @e[tag=npc-ramen, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Otori Sama","color":"#d65454","bold":true},"> ",{"interpret":true,"nbt":"welcome.ramen","storage":"hitchhike:stores"}]
execute at @e[tag=npc-ramen, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
function generated:story/stores/ramen/pay
schedule function generated:npc/ramen/1-1 24t
tag @a remove npc-eavesdropper
