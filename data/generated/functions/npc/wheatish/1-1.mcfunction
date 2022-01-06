tag @a[tag=victim-of-dialogue-by-wheatish, limit=1] add npc-eavesdropper
execute at @e[tag=npc-wheatish, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #1-2: speak and make noise.
execute at @e[tag=npc-wheatish, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Mr. Wheat","color":"#c7a946","bold":true},"> ",{"text":"I told you, its really good!"}]
execute at @e[tag=npc-wheatish, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/wheatish/1-2 54t
tag @a remove npc-eavesdropper
