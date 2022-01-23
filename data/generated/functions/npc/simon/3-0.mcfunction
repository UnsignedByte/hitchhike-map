tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-simon, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #3-1: speak and make noise.
execute at @e[type=villager,tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"What are you doing back here? I told you I don't let freeloaders on my land."}]
execute at @e[type=villager,tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/simon/3-1 144t
tag @a remove npc-eavesdropper
