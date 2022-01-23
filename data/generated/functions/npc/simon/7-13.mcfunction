tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-simon, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #7-14: speak and make noise.
execute at @e[type=villager,tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Last thing... If you come across anyone on the way, try not to bother them, for both of your sakes. Good luck, my friend!"}]
execute at @e[type=villager,tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/simon/7-end 192t
tag @a remove npc-eavesdropper
