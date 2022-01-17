tag @a[tag=victim-of-dialogue-by-boba, limit=1] add npc-eavesdropper
execute at @e[tag=npc-boba, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #1-1: speak and make noise.

execute at @e[tag=npc-boba, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
function generated:story/stores/boba/pay
schedule function generated:npc/boba/1-1 24t
tag @a remove npc-eavesdropper
