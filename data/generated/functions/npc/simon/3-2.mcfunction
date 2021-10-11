tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[tag=npc-simon, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #3-3: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Good-Bye."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 100
schedule function generated:npc/simon/3-end 18t
tag @a remove npc-eavesdropper
